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
							<a href="index.action">Amberegul商城</a>
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
	
	   <section id="main">
    <div class="container_12">
       <!-- .sidebar -->
      
       <div id="content" class="grid_9">
	      <h1 class="page_title">商品列表</h1>
	      
	      <div class="options">
		     <div class="grid-list">
			   <a class="grid" href="catalog_grid.html"><span>img</span></a>
			   <a class="list curent" href="index.action"><span>img</span></a>
		     </div><!-- .grid-list -->
		     
		     <div class="show">
			    Show
			    <select class="selectBox" style="display: none; ">
				   <option>1</option>
				   <option>2</option>
				   <option>3</option>
				   <option>4</option>
				   <option>5</option>
				   <option>6</option>
				   <option>7</option>
				   <option>8</option>
				   <option>9</option>
				   <option>10</option>
				   <option>11</option>
				   <option>12</option>
			     </select><a class="selectBox selectBox-dropdown" style="display: inline-block; " title="" tabindex="0"><span class="selectBox-label">1</span><span class="selectBox-arrow"></span></a>
			    
			    per page
		     </div><!-- .show -->
		     
		     <div class="sort">
			   Sort By
			    <select class="selectBox" style="display: none; ">
				   <option>Position</option>
				   <option>Price</option>
				   <option>Rating</option>
				   <option>Name</option>
			     </select><a class="selectBox selectBox-dropdown" style="display: inline-block; " title="" tabindex="0"><span class="selectBox-label">Position</span><span class="selectBox-arrow"></span></a>
			    
			    <a class="sort_up" href="#">↑</a>
		     </div><!-- .sort -->
	      </div><!-- .options -->
	      
	      
	      <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">

  <script src="js/html5.js"></script>
  <script src="js/jflow.plus.js"></script>
  <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>

  <script>
	$(document).ready(function(){
	    $("#myController").jFlow({
			controller: ".control", // must be class, use . sign
			slideWrapper : "#jFlowSlider", // must be id, use # sign
			slides: "#slider",  // the div where all your sliding divs are nested in
			selectedWrapper: "jFlowSelected",  // just pure text, no sign
			width: "984px",  // this is the width for the content-slider
			height: "480px",  // this is the height for the content-slider
			duration: 400,  // time in miliseconds to transition one slide
			prev: ".slidprev", // must be class, use . sign
			next: ".slidnext", // must be class, use . sign
			auto: true
    });
  });
  </script>
  <script>
	$(function() {
	  $('#list_product').carouFredSel({
		prev: '#prev_c1',
		next: '#next_c1',
		auto: false
	  });
          $('#list_product2').carouFredSel({
		prev: '#prev_c2',
		next: '#next_c2',
		auto: false
	  });
	  $(window).resize();
	});
  </script>
  <script>
       $(document).ready(function(){
	      $("button").click(function(){
		     $(this).addClass('click')
	      });
       })
  </script>
 <script>
	$(function() {
		var paths = $(".itemPic");
		for (var i = 0;i<paths.length;i++){
			var path = paths.attr("src");
			var newPath = path.substr(0,path.length);
			paths.attr("src",newPath);
		}
	});
  </script>
	      
	      <!-- 列表 -->
	      <s:iterator value="nlist">
	      <div class="listing_product">
			<div class="product_li">
				<div class="grid_3">
					<img class="sale" src="images/new.png" alt="New">
					<div class="prev">
						<a href="product_page.html"><img src="${itemPic}" alt="" title=""></a>
					</div><!-- .prev -->
				</div><!-- .grid_3 -->
				
				<div class="grid_4">
					<div class="entry_content">
						<a href="showsingleitem.action?id=${id}"><h3 class="title">${itemName}</h3></a>
						<div class="review">
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a class="plus" href="#"></a>
							<a href="#"></a>
							<a href="#"></a>
							<span>1 REVIEW(S)</span>
						</div>
						<p>${itemDesc}</p>
						
					</div><!-- .entry_content -->
				</div><!-- .grid_4 -->
				
				<div class="grid_2">
					<div class="cart">
						<div class="price">
							<div class="price_new">￥${price}</div>
							<div class="price_old"><s>$725.00</s></div>
						</div>
						<a href="addcart.action?itemId=${id}&itemName=${itemName}" class="bay">加入购物车</a>
						<a class="more" href="showsingleitem.action?id=${id}">详细浏览</a>
						<a href="#" class="obn"></a>
						<a href="#" class="like"></a>
					</div><!-- .cart -->
				</div><!-- .grid_2 -->
				
				<div class="clear"></div>
			</div><!-- .article -->	    
	      <div class="clear"></div>
	      </div><!-- .listing_product -->
	      <div class="clear"></div>
	      </s:iterator>
	      
	      <div class="pagination">
		     <ul>
						<li><a href="product?curPage=1">首页</a></li>
						<li><a href="product?curPage=${curPage-1}">上一页</a></li>
						<li><a href="product?curPage=${curPage+1}">下一页</a></li>
						<li><a href="product?curPage=${totalPage}">尾页</a></li> 
						<li>共${totalPage}页数
						当前${curPage}页</li>
					</ul>
	      </div><!-- .pagination -->
	      <p class="pagination_info">Displaying 1 to 12 (of 100 products)</p>
       </div><!-- #content -->
       
      <div class="clear"></div>
      
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
</body>  