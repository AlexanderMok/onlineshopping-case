<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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

<title>My JSP 'itemList.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/modernizr.min.js"></script>
</head>
<body>
	<jsp:include page="../admin/admin_main.jsp"></jsp:include>
	<!--/sidebar-->
	<div class="main-wrap">
		<div class="crumb-wrap">
			<div class="crumb-list">
				<i class="icon-font"></i><a href="admin.action">后台首页</a><span
					class="crumb-step">&gt;</span><span class="crumb-name">会员列表</span>
			</div>
		</div>
		<div class="search-wrap">
			<div class="search-content">
				<form action="#" method="post">
					<table class="search-tab">
						<tr>
							<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.roleName}：${sessionScope.user.userName}</th>
							<td></td>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<div class="result-wrap">
			<form name="myform" id="myform" action="" method="post">
				<div class="result-title">
					<div class="result-list">
						<a href="addUser.action"><i class="icon-font"></i>添加会员</a> <a
							id="batchDel" href="javascript:"><i class="icon-font"></i>删除会员</a>
					</div>
				</div>
				<div class="result-content">
					<table class="result-tab" width="100%" style="text-align:center;">
						<tr>
							<td class="tc"><input class="allChoose" name=""
								type="checkbox"></td>
							<td>用户名称</td>
							<td>用户密码</td>
							<td>用户角色</td>
							<td>联系电话</td>
							<td>电子邮箱</td>
							<td>联系地址</td>
							<td>操作</td>
						</tr>
						<s:iterator value="buyerList" var="b">
							<tr>
								<td class="tc"><input name="id[]" value="59"
									type="checkbox"></td>
								<td>${b.userName}</td>
								<td>${b.password}</td>
								<td>${b.roleName}</td>
								<td>${b.tel}</td>
								<td>${b.email}</td>
								<td>${b.address}</td>
								<td>
									<a class="link-update" href="modifyuser.action&id=${id}">修改</a>
									<a class="link-del" href="delbuyer.action?&id=${id}">删除</a>
								</td>
							</tr>
						</s:iterator>	
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>