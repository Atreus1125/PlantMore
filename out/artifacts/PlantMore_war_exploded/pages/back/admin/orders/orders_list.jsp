<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String showUrl = basePath + "pages/back/admin/orders/OrdersServletBack/show";
    String showMemberUrl = basePath + "pages/back/admin/member/MemberServletBack/show" ;
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>微商城综合实战</title>
    <link type="text/css" rel="stylesheet" href="css/mldn.css">
    <script type="text/javascript" src="js/mldn.js"></script>
</head>
<body>
<div id="mainDiv">
    <h1>订单列表</h1>
    <c:if test="${allOrders != null}" var="res">
        <div id="splitSearchDiv">
            <jsp:include page="/pages/split_page_plugin_search.jsp"/>
            <br>
        </div>
        <table border="1" cellpadding="5" cellspacing="0" bgcolor="F2F2F2" width="100%">
            <tr onmouseover="changeColor(this,'white')" onmouseout="changeColor(this,'F2F2F2')">
                <td>订单编号</td>
                <td>所有者</td>
                <td>接收人</td>
                <td>联系电话</td>
                <td>收件地址</td>
                <td>下单日期</td>
            </tr>
            <c:forEach items="${allOrders}" var="orders">
                <tr onmouseover="changeColor(this,'white')" onmouseout="changeColor(this,'F2F2F2')">
                    <td><a href="<%=showUrl%>?oid=${orders.oid}">${orders.oid}</a></td>
                    <td><a href="<%=showMemberUrl%>?mid=${orders.member.mid}">${orders.member.mid}</a></td>
                    <td>${orders.name}</td>
                    <td>${orders.phone}</td>
                    <td>${orders.address}</td>
                    <td>${orders.credate}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <div id="splitBarDiv" style="float:right">
        <jsp:include page="/pages/split_page_plugin_bars.jsp"/>
    </div>
</div>
</body>
</html>
