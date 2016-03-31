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
					class="crumb-step">&gt;</span><span class="crumb-name">商品列表</span>
			</div>
		</div>
		<div class="search-wrap">
			<div class="search-content">
				<table class="search-tab">
					<tr>
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.user.roleName}：${sessionScope.user.userName}</th>
						<td></td>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</table>
			</div>
		</div>
		<div class="result-wrap">
			<form name="myform" id="myform" action="" method="post">
				<div class="result-title">
					<div class="result-list">
						<a href="additem.action"><i class="icon-font"></i>新增商品</a> <a
							href="order.do?a=orderList"><i class="icon-font"></i>处理商品</a>
					</div>
				</div>
				<div class="result-content">
					<table class="result-tab" width="100%" style="text-align:center;">
						<tr>
							<td class="tc"><input class="allChoose" name=""
								type="checkbox"></td>
							<td>商品图片</td>
							<td>商品信息</td>
							<td>单价</td>
							<td>数量</td>
							<td>金额</td>
							<td>操作</td>
						</tr>

						<s:iterator value="itemList" var="i">
							<tr>
								<td class="tc"><input name="id[]" value="59"
									type="checkbox"></td>
								<td width=20%>
									<s:iterator value="picPath">
										<img src="<s:property />" alt="" name="itemPic" id="itemPic">
									</s:iterator></td>
								<td width=50%>${i.itemDesc}</td>
								<td><s:property value="price"/></td>
								<td><s:property value="count"/></td>
								<td><s:property value="price"/>*<s:property value="count"/></td>
								<td><a class="link-update" href="modifyitem.action?id=${id}">修改</a>
									<a class="link-del" href="delitem.action?id=${id}">删除</a></td>
							</tr>
						</s:iterator>
						<tr>
							<td colspan="7"><a href="itemlist?curPage=1">首页</a> <a
								href="itemlist?curPage=${curPage-1}">上一页</a> <a
								href="itemlist?curPage=${curPage+1}">下一页</a> <a
								href="itemlist?curPage=${totalPage}">尾页</a> 共${totalPage}页数
								当前${curPage}页</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
	<!--/main-->
</body>
</html>
