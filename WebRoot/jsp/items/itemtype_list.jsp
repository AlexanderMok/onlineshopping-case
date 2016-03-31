<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
					class="crumb-step">&gt;</span><a class="crumb-name"
					href="itemList">商品管理</a><span class="crumb-step">&gt;</span><span>商品分类列表</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
					<table class="result-tab" width="100%" style="text-align:center;">
						<tbody>
							<tr>
								<td>id</td>
								<td>pid</td>
								<td>分类</td>
								<td>操作</td>
							</tr>
							<s:iterator value="itemTypeList" var="i">
								<tr>
									<td><s:property value="id"/></td>
									<td><s:property value="pid"/></td>
									<td><s:property value="typeName"/></td>
									<td><a class="link-del"
									href="delitemtype.action?id=${i.id}">删除</a>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
			</div>
		</div>
	</div>
	<!--/main-->
</body>
</html>