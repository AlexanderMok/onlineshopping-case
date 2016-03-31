<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="footer">
	<div class="container">
		<div class="col-md-4 footer-top">
			<h3>QUICK CONTACT</h3>
			<form>

				<input value="ENTER YOUR NAME*" onfocus="this.value='';"
					onblur="if (this.value == '') {this.value ='ENTER YOUR NAME*';}"
					type="text"> <input value="ENTER YOUR EMAIL*"
					onfocus="this.value='';"
					onblur="if (this.value == '') {this.value ='ENTER YOUR EMAIL*';}"
					type="text"> <input value="ENTER YOUR PHONE"
					onfocus="this.value='';"
					onblur="if (this.value == '') {this.value ='ENTER YOUR PHONE';}"
					type="text">

				<textarea cols="77" rows="6" value="" onfocus="this.value='';"
					onblur="if (this.value == '') {this.value = 'ENTER YOUR MESSAGE*';}">ENTER YOUR MESSAGE*</textarea>

				<input value="SEND MESSAGE" type="submit">

			</form>

		</div>
		<div class="col-md-4 footer-middle">
			<h3>TOP RATED PRODUCTS</h3>
			<div class="product-go">
				<div class="grid-product">
					<h6>
						<a href="#">Winter Combo Style</a>
					</h6>
					<ul class="star-footer">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
					</ul>
					<span class=" price-in"><small>$70.00</small> $40.00</span>
				</div>
				<div class="fashion">
					<a href="#"><img class="img-responsive " src="images/f1.jpg"
						alt="">
						<p>SALE</p></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="product-go">
				<div class="grid-product">
					<h6>
						<a href="#">Winter Combo Style</a>
					</h6>
					<ul class="star-footer">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
					</ul>
					<span class=" price-in"><small>$70.00</small> $40.00</span>
				</div>
				<div class="fashion">
					<a href="#"><img class="img-responsive " src="images/f2.jpg"
						alt="">
						<p class="new1">NEW</p></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="product-go">
				<div class="grid-product">
					<h6>
						<a href="#">Winter Combo Style</a>
					</h6>
					<ul class="star-footer">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i> </i></a></li>
					</ul>
					<span class=" price-in"><small>$70.00</small> $40.00</span>
				</div>
				<div class="fashion">
					<a href="#"><img class="img-responsive " src="images/f3.jpg"
						alt="">
						<p class="new1">NEW</p></a>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>
		<div class="col-md-4 footer-bottom">
			<div class="logo-footer">
				<div class="logo-bottom">
					<a href="#"><img src="images/lo.png" alt=""></a>
				</div>
				<div class="logo-the">
					<h4>Amberegul Theme</h4>
					<p>Was designed for opencart, magento, woocommerce and
						prestashop platforms. It is based on Bootstrap.</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="indo">
				<p class="in">
					Bandung, Indonesia <span>40553</span>
				</p>
				<ul class="social-footer ">
					<li><span><i> </i>+62 226759804 </span></li>
					<li><span><i class="down"> </i>blithemes</span></li>
					<li><a href="mailto:info@example.com"><i class="mes">
						</i>info@example.com</a></li>
					<li><a href="#"><i class="mes-in"> </i>fgfgf</a></li>
				</ul>
				<a href="#"><img src="images/pa.png" alt=""></a>
			</div>
		</div>
		<div class="clearfix"></div>
		<p class="footer-class">Copyright © 2015.Company name All rights
			reserved.</p>
	</div>
</div>	