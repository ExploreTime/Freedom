
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="com.oralce.model.Users"%>
<%@page import="com.oralce.model.Mokuai"%>
<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="com.oralce.model.Tiezi"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>热帖</title>

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
			      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/xiaotiantian", "root", "root");
			      //jndi
			   /*  Context  c=new InitialContext();
	    DataSource ds=(DataSource)c.lookup("java:comp/env/jdbc/mysql5");
	//里面的字符串前面（java:comp/env/）是固定的，后面的那个名字（jdbc/mysql5）来自于猫里面定义好的名字
	Connection con = ds.getConnection();//至此。已经可以用jndi创建的链接来操作数据库了 */
			      Statement sta=con.createStatement();
			     String tiezi="select t.*,name,u.NICKNAME,u.username ,u.HEADIMAGE,signature from tiezi t,Mokuai m,Users u where  t.BANKUAIID=m.ID and t.USERID=u.USERID  order by clickcount desc";//按照点击次数降序查询
			      ResultSet ts=sta.executeQuery(tiezi);
			      ArrayList<Tiezi> a=new ArrayList<Tiezi>();
			      while(ts.next()){
        Tiezi t=new Tiezi(ts.getInt("TIEZIID"),new Mokuai(ts.getString("name")),new Users(ts.getString("username"),ts.getString("nickname"),ts.getString("HEADIMAGE"),ts.getString("signature")),ts.getString("title"),ts.getString("content"),ts.getString("SENDTIME"),ts.getInt("STATUS"),ts.getInt("CLICKCOUNT"),ts.getInt("OWNERID"));
			      a.add(t);
			      }
			      request.setAttribute("tiezis", a);
			      request.getRequestDispatcher("hottie.jsp").forward(request, response);
	%>
</body>
</html>
