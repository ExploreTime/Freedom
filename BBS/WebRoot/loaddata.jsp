<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="com.oralce.model.Users"%>
<%@page import="com.oralce.model.Mokuai"%>
<%@page import="com.oralce.model.Tiezi"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'loaddata.jsp' starting page</title>

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
        Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/xiaotiantian", "root", "root");
    /*  Context c=new InitialContext();
      DataSource ds=(DataSource)c.lookup("java:comp/env/jdbc/My");
      Connection con=ds.getConnection(); */
      Statement sta=con.createStatement();
      String sql="select t.*,nickname,name from tiezi t,Users u,Mokuai m where t.USERID=u.userid and t.BANKUAIID=m.ID order by TIEZIID desc";
      ResultSet res=sta.executeQuery(sql);
      ArrayList<Tiezi> tz=new ArrayList<Tiezi>();
 
      while(res.next()){
      
        Tiezi ti=new Tiezi(res.getInt("TIEZIID"),new Mokuai(res.getString("name")),new Users(res.getString("nickname")),res.getString("title"),res.getString("content"),res.getString("SENDTIME"),res.getInt("STATUS"),res.getInt("CLICKCOUNT"),res.getInt("OWNERID"));
         tz.add(ti);
      }
      String bankuaisql="select *from MOKUAI";
      ResultSet rs=sta.executeQuery(bankuaisql);
      ArrayList<Mokuai> mk=new ArrayList<Mokuai>();
      while(rs.next()){
        Mokuai m=new Mokuai(rs.getInt("ID"),new Users(rs.getInt("USERID")),rs.getString("NAME"),rs.getString("IMAGE"),rs.getString("DESCRIPTION"));
        mk.add(m);
      }
     %>
	<c:set var="tz" scope="request" value="<%=tz%>"></c:set>
	<c:set var="mk" scope="request" value="<%=mk%>"></c:set>
	<% 
      request.getRequestDispatcher("index.jsp").forward(request,response);%>
</body>
</html>
