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
					class="crumb-step">&gt;</span><a class="crumb-name" href="itemlist">商品管理</a><span
					class="crumb-step">&gt;</span><span>添加商品</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
				<form action="saveitem.action" method="post" id="myform"
					name="myform" enctype="multipart/form-data">
					<table class="insert-tab" width="100%">
						<tbody>
							<tr>
								<th>商品分类：</th>
								<td><select name="item.itemType.id" class="btn"
									id="selecttype">

										<option value="-1">--请选择分类--</option>
										<s:iterator value="itemTypeList">
											<option value='<s:property value="id" />'><s:property
													value="typeName" /></option>
										</s:iterator>
								</select> <select id="sectype" style="display:none;" class="btn"></select> 
								<select	id="thirdtype" style="display:none;" class="btn"></select></td>
							</tr>
							<tr>
								<th>商品名称：</th>
								<td><input class="common-text required" id="title"
									name="item.itemName" size="50"
									placeholder="${item.itemName}" type="text" required></td>
							</tr>
							<tr>
								<th>商品价格：</th>
								<td><input class="common-text" name="item.price" size="50"
									placeholder="${item.price}" type="text" required></td>
							</tr>
							<tr>
								<th>商品库存：</th>
								<td><input class="common-text" name="item.count" size="50"
									placeholder="${item.count}" type="text" required></td>
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
								<td><textarea name="item.itemDesc"
										class="common-textarea ckeditor" id="content" cols="30"
										style="width: 98%;" rows="10" required
										placeholder="${sessionScope.itemDesc}"></textarea></td>
							</tr>
							<tr>
								<th></th>
								<td><input class="btn btn-primary btn6 mr10" value="提交"
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
	<script type="text/javascript">
		var data;
		function execute(obj) {
			if (data.length <= 0) {
				return;
			}
			var json = eval(data);
			var str = '<option value="-1">--请选择分类--</option>';
			for (var i = 0; i < json.length; i++) {
				str += "<option value="+json[i].id+">" + json[i].typename
						+ "</option>";
			}
			obj.children("option").remove();
			obj.css('display', 'inline');
			obj.append(str);
		}
		$(function() {
			var oSelect = $("#selecttype");
			oSelect.change(function() {
				//清空二级菜单和三级菜单
				$("#sectype").hide();
				$("#sectype").children('option').remove();
				$("#thirdtype").hide();
				$("#thirdtype").children('option').remove();
				$.ajax({
					type : "get",
					url : "getitemtype.action?tid=" + oSelect.val(),
					success : function(msg) {
						data = msg;
					},
					error : function(obj, msg) {
						//alert("没有子分类");
						data = "";
					},
					complete : function(data) {
						execute($("#sectype"));
					}
				});

			});

			$("#sectype").change(function() {
				$.ajax({
					type : "get",
					url : "getitemtype.action?tid=" + $(this).val(),
					success : function(msg) {
						data = msg;
					},
					error : function(obj, msg) {
						//alert("没有子分类");
						data = "";
					},
					complete : function(data) {
						execute($("#thirdtype"));
					}
				});

			});

		});
	</script>
</body>
</html>