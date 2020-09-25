<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>銷售奇機-賣家刊登方案</title>


<script src="<c:url value='js/productPromotionVIP.js'/>" ></script>
<link href="<c:url value='css/productPromotionVIP.css' />" rel="stylesheet">



</head>
<body>
<center>

<h2>您已刊登成功</h2>

<h4>您的手機資訊</h4>
			<div>
				<p>手機型號:${product.phoneType.label}</p>
				<p>刊登日期:${product.ad_date}</p>
				<p>下架日期:${product.expiry_date}</p>
				<p>你的商品刊登等級:${product.vip}</p>
				<a href="<c:url value='/index'/>">
				
				
				
				
				<input type="button" value="回到首頁" class="btn btn-primary " >
				
				<a href="<c:url value='/buyer?productId=${product.productId}' />" >
				<input type="button" value="前往商品頁面" class="btn btn-primary " >
				</a>
				
				
			</div>


	</center>
</body>
</html>