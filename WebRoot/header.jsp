<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<base href="<%=basePath%>">
<link href="css/bootstrap/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.10.2.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/bootstrap/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/jquery.jqzoom.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- start menu -->
<link href="css/bootstrap/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!--//slider-script-->

<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>

<script src="js/simpleCart.min.js">
	
</script>

</head>
<body>
	<!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-in">

					<ul class="support">
						<li><a href="javascript:;"><i> </i>info@example.com</a></li>
						<li><span><i class="tele-in"> </i>0 462 261 61 61</span></li>
					</ul>
					<ul class=" support-right">
						<c:choose>
							<c:when test="${sessionScope.user==null}">
								<li><a href="loginuser.action"><i class="men"> </i>登录</a></li>
							</c:when>
							<c:otherwise>
								<li><i class="men"> </i>欢迎用户:${sessionScope.user.userName}</li>
								<li><a href="logout.action"><i class="men"> </i>退出</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="reg.action"><i class="tele"> </i>注册</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="header-bottom">
				<div class="container">
					<div class="logo">
						<h1>
							<a href="index.html">Amberegul商城</a>
						</h1>
					</div>
					<div class="top-nav">
						<!-- start header menu -->
						<ul class="megamenu skyblue">
							<li><a href="index.action">首页</a></li>

							<li class="active grid"><a href="#">类别</a>
								<div class="megapanel">
									<div class="row">
										<div class="col1">
											<div class="h_nav">
												<h4>菜单</h4>
												<ul>
													<s:iterator value="topTypeList">
														<li><a href="about.html">About</a></li>
														<li><a href="product.html">men</a></li>
														<li><a href="product.html">women</a></li>
														<li><a href="product.html">accessories</a></li>
														<li><s:property value="typeName" /></li>
													</s:iterator>

												</ul>
											</div>
										</div>
										<div class="col1">
											<div class="h_nav">
												<h4>菜单</h4>
												<ul>
													<li><a href="product.html">trends</a></li>
													<li><a href="product.html">sale</a></li>
													<li><a href="product.html">style videos</a></li>
													<li><a href="product.html">accessories</a></li>
													<li><a href="product.html">kids</a></li>
													<li><a href="product.html">style videos</a></li>
												</ul>
											</div>
										</div>
										<div class="col1 col5"></div>

									</div>

								</div></li>
							<li><a href="404.html">Blog</a></li>
							<li><a href="#">热销商品</a>
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
									<input type="text" value="Keywords" onFocus="this.value = '';"
										onBlur="if (this.value == '') {this.value = 'Keywords';}"
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

						<div class="clearfix"></div>
						<!---->
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
</div>