<%@page import="com.oralce.model.Users"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'process.jsp' starting page</title>

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
	<%
     request.setCharacterEncoding("utf-8");
       String username=request.getParameter("username");
       String password=request.getParameter("password");
     %>
	<% 
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xiaotiantian","root","root");
     Statement sta=con.createStatement();
     String sql="select *from users where username='"+username+"' and password='"+password+"'";
     ResultSet res=sta.executeQuery(sql);
     if(res.next()){
     
     Users user=new Users();
     user.setUserid(res.getInt(1));
     user.setUsername(res.getString(2));
     user.setNickname(res.getString(3));
     user.setPassword(res.getString(4));
     user.setHeadimage(res.getString(5));
    
    session.setAttribute("loginedUser", user);
   
    // request.getRequestDispatcher("index.jsp").forward(request, response);
    response.sendRedirect(response.encodeURL("loaddata.jsp"));
    }
     else{
     
     request.getRequestDispatcher(response.encodeURL("login.jsp")).forward(request, response);
     
     }
    
     
      %>
	<sql:setDataSource var="dataSource" scope="session"
		url="jdbc:mysql://localhost:3306/xiaotiantian" user="root"
		password="root" driver="com.mysql.jdbc.Driver" />
</body>
</html>

