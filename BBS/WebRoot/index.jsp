<%@page import="com.oralce.model.BooK"%>
<%@page import="com.oralce.model.Tiezi"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>工程师论坛_BBS</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/nvi.css">
<link rel="shortcut icon" type="image/x-icon"
	href="images/system/minilogo.gif" />
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/npm.js"></script>
</head>

<body>
	<!-- 这是网站的头 -->
	<c:import url="top.jsp"></c:import>
	<div style="width:100%;border: 1px solid purple; size: 2px;">
		<div class="panel panel-default">
			<div class="panel-body">
				<c:forEach varStatus="i" var="m" items="${requestScope.mk}">
					<c:choose>
						<c:when test="${i.count%4 eq 1}">
							<div title="${m.name}" class="alert alert-success" role="alert"
								style="width:120px;float:left;margin: 15px;">
								<a href="javascript:void();"><img src="${m.image}"
									style="width: 100px;height:70px" /> </a>
							</div>
						</c:when>
						<c:when test="${i.count%4 eq 2}">
							<div title="${m.name}" class="alert alert-info" role="alert"
								style="width: 120px;float:left;margin: 15px;">
								<a href="javascript:void();"><img src="${m.image}"
									style="width: 100px;height:70px" /> </a>
							</div>
						</c:when>
						<c:when test="${i.count%4 eq 3}">
							<div title="${m.name}" class="alert alert-danger" role="alert"
								style="width: 120px;float:left;margin: 15px;">
								<a href="javascript:void();"><img src="${m.image}"
									style="width: 100px;height:70px" /> </a>
							</div>
						</c:when>
						<c:otherwise>
							<div title="${m.name}" class="alert alert-warning" role="alert"
								style="width: 120px;float:left;margin: 15px;">
								<a href="javascript:void();"><img src="${m.image}"
									style="width: 100px;height:70px" /> </a>
							</div>
						</c:otherwise>
					</c:choose>


				</c:forEach>
			</div>
		</div>
	</div>


	<div style="width:100%;border: 1px solid purple;">
		<table class="table table-bordered">

			<caption>热帖</caption>
			<!--   <tr class="active">
         <th>帖子标题</th> 
		 <th>发帖时间</th> 
	     <th>帖子状态</th> 
	     <th>发帖作者</th> 
		 <th>浏览次数</th> 
	     <th>所属板块</th>
         </tr> -->
         <%--帖子状态--%>>
			<c:forEach var="ts" items="${requestScope.tz}" varStatus="i">
				<c:choose>
					<c:when test="${i.count%5 eq 1}">
						<tr class="warning">
					</c:when>
					<c:when test="${i.count%5 eq 2}">
						<tr class="success">
					</c:when>
					<c:when test="${i.count%5 eq 3}">
						<tr class="danger">
					</c:when>
					<c:when test="${i.count%5 eq 4}">
						<tr class="info">
					</c:when>
					<c:otherwise>
						<tr class="active">
					</c:otherwise>
				</c:choose>
				<!-- escapeXml="false"主要在頁面解釋html语言和Javascript效果 -->
				<td><a href="detailOfTiezi.jsp?TIEZIID=${ts.tieziid}"> <c:choose>
							<c:when test="${fn:length(ts.title) gt 10}">
								<c:out value="${fn:substring(ts.title,0,10)}" escapeXml="false"></c:out>..
				   </c:when>
							<c:otherwise>
								<c:out value="${ts.title}" escapeXml="false"></c:out>
							</c:otherwise>
						</c:choose> </a></td>
				<td>${ts.sendtime}</td>
				<td><c:choose>
						<c:when test="${ts.status eq 0}">
							<span class='label label-success'>正常</span>
						</c:when>
						<c:when test="${ts.status eq 1}">
							<span class='label label-danger'>锁定</span>
						</c:when>
						<c:when test="${ts.status eq 2}">
							<span class='label label-warning'>审核</span>
						</c:when>
						<c:when test="${ts.status eq 3}">
							<span class='label label-default'>封贴</span>
						</c:when>

					</c:choose>
				</td>
				<td><span class="glyphicon glyphicon-hand-right"
					aria-hidden="true"></span>${ts.users.nickname}</td>
				<td>${ts.clickcount}</td>
				<td><span class="glyphicon glyphicon-menu-left"
					aria-hidden="true"></span>${ts.mokuai.name}<span
					class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
				</td>
			</c:forEach>
			</tr>


		</table>
	</div>
	<!-- 这是网站的尾 -->
	<c:import url="bottom.jsp"></c:import>
</body>
</html>
