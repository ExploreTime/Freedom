<%@page import="com.oralce.model.Users"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="resource" scope="session" var="resource" />
<fmt:requestEncoding value="UTF-8" />
<center>
	<div style="width:1000px;height:250px;">
		<div
			style="width:100%;border:1px solid green;height:45px;background-color:gray;">
			<div
				style="width:100px;border:1px solid green;height:40px;float: left;padding-top:6px;">论坛</div>
			<c:choose>
				<c:when test="${empty sessionScope.loginedUser}">
					<div
						style="width:100px;border:1px solid green;padding-top:6px;float:right;">

						<a href='<c:url value='login.jsp'></c:url>'>登录</a>
						&nbsp;&nbsp;&nbsp;<a href="#">注册</a>
					</div>
				</c:when>
				<c:otherwise>
					<div
						style="width:200px;height: 100px;position: relative ;left:400px;top:3px;">
						<img src="${sessionScope.loginedUser.headimage}"
							style="border-radius:30px;" width:100%;height="20px"> <b
							style="font-size: 20px;color:white; text-shadow: purple 1px 1px 1px; font-family:华文行楷;">${sessionScope.loginedUser.nickname}</b>
						&nbsp;&nbsp;&nbsp;<a href="<c:url value='logoff.jsp'></c:url>">退出</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		<div
			style="width:100%;border:1px solid purple;height:30px;text-align:left;padding-left: 0px;">
			<a href="<c:url value="loaddata.jsp"></c:url>"><fmt:message
					key="nav_1" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="<c:url value="bankuai.jsp"></c:url>"><fmt:message
					key="nav_2" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="retieprocess.jsp"></c:url>"><fmt:message
					key="nav_3" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="public.jsp"></c:url>"><fmt:message
					key="nav_4" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="profile.jsp"></c:url>"><fmt:message
					key="nav_5" bundle="${sessionScope.resource}"></fmt:message>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<c:choose>
				<c:when test="${empty sessionScope.loginedUser}">
					<a
						href='<c:url value='login.jsp'><c:param name='noticeMessage' value='unlogined'></c:param></c:url>'><fmt:message
							key="nav_6" bundle="${sessionScope.resource}"></fmt:message>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	      </c:when>
				<c:otherwise>
					<a href='<c:url value='fatie.jsp'></c:url>'><fmt:message
							key="nav_6" bundle="${sessionScope.resource}"></fmt:message>
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      </c:otherwise>
			</c:choose>
			<%--  <c:out value="<%=request.getLocale()%>"></c:out> --%>
			<c:set var="browser" scope="page" value="<%=request.getLocale()%>"></c:set>
			<select onchange="javascript:change(this.value)">
				<c:choose>
					<c:when test="${empty param.lan}">
						<c:choose>
							<c:when test="${pageScope.browser eq 'zh_CN'}">
								<option value="zh_CN" selected="selected">中国</option>
								<option value="en_US">English</option>
							</c:when>
							<c:otherwise>
								<option value="zh_CN">中国</option>
								<option value="en_US" selected="selected">English</option>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${param.lan eq 'zh_CN'}">
								<option value="zh_CN" selected="selected">中国</option>
								<option value="en_US">English</option>
							</c:when>
							<c:otherwise>
								<option value="zh_CN">中国</option>
								<option value="en_US" selected="selected">English</option>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</select>
		</div>
		<img src="images/system/logo1.png" width=100% height="220px"> <br>