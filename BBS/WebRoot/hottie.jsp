<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
</head>

<body>
   <%@include  file="top.jsp" %>  
	<div style="width:100%;border:1px solid purple;">
		<div align="center"></div>
		<div style="width:100%;border: 1px solid purple;align:center;">
			<div align="center">
				<caption>热帖</caption>
			</div>
			<table class="table table-bordered">


			</table>
		</div>
		<div
			style="width:100%;border:1px solid purple;align:center;">
			<div align="center"></div>
			<table class="table table-bordered" width="898" height="55">
				<style>
             td {
	              text-align: center
                  }
               </style>
				<c:forEach var="b"  items="${requestScope.tiezis}" varStatus="i" begin="1"  end="10">
					<tr>
						<td rowspan=2 style="width:150px; align:center;padding-left: 50px;padding-top:10px;padding-bottom:10px">
						 <img src="${b.users.headimage}"><br/>
                       <%-- <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="">
						 <span style="color:red ;align:center;">${b.users.nickname}</span>
                       </button> --%>
							<button type="button" class="btn btn-default popover-show"
								title="个性签名：" data-container="body"
								data-toggle="popover" data-placement="left"
								data-content="${b.users.signature}">
								<span style="color:red ;align:center;">${b.users.nickname}</span>
								</button> 
								<script type="text/javascript">
								 $(function () { $('.popover-show').popover('hide');});
                        </script>
						</td>
						<td >
						<span style="color:purple ;font-style: oblique;align:center;">${i.count}.标题:</span>
						<span style="font-size:14 ;font-family: 微软雅黑">
						<a href="detailOfTiezi.jsp?TIEZIID=${b.tieziid}">
						<c:choose>
							<c:when test="${fn:length(b.title) gt 10}">
									<c:out value="${fn:substring(b.title,0,10)}" escapeXml="false"></c:out>..
				   </c:when>
							<c:otherwise>
								<c:out value="${b.title}" escapeXml="false"></c:out>
							</c:otherwise>
						</c:choose> 
						</a>
						</span><br/>
						<span style="font-size:12 ;font-family: 宋体">
						<c:choose>
							<c:when test="${fn:length(b.content) gt 50}">
								<c:out value="${fn:substring(b.content,0,50)}" escapeXml="false"></c:out>..
				   </c:when>
							<c:otherwise>
								<c:out value="${b.content}" escapeXml="false"></c:out>
							</c:otherwise>
						</c:choose> 
						</span>
						</td>
					</tr>
					<tr>
						<td >
						<span style="width:20px;height: 8px;font-size: 5px;">点击次数:</span>${b.clickcount}  
						<span style="width:20px;height: 8px;font-size: 5px;">发帖时间:</span>${b.sendtime }  
						<span style="width:20px;height: 8px;font-size: 5px;">发帖人:</span>${b.users.username }
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>

"