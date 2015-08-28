<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>这是登录的界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<b style="color: red;"> <c:if
			test="${param.noticeMessage eq 'unlogined'}">
			<B style="color:red;"> 温馨提示:亲要先登录! </B>
		</c:if> </b>
	<form action="<%=response.encodeURL("loginprocess.jsp")%>"
		method="post">
		用户名:<input type="text" name="username"><br> 密 码:<input
			type="password" name="password"><br> <input
			type="submit" value="提交">
	</form>
</body>
</html>
