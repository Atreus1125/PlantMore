package shop.servlet.front;

import shop.exception.EmptyShopcarException;
import shop.exception.UnCompleteMemberInfomrationException;
import shop.exception.UnEnoughAmountException;
import shop.factory.ServiceFrontFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

@WebServlet(name = "OrdersServletFront", urlPatterns = "/pages/front/orders/OrdersServletFront/*")
public class OrdersServletFront extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = "/pages/errors.jsp";
        String status = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1);
        if (status != null) {
            if ("insert".equals(status)) {
                path = this.insert(request);
            } else if ("list".equals(status)) {
                path = this.list(request);
            } else if ("show".equals(status)) {
                path = this.show(request);
            }
        }
        request.getRequestDispatcher(path).forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    public String list(HttpServletRequest request) {
        int currentPage = 1;
        int lineSize = 15;
        String column = null;
        String keyWord = null;
        try {
            currentPage = Integer.parseInt(request.getParameter("cp"));
        } catch (Exception e) {
        }
        try {
            lineSize = Integer.parseInt(request.getParameter("ls"));
        } catch (Exception e) {
        }
        column = request.getParameter("col");
        keyWord = request.getParameter("kw");
        if (column == null) {
            column = "mid";
        }
        if (keyWord == null) {
            keyWord = "";  // ??????????????????
        }
        try {
            String mid = (String) request.getSession().getAttribute("mid");
            Map<String, Object> map = ServiceFrontFactory.getIOrdersServiceFrontInstance().listByMember(mid, currentPage, lineSize);
            System.out.println("******map.get(\"allOrders\"):" + map.get("allOrders") + "******");
            request.setAttribute("allOrders", map.get("allOrders"));
            request.setAttribute("allRecorders", map.get("ordersCount"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("lineSize", lineSize);
        request.setAttribute("column", column);
        request.setAttribute("keyWord", keyWord);
        request.setAttribute("url", "/pages/front/orders/OrdersServletFront/list");
        return "/pages/front/orders/orders_list.jsp";
    }

    public String show(HttpServletRequest request) {
        int oid = Integer.parseInt(request.getParameter("oid"));
        String mid = (String) request.getSession().getAttribute("mid");
        try {
            request
                    .setAttribute("orders", ServiceFrontFactory.getIOrdersServiceFrontInstance().show(mid, oid));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/pages/front/orders/orders_show.jsp";
    }

    public String insert(HttpServletRequest request) {
        String msg = null;
        String url = null;
        String mid = (String) request.getSession().getAttribute("mid");
        try {
            if (ServiceFrontFactory.getIOrdersServiceFrontInstance().insert(mid)) {
                msg = "?????????????????????";
                url = "/index.jsp";
            }
        } catch (UnCompleteMemberInfomrationException e) {
            msg = "???????????????????????????????????????????????????";
            url = "/pages/front/member/MemberInfoServletFront/updatePre";
            e.printStackTrace();
        } catch (UnEnoughAmountException e) {
            msg = "???????????????????????????????????????????????????";
            url = "/pages/front/shopcar/ShopcarServletFront/list";
            e.printStackTrace();
        } catch (EmptyShopcarException e) {
            msg = "?????????????????????????????????????????????????????????";
            url = "/pages/front/goods/GoodsServletFront/list";
            e.printStackTrace();
        } catch (SQLException e) {
            msg = "?????????????????????";
            e.printStackTrace();
        }
        request.setAttribute("msg", msg);
        request.setAttribute("url", url);
        return "/pages/forward.jsp";
    }
}
