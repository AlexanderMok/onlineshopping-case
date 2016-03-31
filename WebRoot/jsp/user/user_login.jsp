<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<base href="<%=basePath%>">

<title>买家登录</title>
<link rel="stylesheet" type="text/css" href="css/user_login.css">
</head>
<body>
	<div style="text-align:center;">
		<div class="register-header">
			<h1>
				<span class="reg-login-btn">登陆</span>
			</h1>
		</div>
		<div class="register-body">
			<form action="userlogin.action" method="post" id="register-from">
				<div class="reg-group">
					<input type="text" name="userName" class="reg-ipt"
						placeholder="请输入用户名" required>
					<p class="reg-tip-wrap">
						<span>${sessionScope.errMsg}</span>
					</p>
				</div>
				<div class="reg-group">
					<input type="password" name="password" class="reg-ipt"
						placeholder="请输入密码" required>
					<p class="reg-tip-wrap">
						<span>${sessionScope.errMsg}</span>
					</p>
				</div>
				<div class="reg-group">
					<input type="text" name="verify" class="reg-ipt reg-vf"
						placeholder="请输入验证码" required>&nbsp;&nbsp;<img
						src="verifyCode.action" id="verifyCode" onclick="javascript:this.src=this.src+'?'+Math.random()"/>
					<p class="reg-tip-wrap">
						<span>${sessionScope.vfMsg}</span>
					</p>
				</div>
				<div class="reg-group clearfix">
					<input type="submit" id="login-btn" class="btn-full" value="登陆">
				</div>
			</form>
		</div>
	</div>
</body>
</html>