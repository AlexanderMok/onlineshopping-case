<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="topbar-wrap white">
	<div class="topbar-inner clearfix">
		<div class="topbar-logo-wrap clearfix">
			<h1 class="topbar-logo none">
				<a href="#" class="navbar-brand">后台管理</a>
			</h1>
			<ul class="navbar-list clearfix">
				<li></li>
				<li><a href="admin.action">后台首页</a></li>
				<li><a href="index.action" target="_blank">商城首页</a></li>
			</ul>
		</div>
		<div class="top-info-wrap">
			<ul class="top-info-list clearfix">
				<li><a href="logout.action">退出</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="sidebar-wrap">
	<div class="sidebar-title">
		<h1>菜单</h1>
	</div>
	<div class="sidebar-content">
		<ul class="sidebar-list">
			<li><a href="javascript:;" class="menue"><i class="icon-font">&#xe003;</i>商品管理</a>
				<ul class="sub-menu">
					<li><a href="additem.action"><i class="icon-font">&#xe008;</i>添加商品</a></li>
					<li><a href="additemtype.action"><i class="icon-font">&#xe008;</i>添加分类</a></li>
					<li><a href="typelist.action"><i class="icon-font">&#xe008;</i>分类列表</a></li>
					<li><a href="itemlist.action"><i class="icon-font">&#xe006;</i>商品列表</a></li>
					<li><a href="orderlist.action"><i class="icon-font">&#xe012;</i>处理商品</a></li>
				</ul></li>
			<c:if test="${sessionScope.user.role.id==3 }">
				<li><a href="javascript:;" class="menue"><i class="icon-font">&#xe018;</i>用户管理</a>
					<ul class="sub-menu">
						<li><a href="listallusers.action"><i class="icon-font">&#xe017;</i>查看用户</a></li>
						<li><a href="listallusers.action"><i class="icon-font">&#xe037;</i>删除用户</a></li>
						<li><a href="adduser.action"><i class="icon-font">&#xe005;</i>增添用户</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${sessionScope.user.role.id==1 }">
				<li><a href="javascript:;" class="menue"><i class="icon-font">&#xe018;</i>会员管理</a>
					<ul class="sub-menu">
						<li><a href="listallbuyers.action"><i class="icon-font">&#xe017;</i>查看会员</a></li>
						<li><a href="listallbuyers.action"><i class="icon-font">&#xe037;</i>删除会员</a></li>
						<li><a href="adduser.action"><i class="icon-font">&#xe037;</i>增添普通会员</a></li>
					</ul></li>
			</c:if>
		</ul>
	</div>
</div>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/util.js"></script>