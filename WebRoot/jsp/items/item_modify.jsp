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

<title>更改商品信息</title>
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
					href="itemlist.action">商品管理</a><span class="crumb-step">&gt;</span><span>添加商品</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
				<form action="updateitem.action" method="post" id="myform"
					name="myform" enctype="multipart/form-data">
					<table class="insert-tab" width="100%">
						<tbody>
							<tr>
								<th>商品分类：</th>
								<td>
								<select name="item.itemType" class="btn">
									<%-- <c:forEach items="${sessionScope.typeList}" var="v">
										<option value="${v.id}">${v.typeName}</option>
									</c:forEach> --%>
									<option value="-1">--请选择分类--</option>
									<s:iterator value="itemTypeList">
										<option value="${id}">${typeName}</option>
									</s:iterator>
								</select>
								
								</td>
							</tr>
							<tr>
								<th>商品名称：</th>
								<td><input class="common-text required" id="title"
									name="item.itemName" size="50" placeholder="${item.itemName}" type="text" required></td>
							</tr>
							<tr>
								<th>商品价格：</th>
								<td><input class="common-text" name="item.price" size="50" placeholder="${item.price}"
									type="text" required></td>
							</tr>
							<tr>
								<th>商品库存：</th>
								<td><input class="common-text" name="item.count" size="50" placeholder="${item.count}"
									type="text" required></td>
							</tr>
							<tr>
								<th>商品缩略图：</th>
								<td>
									<div id="viewImgs" class="viewImgs"></div>
									<button name="uploadImg" id="uploadImg" class="btn btn10">请选择上载图片</button>
									<input type="hidden" name="item.itemPic" id="picpath">
									<!-- <input type="file" id="uploadImg" class="btn btn10"> -->
								</td>
							</tr>
							<tr>
								<th>商品描述：</th>
								<td><textarea name="item.itemDesc" class="common-textarea ckeditor"
										id="content" cols="30" style="width: 98%;" rows="10" required>${item.itemDesc}</textarea></td>
							</tr>
							<tr>
								<th></th>
								<td><input class="btn btn-primary btn6 mr10" value="更新"
									type="submit"> <input class="btn btn6"
									onclick="history.go(-1)" value="返回" type="button"></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<!--/main-->
<script src="ckeditor/ckeditor.js"></script>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/ajaxupload.js"></script>
<script src="js/util.js"></script>	
</body>
</html>