<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://www.mldn.cn/c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
	</head>
	<body>
		<script type="text/javascript">
			window.alert("${msg}");
			window.location = "<%=basePath%>${url}";
		</script>
	</body>
</html>
