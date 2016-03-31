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

<title>处理商品</title>
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
					href="itemlist.action">商品管理</a><span class="crumb-step">&gt;</span><span>订单处理</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
					<table class="insert-tab" width="100%" >
						<tbody>
							<tr>
								<td>订单编号</td>
								<td>客户名称</td>
								<td>购买商品</td>
								<td>收货地址</td>
								<td>商品数量</td>
								<td>订单状态</td>
								<td>操作</td>
							</tr>
							<tr>
								<td><s:property value="order.orderNum" /></td>
								<td><s:property value="order.user.userName" /></td>
								<td><s:property value="order.item.itemName" /></td>
								<td><s:property value="order.user.address" /></td>
								<td><s:property value="order.total" /></td>
								<s:if test=" order.status == 0 "><td>未发货</td></s:if> 
								<s:if test=" order.status == 1 "><td style="font-size:bold;color:red;">已发货</td></s:if>
								<td><a href="deliver.action?id=<s:property value="id" />">确认发货</a></td>
							</tr>
							<tr>
								<td colspan="7"><input class="btn btn6"
									onclick="history.go(-1)" value="返回" type="button"></td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
	</div>
	<!--/main-->
</body>
</html>