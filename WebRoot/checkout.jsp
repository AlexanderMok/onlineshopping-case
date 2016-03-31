<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>Checkout</title>
<link href="css/bootstrap/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.10.2.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/bootstrap/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Amberegul Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<!--//fonts-->
<!-- start menu -->
<link href="css/bootstrap/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>


<script src="js/simpleCart.min.js">
	
</script>
</head>
<body>
	<!--header-->
	<div class=" header-product">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in grid-1">
					<ul class="support">
						<li><a href="javascript:;"><i> </i>info@example.com</a></li>
						<li><span><i class="tele-in"> </i>0 462 261 61 61</span></li>
					</ul>
					<ul class=" support-right">
					<li><a href="admin.action"><i class="men"> </i>后台管理</a></li>
					<li><a href="showuserorder.action"><i class="men"> </i>客户订单</a></li>
						<c:choose>
							<c:when test="${sessionScope.user==null}">
								<li><a href="loginuser.action"><i class="men"> </i>登录</a></li>
							</c:when>
							<c:otherwise>
								<li><i class="men"> </i>欢迎用户:${sessionScope.user.userName}</li>
								<li><i class="men"> </i><a href="logout.action">退出</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="reg.action"><i class="tele"> </i>注册</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="header-bottom bottom-com">
				<div class="container">
					<div class="logo">
						<h1>
							<a href="index.html">Amberegul</a>
						</h1>
					</div>
					<div class="top-nav">
						<!-- start header menu -->
						<ul class="megamenu skyblue menu-in">
							<li><a href="index.action">首页</a></li>

							<li class="active grid"><a href="#">商品分类</a>
								<div class="megapanel">
									<div class="row">
										<div class="col1">
											<div class="h_nav">
												<h4>顶层分类</h4>
												<ul>
													<s:iterator value="topItemTypeList">
														<li><a href="javacsript:;"><s:property
																	value="typeName" /></a></li>
													</s:iterator>

												</ul>
											</div>
										</div>
										<div class="col1">
											<div class="h_nav">
												<h4>第二层分类</h4>
												<ul>
													<s:iterator value="secondTypeList">
														<li><a href="javacsript:;"><s:property
																	value="typeName" /></a></li>
													</s:iterator>
												</ul>
											</div>
										</div>
										<div class="col1 col5">
											<div class="h_nav">
												<h4>第三层分类</h4>
												<ul>
													<s:iterator value="thirdTypeList">
														<li><a href="javacsript:;"><s:property
																	value="typeName" /></a></li>
													</s:iterator>
												</ul>
											</div>
										</div>

									</div>

								</div></li>
							<li><a href="javascript:;">Blog</a></li>
							<li><a href="#">热销产品</a>
								<div class="megapanel">
									<div class="row">
										<div class=" col-nav">
											<div class="h_nav">
												<h4>最受欢迎</h4>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi.jpg" alt=""></a>
													</div>
													<div class="men-in">
														<h6>Lorem Ipsum</h6>
														<span>$.60.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi11.jpg"
															alt=""></a>
													</div>
													<div class="men-in">
														<h6>Dummy Text</h6>
														<span>$.160.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi12.jpg"
															alt=""></a>
													</div>
													<div class="men-in">
														<h6>Standard Chunk</h6>
														<span>$.80.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
										<div class=" col-nav">
											<div class="h_nav">
												<h4>最受好评</h4>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi13.jpg"
															alt=""></a>
													</div>
													<div class="men-in">
														<h6>Perspiciatis Und</h6>
														<span>$.90.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi.jpg" alt=""></a>
													</div>
													<div class="men-in">
														<h6>Veritatis Et</h6>
														<span>$.60.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="sell">
													<div class="men">
														<a href="product.html"><img src="images/pi11.jpg"
															alt=""></a>
													</div>
													<div class="men-in">
														<h6>Lorem Ipsum</h6>
														<span>$.100.00</span>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
									</div>
								</div></li>

							<li><a href="javascript:;">联络我们</a></li>
						</ul>
						<!---->
						<div class="search-in">
							<div class="search">
								<form action="search.html">
									<input type="text" value="Keywords" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Keywords';}"
										class="text"> <input type="submit" value="SEARCH">
								</form>
								<div class="close-in">
									<img src="images/close.png" alt="" />
								</div>
							</div>
							<div class="right">
								<button></button>
							</div>
						</div>
						<script type="text/javascript">
							$('.search').hide();
							$('button').click(function() {
								$('.search').show();
								$('.text').focus();
							});
							$('.close-in').click(function() {
								$('.search').hide();
							});
						</script>

						<!---->
						<div class="cart box_1">
							<a href="showcart.action">
								<h3>
									<div class="total">
										<span class="simpleCart_total"></span> (<span
											id="simpleCart_quantity" class="simpleCart_quantity"></span>
										items)
									</div>
									<img src="images/cart.png" alt="" />
								</h3>
							</a>
							<p>
								<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
							</p>
							<div class="clearfix"></div>
						</div>

						<!---->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

	</div>
	<!---->
	<div class="container">
		<h6 class="dress">
			<a href="index.html">Home</a> <i> </i> Checkout
		</h6>
	</div>
	<!---->
	<div class="product">
		<div class="container">
			<!---->
			<div class="col-md-9 product-price1" style="width:100%">
				<div class="check-out">

					<div class=" cart-items">
						<h3>购物车</h3>
						<script>
							$(document)
									.ready(
											function(c) {
												$('.close1')
														.on(
																'click',
																function(c) {
																	$(
																			'.cart-header')
																			.fadeOut(
																					'slow',
																					function(
																							c) {
																						$(
																								'.cart-header')
																								.remove();
																					});
																});
											});
						</script>
						<script>
							$(document)
									.ready(
											function(c) {
												$('.close2')
														.on(
																'click',
																function(c) {
																	$(
																			'.cart-header1')
																			.fadeOut(
																					'slow',
																					function(
																							c) {
																						$(
																								'.cart-header1')
																								.remove();
																					});
																});
											});
						</script>
					<form action="addorder.action" method="post">
						<div class="in-check">
							<ul class="unit">
								<li></li>
								<li><span>商品图片</span></li>
								<li style=""><span>商品名称</span></li>
								<li style="5%"><span>商品单价</span></li>
								<li style="5%"><span>商品数量</span></li>
								<li><span>加入时间</span></li>
								<div class="clearfix"></div>
							</ul>
							<s:iterator value="cartInItem" var="v">
							<ul class="cart-header">
								<li class="ring-in"><a href="showsingleitem.action?id=${item.id}"><img
										src="${item.itemPic}" class="img-responsive" alt=""></a></li>
								<li><span><input type="hidden" name="itemName" value="">${item.itemName}</span></li>
								<li style="5%"><span><input type="hidden" name="price" value="${item.price}">${item.price}</span></li>
								<li style="5%"><span><input type="text" name="buyTotal" value="${buyTotal}" disabled></span></li>
								<li><span>${buyTime}</span></li>
								<li><a href="addorder.action?uid=${user.id}&itemId=${item.id}&buyTime=<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()) %>&total=${buyTotal}&status=0" class="add-cart cart-check">提交订单</a>
								</li>
								<div class="clearfix"></div>
							</ul>
							</s:iterator>
						</form>	
						</div>
						<%-- <script>
							$(function(){
								$("#delCart").on(function(){
									$("#delCart").parent().parent().remove();
								});
							});
						</script> --%>
					</div>

				</div>


			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---->
	<!---->
	<jsp:include page="footer.jsp"></jsp:include>
	<!---->
</body>
</html>