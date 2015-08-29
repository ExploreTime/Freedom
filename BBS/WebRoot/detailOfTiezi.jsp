<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.oralce.model.Users"%>
<%@ page import="com.oralce.model.Tiezi"%>
<!--链接数据库并更新数据库中的数据 -->
<sql:setDataSource var="dataSource" scope="session"
	url="jdbc:mysql://localhost/xiaotiantian" user="root" password="root"
	driver="com.mysql.jdbc.Driver" />
<sql:query var="tiezies" dataSource="${SessionScope.dataSource}">
</sql:query>
<sql:transaction dataSource="${SessionScope.dataSource}">
	<sql:update>
   update tiezi set clickcount=clickcount+1 where tieziid=${param.tieziId}
</sql:update>
</sql:transaction>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>帖子详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/control.js"></script>
<link rel="stylesheet" type="text/css" href="css/nvi.css">
<link rel="shortcut icon" type="image/x-icon"
	href="images/system/minilogo.gif" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
td{
 font-size: 12px;
 height: 40ps;
 vertical-align: middle;
 text-align: left;
 padding-top: 20px;
 font-family: 微软雅黑；
 text-shadow: pink 1px 1px 1px;
 border:1px dotted gray;
}
</style>
</head>
<body>
	<c:import url="top.jsp"></c:import>




	<c:import url="bottom.jsp"></c:import>
</body>
</html>
