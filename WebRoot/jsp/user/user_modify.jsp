<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>My JSP 'user.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/user_login.css">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/util.js"></script>
</head>

<body>
	<c:choose>
		<c:when test="${sessionScope.user.role.id==3}">
		<jsp:include page="../admin/admin_main.jsp"></jsp:include>
			<div
				style="clear:both;text-align:center;position:absolute;top:7%;left:45%;">
				<form action="insertuser" method="post">
					<p class="reg-tip-wrap"></p>
					<div>
						<input type="text" name="user.userName" class="reg-ipt"
							placeholder="${user.userName}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="password" name="user.password" class="reg-ipt"
							placeholder="${user.password}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="tel" name="user.tel" class="reg-ipt" placeholder="${user.tel}"
							required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="email" name="user.email" class="reg-ipt"
							placeholder="${user.email}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="text" name="user.address" class="reg-ipt"
							placeholder="${user.address}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="radio" name="user.role.id" value="1">普通管理员 <input
							type="radio" name="user.role.id" value="2">普通会员 <input
							type="hidden" name="user.roleName" value="普通会员">
					</div>
					<div>
						<input type="submit" id="login-btn" class="btn-full" value="确认">
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${sessionScope.user.role.id==1}">
		<jsp:include page="../admin/admin_main.jsp"></jsp:include>
			<div
				style="clear:both;text-align:center;position:absolute;top:7%;left:45%;">
				<form action="insertbuyer.action" method="post">
					<p class="reg-tip-wrap"></p>
					<div>
						<input type="text" name="user.userName" class="reg-ipt"
							placeholder="${user.userName}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="password" name="user.password" class="reg-ipt"
							placeholder="${user.password}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="tel" name="user.tel" class="reg-ipt" placeholder="${user.tel}"
							required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="email" name="user.email" class="reg-ipt"
							placeholder="${user.email}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="text" name="user.address" class="reg-ipt"
							placeholder="${user.address}" required>
						<p class="reg-tip-wrap"></p>
					</div>
					<div>
						<input type="hidden" name="user.role.id" value="2">
						<input type="hidden" name="user.roleName" value="普通会员">
					</div>
					<div>
						<input type="submit" id="login-btn" class="btn-full" value="确认">
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>
</body>
</html>