<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderConfirm</title>
<jsp:include page="/WEB-INF/jsp/template/common.jsp"></jsp:include>
<link href="/MiraclePhone/css/orderConfirm.css" rel="stylesheet">
<script src="/MiraclePhone/js/orderConfirm.js"></script>
</head>
<body>
	<!--     共用表頭匯入     -->
	<jsp:include page="/WEB-INF/jsp/template/header.jsp"></jsp:include>
	<!--     content     -->

	<main role="main">
		<div class="shop-main">
			<h3>Order Confirmation</h3>
			<h3>您已訂購成功!</h3>
			<table class="cart-header table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">商品</th>
						<th scope="col">規格</th>
						<th scope="col">單價</th>
						<th scope="col">數量</th>
						<th scope="col">總計</th>
					</tr>
				</thead>

			</table>

			<table class="cart-main table">
				<thead class="thead-light">
					<tr>
						<th scope="col" colspan="8">賣家1</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><img id='pic1' /></td>
						<td>IphoneX</td>
						<td>125G</td>
						<td>10,000</td>
						<td>1</td>
						<td>10000</td>
					</tr>
					<!-- <tr>
            <td>2</td>
            <td><img id='pic2' /></td>
            <td>IphoneX</td>
            <td>125G</td>
            <td>10,000</td>
            <td>2</td>
            <td>20000</td>
          </tr> -->
					<tr class="ship-payment">
						<td></td>
						<td>付款資訊:</td>
						<td colspan="5">
							<div class="payment">匯款帳號：12345678</div>
							<div></div>
						</td>
					</tr>

					<tr class="ship-method">
						<td></td>
						<td>取貨資訊:</td>
						<td colspan="5">
							<div class="shipMethod">請與賣家聊聊，約定取貨地點</div>
						</td>
					</tr>

				</tbody>
			</table>
			<table class="cart-summary table">

				<tbody>
					<tr>
						<td></td>
						<td>1件商品</td>
						<td>總金額:$10,000</td>
					</tr>
				</tbody>
			</table>
		</div>

	</main>
	<!--     共用頁尾匯入     -->
	<jsp:include page="/WEB-INF/jsp/template/footer.jsp"></jsp:include>
</body>
</html>