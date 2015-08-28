<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'processFatie.jsp' starting page</title>

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

	<%request.setCharacterEncoding("utf-8"); %>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/xiaotiantian" user="root"
		password="root" />
	<sql:transaction dataSource="${pageScope.db}"> 	
   <sql:update var="count">insert into TIEZI values (null,'${param.title}','${param.content}',now(),${param.BANKUAIID},1,0,0,2)</sql:update>
     </sql:transaction>

	<c:choose>
		<c:when test="${pageScope.count gt 0}">
			<c:redirect url="loaddata.jsp"></c:redirect>
		</c:when>
		<c:otherwise>
    out.print('发表失败');
  </c:otherwise>
	</c:choose>
</html>
