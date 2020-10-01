<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<title>orderHistory</title>
<link href="<c:url value='/css/orderHistory.css' />" rel="stylesheet">
<script src="<c:url value='/js/orderHistory.js' />"></script>
</head>
<body>

	<table class="table table-striped">
	
		<thead>
			<tr>
				<th scope="col">圖片</th>
				<th scope="col">手機名稱</th>
				<th scope="col">手機容量</th>
				<th scope="col">手機顏色</th>

			</tr>
		</thead>
		
		<c:forEach varStatus="status" var="product" items="${productSet}">
			<tbody>
				<tr>
					<th scope="row"><a href="<c:url value='/buyer?productId=${product.productId}' />"> 
							<img
							src="<c:url value='/fs/img/${product.pic2}' />" class="img1"
							id="myImg" width="80" height="70">
					</a></th>
					<td>${product.phoneType.label}</td>
					<td>${product.storage.label}</td>
					<td>${product.color.label}</td>
				</tr>
	
			</tbody>
		</c:forEach>

	</table>
	
	


</body>


</html>