<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<title>Cart</title>
<link href="<c:url value='/css/cart.css' />" rel="stylesheet">
<script src="<c:url value='/js/cart.js' />"></script>
</head>

<body>
	<main role="main">
		<div class="shop-main">
			<form action = "/MiraclePhone/cart/orderInfo" method="get">
			<h3>Shopping List</h3>
				<table class="cart-header table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">商品</th>
							<th scope="col">容量</th>
							<th scope="col">顏色</th>
							<th scope="col">數量</th>
							<th scope="col">總計</th>
							<th scope="col">操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
						<td>${message}</td>
						</tr>
					</tbody>
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
								<td>
									<!--               <input type='hidden' name='deleteProduct' value=${order.productId}/> -->
									<input type="submit" class="cart-delete btn btn-secondary btn-sm" name = "deleteId" value="${product.productId}">刪除
									<input type="button" class="btn btn-primary" value="刪除" onclick="javascript: location.href = '<c:url value='/cart?deleteId=${product.productId}' />'"/>
								</td>
							</tr>
					</c:forEach>
					</tbody>
				</table>
				<table class="cart-summary table">

					<tbody>
						<tr>
							<td></td>
							<td>${cart.size()}件商品</td>
							<td id=totalAmount></td>
							<td><input type="submit" class="btn btn-primary btn-sm" value="送出訂單"/></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</main>


</body>

</html>