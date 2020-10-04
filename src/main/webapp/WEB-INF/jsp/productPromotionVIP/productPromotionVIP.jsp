<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>銷售奇機-賣家刊登方案</title>


<script src="<c:url value='js/productPromotionVIP.js'/>"></script>
<link href="<c:url value='css/productPromotionVIP.css' />"
	rel="stylesheet">






</head>
<body>
	<form id="bigframe"
		action="<c:url value='/productPromotionVIP/greenPay.controller' />"
		method="post">
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">刊登方案</th>
					<th scope="col">刊登費用</th>
					<th scope="col">首頁精選推薦</th>
					<th scope="col">精選輪播</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row"><input id="normalone" type="radio"
						name="promotecase" value="normal 30 上架中 普通方案一個月 200"
						required="required"> 普通方案一個月</th>
					<td>200</td>
					<td>✘</td>
					<td>✘</td>
				</tr>
				<tr>
					<th scope="row"><input id="normalthree" type="radio"
						name="promotecase" value="normal 90 上架中 普通方案三個月 500"
						required="required">普通方案三個月</th>
					<td>500</td>
					<td>✘</td>
					<td>✘</td>
				</tr>
				<tr>
					<th scope="row"><input id="vipone" type="radio"
						name="promotecase" value="VIP 30 上架中 VIP方案一個月 400"
						required="required"> VIP方案一個月</th>
					<td>400</td>
					<td>✔</td>
					<td>✔</td>
				</tr>

				<tr>
					<th scope="row"><input id="vipthree" type="radio"
						name="promotecase" value="VIP 90 上架中 VIP三個月 1000"
						required="required" CHECKED>VIP方案三個月</th>
					<td>1000</td>
					<td>✔</td>
					<td>✔</td>
				</tr>
			</tbody>
		</table>

		<div id="button">
			<input class="btn btn-primary " type="submit" value="確認結帳"> <a
				href="<c:url value='/product'/>">
				<input
				class="btn btn-primary " type="button" value="回上一頁"></a>

		</div>
	</form>








</body>
</html>