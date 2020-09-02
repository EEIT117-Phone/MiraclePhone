<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shipInfo</title>
<link href="/MiraclePhone/css/shiping.css" rel="stylesheet">
<script src="/MiraclePhone/js/shipInfo.js"></script>
</head>
<body>
	<main role="main">
		<div class="shop-main">
			<h3>Order Information</h3>
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
            <td> 2</td>
            <td><img id='pic2' /></td>
            <td>IphoneX</td>
            <td>125G</td>
            <td>10,000</td>
            <td>2</td>
            <td>20000</td>
          </tr> -->
					<tr class="ship-payment">
						<td></td>
						<td>付款方式:</td>
						<td colspan="2">
							<div class="form-check form-check-inline"
								style="margin-right: 50px;">
								<input class="form-check-input" type="radio"
									name="shipPaymentRadioOptions" id="shipPayment1"
									value="option1"> <label class="form-check-label"
									for="shipPayment1">匯款</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="shipPaymentRadioOptions" id="shipPayment2"
									value="option2"> <label class="form-check-label"
									for="shipPayment2">賣家面交</label>
							</div>
						</td>
						<td colspan="4">
							<div class="form-check form-check-inline row">
								<label for="inputPassword"
									class="ship-text col-sm-3 col-form-label">留言:</label>
								<div class="col-sm-9">
									<textarea class="form-control" id="exampleFormControlTextarea1"></textarea>
								</div>
							</div>
						</td>
					</tr>

					<tr class="ship-method">
						<td></td>
						<td>取貨方式:</td>
						<td colspan="7">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="shipMethodRadioOptions" id="shipMethod1" value="post">
								<label class="form-check-label" for="shipMethod1">郵寄</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="shipMethodRadioOptions" id="shipMethod2" value="face">
								<label class="form-check-label" for="shipMethod2">賣家面交</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="shipMethodRadioOptions" id="shipMethod3" value="711">
								<label class="form-check-label" for="shipMethod3">7-11取貨</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="shipMethodRadioOptions" id="shipMethod4"
									value="familyMart"> <label class="form-check-label"
									for="shipMethod4">全家取貨</label>
							</div>

						</td>
					</tr>

				</tbody>
			</table>
			<div>
				<form class="ship-address">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">縣市</label> <select id="inputCity"
								class="form-control">
								<option selected>臺北市</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">城市</label> <select id="inputState"
								class="form-control">
								<option selected>中正區</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">郵遞區號</label> <input type="text"
								class="form-control" id="inputZip">
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress">地址</label> <input type="text"
							class="form-control" id="inputAddress">
					</div>
			</div>


		</div>
		</form>
		<table class="cart-summary table">

			<tbody>
				<tr>
					<td></td>
					<td>1件商品</td>
					<td>總金額:$10,000</td>
					<td><a href="orderConfirm.html" class="btn btn-primary btn-sm"
						role="button" aria-pressed="true">訂單結帳</a></td>
				</tr>
			</tbody>
		</table>
	</main>
</body>
</html>