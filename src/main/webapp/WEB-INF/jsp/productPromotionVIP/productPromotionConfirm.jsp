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

<h2>您已刊登成功</h2>

<h4>您的手機資訊</h4>
			<div>
				<p>手機型號:${product.phoneType.label}</p>
				<p>容量:${product.storage.label}</p>
				<p>顏色:${product.color.label}</p>
				<p>機況:${product.phoneCondition}</p>
				<p>保固:${product.phoneWarranty}</p>
				<p>種類:${product.phoneSort}</p>
				<p>出廠日期:${product.yearOfManufacture}</p>
				<p>販售原因:${product.sellReason}</p>
				<p>刊登日期:${product.ad_date}</p>
				<p>下架日期:${product.expiry_date}</p>
				<p>你的商品刊登等級:${product.vip}</p>
				<a href="<c:url value='/index'/>">
				
				<input type="button" value="回到首頁" >
				
				</a>
			</div>


	
</body>
</html>