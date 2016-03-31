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

<title>订单处理</title>
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
					class="crumb-step">&gt;</span><span class="crumb-name">订单列表</span>
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
				<div class="result-title">
					<div class="result-list">
					</div>
				</div>
				<div class="result-content">
					<table class="result-tab" width="100%" style="text-align:center;">
						<tr>
							<td class="tc"><input class="allChoose" name=""
								type="checkbox"></td>
							<td>客户名称</td>
							<td>订单编号</td>
							<td>商品名称</td>
							<td>下单时间</td>
							<td>商品数量</td>
							<td>订单状态</td>
							<td>操作</td>
						</tr>
						<s:iterator value="orderList" var="b">
							<tr>
								<td class="tc"><input name="id[]" value="59"
									type="checkbox"></td>
								<td>${user.userName}</td>
								<td>${orderNum}</td>
								<td>${item.itemName}</td>
								<td>${buyTime}</td>
								<td>${total}</td>
									<s:if test="status==0"><td style="font-size:bold;color:red;">未处理</td></s:if>
									<s:if test="status==1"><td style="font-size:bold;color:green;">已发货</td></s:if>
								<td>
									<a class="link-update" href="send.action?id=<s:property value='id'/>">发货</a>
								</td>
							</tr>
						</s:iterator>
						<tr>
							<td colspan="8"><a href="orderlist?curPage=1">首页</a> <a
								href="orderlist?curPage=${curPage-1}">上一页</a> <a
								href="orderlist?curPage=${curPage+1}">下一页</a> <a
								href="orderlist?curPage=${totalPage}">尾页</a> 共${totalPage}页数
								当前${curPage}页</td>
						</tr>	
					</table>
				</div>
		</div>
	</div>
</body>
</html>