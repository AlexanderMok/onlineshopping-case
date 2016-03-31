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

<title>订单提交成功</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" src="js/modernizr.min.js"></script>
</head>
<body>
<form action="" method="post">
	<!-- //收货人信息 -->
	<!-- 购物车商品信息 -->
	<input type="hidden" name="buyType" value="2" />
	<input type="hidden" name="allCartIdStr" />

	<div class="order-list ">
		<table>
			<tbody>
				<tr>
					<td class="cell-1"><label>商品订单</label></td>
					<td class="cell-2">
						<table class="goods">
							<tbody>
								<tr>
									<th class="infor">商品信息</th>
									<th class="color-suits">颜色套装</th>
									<th class="saletype">销售类型</th>
									<th class="price">单价</th>
									<th class="agio">优惠</th>
									<th class="amount">数量</th>
									<th class="total">总价</th>
								</tr>
								<c:forEach items="${sessioncart}" var="g" varStatus="vs">
									<tr>
										<td class="infor"><a href="show.action?id=${item.id}"
											target="_blank" class="pic"> <img width="60" height="60"
												src="${item.itemPic}" alt="${item.itemName}" /></a>
											<h3 class="title">
												<a href="show.action?id=${item.id}" target="_blank">
													${item.itemName}</a>
											</h3></td>

										<td class='color-suits'>-</td>

										<td class="saletype">-</td>

										<td class="price">&yen;${item.price}</td>
										<td class="agio"><span class="agio-limit">限时：优惠20元</span></td>
										<td class="amount">1</td>
										<td class="total">&yen;${item.price * item.buyTotal}</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
						<div class="order-foot clearfix">
							<div class="store-infor">
								<span class="name">店铺:<a href="goods.do/">某东商城</a>
								</span> <a class="tag-security">z保障+</a>
							</div>
							<div class="delivery">
								<div class="payment">
									<select name="payType-191063" onchange="$.changeShipping()"
										id="payType-191063">
										<option value="1" selected>货到付款</option>
										<option value="2" selected>网上支付</option>
									</select> <span>支付方式：</span>
								</div>
								<div class="express">
									<select name="shipping-191063" onchange="$.changeShipping()"
										id="shipping-191063">
										<option value="88" selected>免运费：0元</option>
									</select> <span>到 <em id="sendArea-191063">北京
											朝阳区&nbsp;&nbsp;</em>配送方式：普通快递
									</span>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //购物车商品信息 -->
	<!-- 订单备注 -->
	<div class="order-note">
		<table>
			<tr>
				<td class="cell-1">订单备注</td>
				<td class="cell-2"><textarea name="buyer-note-191063" id="orderNote" fn="limit" limit="200" tipsId="haveFonts"  onfocus="if(this.value=='您可以填写对商品、配送的要求...') this.value='';this.style.color='#333'" onblur="if(this.value=='') {this.value='您可以填写对商品、配送的要求...';this.style.color='#999999'}" style="color:#999999;">您可以填写对商品、配送的要求...</textarea><span><em id="haveFonts">0</em>/200</span></td>
				<td class="cell-3">
					<ul class="total-price">
						<li><span>商品总价：</span><em id="goods-total-price">&yen;103</em></li>
						<li><span>运费：</span><em id="goods-freight-price">&yen;0</em></li>
						<li><span>订单总计：</span><em class="total" id="total-price">&yen;103</em></li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<!-- //订单备注 -->
	<!-- 提交订单 -->
	<div class="submit-order clearfix">
                <a href="#" class="submit-return">返回修改购物车</a>
                <input class="submit-btn" name="confirmOrder" type="submit" value="提交订单"/>
		<div class="submit-loading" style="display:none;">提交中...</div>
		<div class="fail-submit" style='display:none;cursor: not-allowed' title='填写错误，不能提交订单'>不能提交订单</div>
        	</div>
  </form>
	<!-- //提交订单 -->
	
</body>
</html>