<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>shipInfo</title>
<link href="<c:url value='/css/orderInfo.css' />" rel="stylesheet">
<script src="<c:url value='/js/jquery.twzipcode.min.js' />"></script>
<script src="<c:url value='/js/cart.js' />"></script>
<script src="<c:url value='/js/orderInfo.js' />"></script>

</head>
<body>
	<main role="main">
		<div class="shop-main">
			<form:form servletRelativeAction="/cart/orderConfirm" method="POST"
				enctype="application/x-www-form-urlencoded" modelAttribute="orderInfo">

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
					<c:forEach varStatus="status" var="entry" items="${cartItems}">
						<thead class="thead-light">
							<tr>
								<th scope="col" colspan="8">賣家 : ${entry.account}</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach varStatus="status" var="product" items="${entry.productVos}">
 							<tr class = "product"> 
 								<td>${status.count}</td>
 								<td><img src="<c:url value='/fs/img/${product.pic1}' />" border=0 width=100px /></td>
 								<td>${product.phoneType.label}</td>
 								<td>${product.storage.label}</td>
 								<td>${product.color.label}</td>
 								<td>1</td>
 								<td><fmt:formatNumber value="${product.amount}" type="number"/><span class="sum">${product.amount}</span></td>
  								
 							</tr> 
 							</c:forEach>
<%--							<tr class="ship-payment">
								<td></td>
								<td>付款方式:</td>
 								<td colspan="3">
									<div>
 										<c:forEach varStatus="status" var="payInfo" items="${entry.payInfo}"> 
 										<form:radiobutton class="payInfo-form form-check-inline" path="payInfo" value="${payInfo}" label="${payInfo}"/> 
											<form:radiobuttons class="payInfo-form form-check-inline" items="${entry.payInfo}" path="payInfo"/>
 										</c:forEach>
									</div>
								</td>
								<td colspan="2">
									<div class="form-check form-check-inline row">
										<div class="col-sm-9">
											<form:textarea path="orderContext" placeholder="留言:"/>
										</div>
									</div>
								</td>
							</tr>--%>
							<tr class="ship-method">
								<td></td>
								<td>寄送方式:</td>
								<td colspan="5">
									<c:forEach varStatus="status" var="shipInfo" items="${entry.shipInfo}">
									<form:radiobutton class="form-check form-check-inline" path="shipInfo" value="${shipInfo}" label="${shipInfo}"/>
									</c:forEach>
									<div class="ship-address">
										<div class="form-group">
											<div id="twzipcode"></div>
											<label for="inputAddress">地址</label>
											<form:textarea path="shipAddress" rows="1" id="address" class="form-control"/>
										</div>
									</div>
								</td>
							</tr>
							<tr class="ship-method">
								<td></td>
								<td>留言:</td>
								<td colspan="5">
									<div class="form-check form-check-inline row">
										<form:textarea path="orderContext" cols="80"/>
									</div>
								</td>
							</tr>
						</tbody>
					


				</c:forEach>	
				</table>
				

				

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