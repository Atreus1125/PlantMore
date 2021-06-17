package util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class CookieUtil {
    /**
     * 定义一个专门负责保存Cookie的方法，可以设置Cookie的名字与保存时间
     * @param response 主要可以使用addCookie()方法保存Cookie对象
     * @param request 主要设置Cookie的保存路径，如果不设置保存不上
     * @param name     要保存的Cookie名字
     * @param value    要保存的Cookie的内容
     * @param expiry   Cookie的失效时间
     */
    public static void save(HttpServletResponse response, HttpServletRequest request, String name, String value, int expiry) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(expiry); // 单位为秒
        // cookie.setPath(request.getContextPath());
        cookie.setPath("/"); // 设置保存路径
        response.addCookie(cookie);
    }

    public static Map<String,String> load(HttpServletRequest request) {
        Map<String,String> map = new HashMap<String,String>() ;
        Cookie cookies [] = request.getCookies() ;
        if (cookies!=null) {
            for (int x = 0; x < cookies.length; x++) {
                if (!"JSESSIONID".equals(cookies[x].getName())) {
                    map.put(cookies[x].getName(), cookies[x].getValue());
                }
            }
        }
        return map ;
    }
    public static void clear(HttpServletRequest request,HttpServletResponse response) {
        Map<String,String> map = load(request) ;
        Iterator<Map.Entry<String,String>> iter = map.entrySet().iterator() ;
        while (iter.hasNext()) {
            Map.Entry<String,String> me = iter.next() ;
            Cookie cookie = new Cookie(me.getKey() , "") ;
            cookie.setPath("/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
}
