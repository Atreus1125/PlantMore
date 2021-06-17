package shop.servlet.front;

import shop.factory.ServiceFrontFactory;
import shop.vo.Member;
import util.BasePath;
import util.CookieUtil;
import util.MD5Code;
import util.validate.ValidateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

@WebServlet(name = "MemberServletFront", urlPatterns = "/pages/MemberServletFront/*")
public class MembeServletFront extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/404.jsp";
        String status = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1);
        /*
            request.getRequestURI() 返回除去host（域名或者ip）部分的路径
            public int lastIndexOf(String str): 返回指定子字符串在此字符串中最右边出现处的索引，如果此字符串中没有这样的字符，则返回 -1
            substring() 方法返回字符串的子字符串
         */
        if (status != null) {
            if ("register".equals(status)) {
                path = this.register(request);
            } else if ("active".equals(status)) {
                path = this.active(request);
            } else if ("login".equals(status)) {
                 path = this.login(request, response);
            } else if ("logout".equals(status)) {
                path = this.logout(request, response);
            }
        }
        request.getRequestDispatcher(path).forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    public String register(HttpServletRequest request) {
        String msg = null;
        String url = null;
        String mid = request.getParameter("mid");
        String password = request.getParameter("password");
        System.out.println("*******mid:" + mid + " password:" + password + "******");
        if (ValidateUtil.validateEmpty(mid) && ValidateUtil.validateEmpty(password)) {
            Member vo = new Member();
            vo.setMid(mid);
            vo.setPassword(new MD5Code().getMD5ofStr(password));
            vo.setRegdate(new Date());//服务器本地时间为注册时间
            vo.setPhoto("nophoto.jpg");
            vo.setCode(UUID.randomUUID().toString());//生成一个随机的Code码
            vo.setStatus(2);//现在属于待激活状态
            try {
                if (ServiceFrontFactory.getIMemberServiceFrontInstance().register(vo)) {
                    msg = "用户注册成功，请进行账户激活！";
                    url = "index.jsp";
                    System.out.println("【发激活邮件】" + BasePath.getBasePath(request) +
                            "/pages/MemberServletFront/active?mid=" + mid + "&code=" + vo.getCode());
                } else {
                    msg = "用户注册失败，请填写新的注册信息！";
                    url = "pages/member_register.jsp";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            msg = "输入的用户注册信息不正确，请重新注册！";
            url = "pages/member_register.jsp";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("url", url);
        return "/pages/forward.jsp";
    }

    public String active(HttpServletRequest request) {
        String msg = null;
        String url = null;
        String mid = request.getParameter("mid");
        String code = request.getParameter("code");
        if (ValidateUtil.validateEmpty(mid) && ValidateUtil.validateEmpty(code)) {
            Member vo = new Member();
            vo.setMid(mid);
            vo.setCode(code);
            try {
                if (ServiceFrontFactory.getIMemberServiceFrontInstance().active(vo)) {
                    msg = "用户激活成功，请登录！";
                    url = "pages/member_login.jsp";
                } else {
                    msg = "用户激活失败，请与管理员联系！";
                    url = "index.jsp";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            msg = "错误的激活操作，请与管理员联系！";
            url = "index.jsp";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("url", url);
        return "/pages/forward.jsp";
    }

    public String login(HttpServletRequest request, HttpServletResponse response) {
        String msg = null;
        String url = null;
        String mid = request.getParameter("mid");
        String password = request.getParameter("password");
        if (ValidateUtil.validateEmpty(mid) && ValidateUtil.validateEmpty(password)) {
            Member vo = new Member();
            vo.setMid(mid);
            vo.setPassword(new MD5Code().getMD5ofStr(password));
            try {
                if (ServiceFrontFactory.getIMemberServiceFrontInstance().login(vo)) {
                    request.getSession().setAttribute("mid", mid);
                    request.getSession().setAttribute("photo", vo.getPhoto());
                    msg = "登录成功，欢迎光临！";
                    url = "index.jsp";
                    if (request.getParameter("rememberme") != null) {//表示选择了复选框
                        int expiry = Integer.parseInt(request.getParameter("rememberme"));
                        System.out.println("******用户" + mid + "登录成功 信息将在cookie中保存" + expiry + "秒******");
                        CookieUtil.save(response, request, "mid", mid, expiry);
                        CookieUtil.save(response, request, "password", vo.getPassword(), expiry);
                    }
                } else {
                    msg = "登录失败，错误的用户名或密码！";
                    url = "pages/member_login.jsp";
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            msg = "信息输入错误，请重新登录！";
            url = "pages/member_login.jsp";
        }
        request.setAttribute("msg", msg);
        request.setAttribute("url", url);
        return "/pages/forward.jsp";
    }

    public String logout(HttpServletRequest request, HttpServletResponse response) {
        CookieUtil.clear(request, response);
        request.getSession().invalidate();//清除session的所有信息
        request.setAttribute("msg", "您已安全退出！");
        request.setAttribute("url", "index.jsp");
        return "/pages/forward.jsp";
    }
}
