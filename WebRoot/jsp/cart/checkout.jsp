<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>Checkout</title>
<link href="css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.10.2.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/bootstrap/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Amberegul Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<!--//fonts-->
<!-- start menu -->
<link href="css/bootstrap/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>


<script src="js/simpleCart.min.js"> </script>
</head>
<body> 
<!--header-->	
<div class=" header-product">
	<div class="header-top com">
		<div class="container">
			<div class="header-top-in grid-1">
				<ul class="support">
					<li ><a href="mailto:info@example.com" ><i > </i>info@example.com</a></li>
					<li ><span ><i class="tele-in"> </i>0 462 261 61 61</span></li>			
				</ul>
				<ul class=" support-right">
					<li ><a href="account.html" ><i class="men"> </i>Login</a></li>
					<li ><a href="account.html" ><i class="tele"> </i>Create an Account</a></li>			
				</ul>
				<div class="clearfix"> </div>
			</div>
		</div>
			<div class="header-bottom bottom-com">
			<div class="container">			
				<div class="logo">
					<h1><a href="index.html">Amberegul</a></h1>
				</div>
				<div class="top-nav">
				<!-- start header menu -->
		<ul class="megamenu skyblue menu-in">
			<li><a  href="index.html">Home</a></li>
			
			<li class="active grid"><a  href="#">Pages</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>SUBMENU1</h4>
								<ul>
									<li><a href="about.html">About</a></li>
									<li><a href="product.html">men</a></li>
									<li><a href="product.html">women</a></li>
									<li><a href="product.html">accessories</a></li>
									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>SUBMENU2</h4>
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
						<div class="col1 col5">
						</div>
						
					</div>
					
    				</div>
				</li>	
		<li ><a  href="404.html">Blog</a></li>				
				<li><a  href="#">Products</a>
				<div class="megapanel">
					<div class="row">
						<div class=" col-nav">
							<div class="h_nav">
								<h4>BEST SELLING</h4>
								<div class="sell">
									<div class="men">
										<a href="product.html"><img src="images/pi.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6>Lorem Ipsum</h6>
										<span>$.60.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="sell">
									<div class="men">
										<a href="product.html"><img src="images/pi11.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6> Dummy Text</h6>
										<span>$.160.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="sell">
									<div class="men">
										<a href="product.html"><img src="images/pi12.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6>Standard Chunk</h6>
										<span>$.80.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
							</div>							
						</div>
						<div class=" col-nav">
							<div class="h_nav">
								<h4>TOP RATE</h4>
								<div class="sell">
									<div class="men">
									<a href="product.html"><img src="images/pi13.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6> Perspiciatis Und</h6>
										<span>$.90.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="sell">
									<div class="men">
										<a href="product.html"><img src="images/pi.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6>Veritatis Et</h6>
										<span>$.60.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
								<div class="sell">
									<div class="men">
										<a href="product.html"><img src="images/pi11.jpg" alt="" ></a>
									</div>
									<div class="men-in">
										<h6>Lorem Ipsum</h6>
										<span>$.100.00</span>
									</div>
									<div class="clearfix"> </div>
								</div>	
							</div>							
						</div>
					</div>
    				</div>
				</li>
				
				<li><a  href="contact.html">Contact</a>
					
				</li>
		 </ul> 
		 <!---->
		 <div class="search-in" >
			<div class="search" >
						<form action="search.html">
							<input type="text" value="Keywords" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Keywords';}" class="text">
							<input type="submit" value="SEARCH">
						</form>
							<div class="close-in"><img src="images/close.png" alt="" /></div>
					</div>
						<div class="right"><button> </button></div>
				</div>
						<script type="text/javascript">
							$('.search').hide();
							$('button').click(function (){
							$('.search').show();
							$('.text').focus();
							}
							);
							$('.close-in').click(function(){
							$('.search').hide();
							});
						</script>

					<!---->
					<div class="cart box_1">
						<a href="checkout.html">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
						<div class="clearfix"> </div>
					</div>

					<!---->
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		</div>
		
	</div>
<!---->
<div class="container">
	<h6 class="dress"><a href="index.html">Home</a> <i> </i> Checkout </h6>
</div>
<div class="back">
	<h2>CHECKOUT</h2>
</div>
		<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-3 product-price">
					  
				
				<!---->
				<div class="product-bottom">
					<div class="of-left-in">
								<h3 class="best">BEST SELLERS</h3>
							</div>
					<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/be.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.html">Lorem ipsum dolor sit
amet consectetuer  </a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/be1.jpg" alt=""></a>
									
								</div>
							<div class="fashion-grid1">
								<h6 class="best2"><a href="single.html">Lorem ipsum dolor sit
amet consectetuer </a></h6>
								
								<span class=" price-in1"> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
						<div class=" fashion-grid">
									<a href="single.html"><img class="img-responsive " src="images/be2.jpg" alt=""></a>
									
								</div>
							<div class=" fashion-grid1">
								<h6 class="best2"><a href="single.html">Lorem ipsum dolor sit
amet consectetuer </a></h6>
								<ul class="star-footer">
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
									<li><a href="#"><i> </i></a></li>
								</ul>
								<span class=" price-in1"><small>$70.00</small> $40.00</span>
							</div>
								
							<div class="clearfix"> </div>
							</div>
				</div>
<div class=" per1">
				<a href="single.html"><img class="img-responsive" src="images/pro.jpg" alt="">
				<div class="six1">
					<h4>DISCOUNT</h4>
					<p>Up to</p>
					<span>60%</span>
				</div></a>
			</div>
				</div>
				<!---->
				<div class="col-md-9 product-price1">
				<div class="check-out">	 
			
		 <div class=" cart-items">
			 <h3>My Shopping Bag (2)</h3>
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			<script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
						$('.cart-header1').fadeOut('slow', function(c){
							$('.cart-header1').remove();
						});
						});	  
					});
			   </script>
				
				  <div class="in-check" >
		  <ul class="unit">
			<li><span>商品图片</span></li>
			<li><span>商品名称</span></li>		
			<li><span>商品单价</span></li>
			<li><span>商品数量</span></li>
			<li><span>操作</span> </li>
			<div class="clearfix"> </div>
		  </ul>
		  <ul class="cart-header">
		   <div class="close1"> </div>
			<li class="ring-in"><a href="single.html" ><img src="${item.itemPic}" class="img-responsive" alt=""></a>
			</li>
			<li><span>${item.itemName}</span></li>
			<li><span>${item.price}</span></li>
			<li><span>${item.buyTime}stock</span></li>
			<li> <a href="single.html" class="add-cart cart-check">ADD TO CART</a></li>
			<div class="clearfix"> </div>
			</ul>
 <ul class=" cart-header1">
		   <div class="close2"> </div>
			<li class="ring-in"><a href="single.html" ><img src="images/f2.jpg" class="img-responsive" alt=""></a>
			</li>
			<li><span>Woo Dress</span></li>
			<li><span>$ 60.00</span></li>
			<li><span>In Stock</span></li>
			<li> <a href="single.html" class="add-cart cart-check">ADD TO CART</a></li>
			<div class="clearfix"> </div>
			</ul>
		</div>
			 </div>
					  
		 </div>
		 

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
			<!---->
				<div class="bottom-grid1">
					
					<div class="fit1">
						<h3>HAPPY SHOPPING</h3>
						<p>Lorem Ipsum sit amet consectuer adipiscing elit
sed diam nonummy nibh euismod</p>
					</div>
				</div>
<!---->
<jsp:include page="../../../footer.jsp"></jsp:include>
<!---->
</body>
</html>