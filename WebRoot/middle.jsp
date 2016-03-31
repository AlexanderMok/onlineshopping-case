<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

</head>
<body>

<section id="main" class="home">
    <div class="container_12">
      <!-- #top_button -->

      <div class="clear"></div>

      <div class="carousel">
        <div class="c_header">
          <div class="grid_10">
            <h2>电子类商品</h2>
          </div><!-- .grid_10 -->

          <div class="grid_2">
            <a id="next_c1" class="next arows" href="#" style="display: block; "><span>Next</span></a>
            <a id="prev_c1" class="prev arows" href="#" style="display: block; "><span>Prev</span></a>
           </div><!-- .grid_2 -->
        </div><!-- .c_header -->

        <div class="list_carousel">

        <div class="caroufredsel_wrapper" style="float: none; top: auto; right: auto; bottom: auto; left: auto; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow-x: hidden; overflow-y: hidden; position: relative; width: 1008px; height: 320px; "><ul id="list_product" class="list_product" style="float: none; position: absolute; top: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; width: 3528px; height: 320px; left: 0px; ">

          <s:iterator value="list">
          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale">
              <div class="prev">
                <a href="showsingleitem.action?id=${id}" target="_blank"><img src="${itemPic}" alt="" title="" class="itemPic"></a>
              </div><!-- .prev -->
              <h3 class="title">${itemName}</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">${price}</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>
          </s:iterator>
         </ul></div><!-- #list_product -->
        </div><!-- .list_carousel -->
      </div><!-- .carousel -->



      <div class="carousel">
        <div class="c_header">
          <div class="grid_10">
            <h2>最新到埠</h2>
          </div><!-- .grid_10 -->

          <div class="grid_2">
            <a id="next_c2" class="next arows" href="#" style="display: block; "><span>Next</span></a>
            <a id="prev_c2" class="prev arows" href="#" style="display: block; "><span>Prev</span></a>
          </div><!-- .grid_2 -->
        </div><!-- .c_header -->

        <div class="list_carousel">
        <div class="caroufredsel_wrapper" style="float: none; top: auto; right: auto; bottom: auto; left: auto; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; overflow-x: hidden; overflow-y: hidden; position: relative; width: 1008px; height: 320px; "><ul id="list_product2" class="list_product" style="float: none; position: absolute; top: 0px; left: 0px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; width: 3528px; height: 320px; ">
          <s:iterator value="list">
          <li class="">
            <div class="grid_3 product">
              <img class="sale" src="images/sale.png" alt="Sale">
              <div class="prev">
                <a href="showsingleitem.action?id=${id}" target="_blank"><img src="images/product_5.png" alt="" title="" class="itemPic"></a>
              </div><!-- .prev -->
              <h3 class="title">${itemName}</h3>
              <div class="cart">
                <div class="price">
                <div class="vert">
                  <div class="price_new">${price}</div>
                  <div class="price_old">$725.00</div>
                </div>
                </div>
                <a href="#" class="obn"></a>
                <a href="#" class="like"></a>
                <a href="#" class="bay"></a>
              </div><!-- .cart -->
            </div><!-- .grid_3 -->
          </li>
          </s:iterator>

        </ul></div><!-- #list_product2 -->
        </div><!-- .list_carousel -->
      </div><!-- .carousel -->

      <!-- #content_bottom -->
      <div class="clear"></div>

    </div><!-- .container_12 -->
  </section>