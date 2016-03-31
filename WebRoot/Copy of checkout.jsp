<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="header.jsp"></jsp:include>
  <link href="css/style.css" media="screen" rel="stylesheet" type="text/css">
  <link href="css/grid.css" media="screen" rel="stylesheet" type="text/css">
  <script src="js/html5.js" ></script>
  <script src="js/jflow.plus.js" ></script>
  <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>

<div class="container">
	<h6 class="dress"><a href="index.html">Home</a> <i> </i> Checkout </h6>
</div>
<style>
.grid_12 tbody{
	margin:0 25px;
	padding:0 60px;
}
</style>
<div class="grid_12">
       <h1 class="page_title">Shopping Cart</h1>

       <table class="cart_product">
	      <tbody><tr>
		     <th class="images"></th>
		     <th class="bg name">Product Name</th>
		     <th class="edit"> </th>
		     <th class="bg price">Unit Price</th>
		     <th class="qty">Qty</th>
		     <th class="bg subtotal">Subtotal</th>
		     <th class="close"> </th>
	      </tr>
	      <tr>
		     <td class="images"><a href="product_page.html"><img src="images/product_6.png" alt="Product 6"></a></td>
		     <td class="bg name">Paddywax Fragrance Diffuser Set, Gardenia Tuberose,<br> Jasmine, 4-Ounces</td>
		     <td class="edit"><a title="Edit" href="#">Edit</a></td>
		     <td class="bg price">$75.00</td>
		     <td class="qty"><input type="text" name="" value="" placeholder="1000"></td>
		     <td class="bg subtotal">$750.00</td>
		     <td class="close"><a title="close" class="close" href="#"></a></td>
	      </tr>
	      <tr>
		     <td class="images"><a href="product_page.html"><img src="images/produkt_slid1.png" alt="Product Slide 1"></a></td>
		     <td class="bg name">California Scents Spillproof Organic Air Fresheners,<br> Coronado Cherry, 1.5 Ounce Cannister</td>
		     <td class="edit"><a title="Edit" href="#">Edit</a></td>
		     <td class="bg price">$75.00</td>
		     <td class="qty"><input type="text" name="" value="" placeholder="1000"></td>
		     <td class="bg subtotal">$750.00</td>
		     <td class="close">删除<a title="close" class="close" href="#"></a></td>
	      </tr>
	      <tr>
		     <td colspan="7" class="cart_but">
			    <button class="continue"><span>icon</span>Continue Shopping</button>
			    <button class="update"><span>icon</span>Update Shopping Cart</button>
		     </td>
	      </tr>
       </tbody>
	  </table>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<!---->
</body>
</html>