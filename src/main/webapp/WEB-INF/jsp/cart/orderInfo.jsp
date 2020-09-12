<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>shipInfo</title>
<link href="<c:url value='/css/shiping.css' />" rel="stylesheet">
<script src="<c:url value='/js/jquery.twzipcode.min.js' />"></script>
<script src="<c:url value='/js/cart.js' />"></script>
<script src="<c:url value='/js/shipInfo.js' />"></script>

</head>
<body>
	<main role="main">
		<div class="shop-main">
			<form:form servletRelativeAction="/cart/orderConfirm" method="POST"
				enctype="application/x-www-form-urlencoded" modelAttribute="orderInfo"
				>

				<h3>Order Information</h3>
				<table class="cart-header table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">商品</th>
							<th scope="col">容量</th>
							<th scope="col">顏色</th>
							<th scope="col">數量</th>
							<th scope="col">總計</th>
						</tr>
					</thead>

				</table>

				<table class="cart-main table">
					<c:forEach varStatus="status" var="product" items="${cartItem}">
						<thead class="thead-light">
							<tr>
								<th scope="col" colspan="8">賣家 : ${product.account}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${status.count}</td>
								<td><img src="<c:url value='/fs/img/${product.pic1}' />" border=0 width=100px /></td>
								<td>${product.phoneType.label}</td>
								<td>${product.storage.label}</td>
								<td>${product.color.label}</td>
								<td>1</td>
								<td id=money${status.count}>${product.amount}</td>

							</tr>
					</c:forEach>

					<tr class="ship-payment">
						<td></td>
						<td>付款方式:</td>
						<td colspan="2">
						<div>
							<form:radiobutton class="payInfo-form form-check-inline" path="payInfo" value="匯款" label="匯款"/>
							<form:radiobutton class="payInfo-form form-check-inline" path="payInfo" value="賣家面交" label="賣家面交"/>
						</div>
						</td>
						<td colspan="4">
							<div class="form-check form-check-inline row">
								<div class="col-sm-9">
									<form:textarea path="orderContext" rows="2" cols="30" placeholder="留言:"/>
								</div>
							</div>
						</td>
					</tr>

					<tr class="ship-method">
						<td></td>
						<td>取貨方式:</td>
						<td colspan="7">
						<form:radiobutton class="form-check form-check-inline" path="shipInfo" value="郵寄" label="郵寄"/>
						<form:radiobutton class="form-check form-check-inline" path="shipInfo" value="賣家面交" label="賣家面交"/>
						<form:radiobutton class="form-check form-check-inline" path="shipInfo" value="7-11取貨" label="7-11取貨"/>
						<form:radiobutton class="form-check form-check-inline" path="shipInfo" value="全家取貨" label="全家取貨"/>
<!-- 							<div class="form-check form-check-inline"> -->
<!-- 								<input class="form-check-input" type="radio" -->
<!-- 									name="shipMethodRadioOptions" id="shipMethod1" value="post"> -->
<!-- 								<label class="form-check-label" for="shipMethod1">郵寄</label> -->
<!-- 							</div> -->
<!-- 							<div class="form-check form-check-inline"> -->
<!-- 								<input class="form-check-input" type="radio" -->
<!-- 									name="shipMethodRadioOptions" id="shipMethod2" value="face"> -->
<!-- 								<label class="form-check-label" for="shipMethod2">賣家面交</label> -->
<!-- 							</div> -->
<!-- 							<div class="form-check form-check-inline"> -->
<!-- 								<input class="form-check-input" type="radio" -->
<!-- 									name="shipMethodRadioOptions" id="shipMethod3" value="711"> -->
<!-- 								<label class="form-check-label" for="shipMethod3">7-11取貨</label> -->
<!-- 							</div> -->
<!-- 							<div class="form-check form-check-inline"> -->
<!-- 								<input class="form-check-input" type="radio" -->
<!-- 									name="shipMethodRadioOptions" id="shipMethod4" -->
<!-- 									value="familyMart"> <label class="form-check-label" -->
<!-- 									for="shipMethod4">全家取貨</label> -->
<!-- 							</div> -->

						</td>
					</tr>

					</tbody>
				</table>
				
<!-- 						<div class="form-row"> -->
<!-- 							<div class="form-group col-md-6"> -->
<!-- 								<label for="inputCity">縣市</label> <select id="inputCity" -->
<!-- 									class="form-control"> -->
<!-- 									<option selected>臺北市</option> -->
<!-- 									<option>...</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 							<div class="form-group col-md-4"> -->
<!-- 								<label for="inputState">城市</label> <select id="inputState" -->
<!-- 									class="form-control"> -->
<!-- 									<option selected>中正區</option> -->
<!-- 									<option>...</option> -->
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 							<div class="form-group col-md-2"> -->
<!-- 								<label for="inputZip">郵遞區號</label> <input type="text" -->
<!-- 									class="form-control" id="inputZip"> -->
<!-- 							</div> -->
<!-- 						</div> -->
				<div class="ship-address">
						<div class="form-group">
							<div id="twzipcode"></div>
							<label for="inputAddress">地址</label>
							<form:textarea path="shipAddress" rows="1" id="address" class="form-control"/>
						</div>

				</div>

		<table class="cart-summary table">

			<tbody>
				<tr>
					<td></td>
					<td>${cart.size()}件商品</td>
					<td id=totalAmount>總金額:$</td>
					<td><input type="submit" class="btn btn-primary" value="送出訂單" /></td>
<!-- 					<td><a href="/MiraclePhone/cart/orderConfirm" -->
<!-- 						class="btn btn-primary btn-sm" role="button" aria-pressed="true">訂單結帳</a></td> -->
				</tr>
			</tbody>
		</table>
			</form:form>
		</div>
	</main>
</body>

</html>