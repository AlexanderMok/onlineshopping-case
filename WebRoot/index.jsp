<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>Home</title>
<base href="<%=basePath%>">
<link href="css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.10.2.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/bootstrap/style.css" rel="stylesheet" type="text/css"	media="all" />
<link href="css/jquery.jqzoom.css" rel="stylesheet" type="text/css"	media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- start menu -->
<link href="css/bootstrap/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
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

							<li class="active grid"><a href="product.action">商品</a>
								<div class="megapanel">
									<div class="row">
										<div class="col1">
											<div class="h_nav">
												<h4>顶层分类</h4>
												<ul>
													<s:iterator value="topItemTypeList">
													<li><a href="javacsript:;"><s:property value="typeName"/></a></li>
													</s:iterator>

												</ul>
											</div>
										</div>
										<div class="col1">
											<div class="h_nav">
												<h4>第二层分类</h4>
												<ul>
													<s:iterator value="secondTypeList">
													<li><a href="javacsript:;"><s:property value="typeName"/></a></li>
													</s:iterator>
												</ul>
											</div>
										</div>
										<div class="col1 col5">
											<div class="h_nav">
												<h4>第三层分类</h4>
												<ul>
													<s:iterator value="thirdTypeList">
													<li><a href="javacsript:;"><s:property value="typeName"/></a></li>
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

		<div class="banner">
			<div class="banner-top">
				<h2>THIS IS AMBEREGUL</h2>
				<p>
					This theme for high selling <span>fashion such as clothings,
						shoes, bags, fashion for men, women, accessories, etc.</span>
				</p>
			</div>

			<div class="now">
				<a class="morebtn" href="single.html">Explore</a> <a
					class="morebtn at-in" href="single.html">Shop Now</a>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>
	<!---->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<div class="col-md-9">
					<div class="col-top">
						<div class="col-md-6 black">
							<a href="single.html"><div class="shoe">
									<h3>WOMEN SHOES</h3>
								</div> <img src="images/sh.png" alt=""></a>
						</div>
						<div class="col-md-6 black-in">
							<a href="single.html"><div class="shoe bag">
									<h3>WOMEN BAGS</h3>
								</div> <img src="images/ba.png" alt=""></a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-top-bottom">
						<h3 class="menber">MEMBER DISCOUNT</h3>
						<a href="single.html" class="now-in">SHOP NOW</a>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-3 per">
					<a href="single.html"><img class="img-responsive"
						src="images/pi1.jpg" alt="">
						<div class="six">
							<h4>FASHION</h4>
							<p>Get up to</p>
							<span>60%</span>
						</div></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<!---->
			<div class="sap_tabs">
				<label class="line"> </label>
				<h2>LATES ARRIVAL</h2>
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>WOMENS</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>MENS</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>SHOES</span></li>
						<div class="clearfix"></div>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="tab_img">
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi2.jpg" class="img-responsive" alt="" />

									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>

								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi3.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in">
										<p>NEW</p>
									</div>
								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi4.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in col-in-1">
										<p>
											SALE <span>30%</span>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="tab_img">
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi9.jpg" class="img-responsive" alt="" />

									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>

								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi8.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in">
										<p>NEW</p>
									</div>
								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi10.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>
										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in col-in-1">
										<p>
											SALE <span>30%</span>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="tab_img">
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi5.jpg" class="img-responsive" alt="" />

									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>

								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi6.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in">
										<p>NEW</p>
									</div>
								</div>
								<div class="img-top simpleCart_shelfItem">

									<img src="images/pi7.jpg" class="img-responsive" alt="" />
									<div class="tab_desc">
										<ul class="round-top">
											<li><a href="#"><i> </i></a></li>
											<li><a href="#"><i class="round"> </i></a></li>
										</ul>

										<div class="agency ">
											<div class="agency-left">
												<h6 class="jean">BAJU JEANS</h6>
												<span class="dollor item_price">$50.00</span>
												<div class="clearfix"></div>
											</div>
											<div class="agency-right">
												<ul class="social">
													<li><a href="#"><i class="item_add"> </i></a></li>
													<li><a href="#"><i class="text"> </i></a></li>
												</ul>
												<ul class="social-in">
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="clearfix"></div>
											</div>
										</div>
									</div>
									<div class="col-in col-in-1">
										<p>
											SALE <span>30%</span>
										</p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!---->
		</div>
		<!--best seller-->
		<jsp:include page="middle.jsp"></jsp:include>
		<!---->
		<div class="content-bottom-top">
			<div class="container">
				<h3>Latest News</h3>
				<div class="blog-in">
					<div class="col-md-8">

						<div class="wmuSlider example1">
							<div class="wmuSliderWrapper">
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="blog-in-top">
										<div class="col-md-6 van">
											<a href="single.html"> <img src="images/bl.jpg"
												class="img-responsive" alt="" /></a>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="blog-in-bottom">
										<div class="col-md-6 van-in">
											<h5>Discount Up to</h5>
											<span>60%</span>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</article>
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="blog-in-top">
										<div class="col-md-6 van">
											<a href="single.html"> <img src="images/bl2.jpg"
												class="img-responsive" alt="" /></a>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="blog-in-bottom">
										<div class="col-md-6 van-in in-bus">
											<h5>Discount Up to</h5>
											<span>60%</span>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</article>
								<article style="position: absolute; width: 100%; opacity: 0;">
									<div class="blog-in-top">
										<div class="col-md-6 van">
											<a href="single.html"> <img src="images/bl.jpg"
												class="img-responsive" alt="" /></a>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="blog-in-bottom">
										<div class="col-md-6 van-in">
											<h5>Discount Up to</h5>
											<span>60%</span>
										</div>
										<div class="col-md-6 on-para">
											<div class="col-on">
												<h4>Iniloh Judulnya</h4>
												<span>Saturday, 23/08/2014</span>
											</div>
											<p>
												Lorem ipsum dolor sit <span>amet, consectetuer
													adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
													laoreet dolore magna aliquam erat volutpat ....</span>
											</p>
											<a href="single.html" class="sed">Readmore</a>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</article>
							</div>
						</div>
						<!---->
						<script src="js/jquery.wmuSlider.js"></script>
						<script>
							$('.example1').wmuSlider({
								pagination : false,
							});
						</script>

					</div>
					<div class="col-md-4 amet">
						<div class="grid-per">
							<a href="single.html"><img class="img-responsive"
								src="images/bl1.jpg" alt="">
								<div class="six-per">
									<h4>Get up to</h4>
									<span>60%</span>
									<p>Lorem ipsum dolor amet, consectetuer elit adipiscing ,
										sed diam nonummy nibh euismod tincidunt ut laoreet dolore
										magna erat aliquam volutpat.</p>

								</div></a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!---->
		<div class="container">
			<div class="bottom-grid">
				<img class="img-responsive" src="images/back1.jpg" alt="">
				<div class="fit">
					<h6>Best fit for women’s feet</h6>
					<p>TRY TO WALK IN OUR SHOES</p>
				</div>
			</div>
		</div>
		<!---->
	</div>
	<!---->
	<jsp:include page="footer.jsp"></jsp:include>
	<!---->
</body>
</html>
