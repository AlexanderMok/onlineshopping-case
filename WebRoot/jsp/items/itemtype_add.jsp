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
					class="crumb-step">&gt;</span><a class="crumb-name"
					href="itemlist.action">商品管理</a><span class="crumb-step">&gt;</span><span>添加分类</span>
			</div>
		</div>
		<div class="result-wrap">
			<div class="result-content">
				<form action="saveitemtype.action" method="post" id="myform"
					name="myform" enctype="multipart/form-data">
					<table class="insert-tab" width="100%">
						<tbody>
							<tr>
								<th>分类名称：</th>
								<td><input class="common-text required" id="title"
									name="typeName" size="50" placeholder="" type="text"></td>
							</tr>
							<tr>
								<th>上级分类：</th>
								<td><select name="pid" class="btn" id="selecttype">
										<option value="-1">--请选择类别--</option>
										<s:iterator value="itemTypeList" var="i">
											<option value="${i.id}"><s:property
													value="typeName" /></option>
										</s:iterator>
								</select> <select id="sectype" style="display:none;" class="btn"></select>
									<select id="thirdtype" style="display:none;" class="btn"></select>
								</td>
							</tr>
							<tr>
								<th>分类注释：</th>
								<td><input class="common-text" name="note" size="50"
									type="text" name="note"></td>
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
				//清空2级菜单和三级菜单
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