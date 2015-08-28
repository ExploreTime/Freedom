<%@page  isErrorPage="true" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<base href="<%=basePath%>">
<title>攻城狮论坛-首页</title>
<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="shortcut icon" type="image/x-icon"
	href="images/system/minilogo.png" />
</head>
<body>
	<center>
		<div style="width: 100%;border:1px dotted purple; height: 400px;">
			<img src="images/system/error.jpg" />服务器开小差了!<a href="index.jsp">返回首页</a>
		</div>
	</center>
</body>
</html>