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
<div id = bigframe>
	<table class="table table-striped">
	
		<thead>
			<tr>
				<th scope="col">圖片</th>
				<th scope="col">指示</th>
				<th scope="col">購買日期</th>
				<th scope="col">訂單編號</th>

			</tr>
		</thead>
		
		<c:forEach varStatus="status" var="odif" items="${odif}">
			<tbody>
				<tr>
					<th scope="row"><a href="<c:url value='/orderHistory/orderDetails/${status.index}' />"> 
							<img
							src="<c:url value='/fs/img/${odif.pic1}' />" class="img1"
							id="myImg" width="70" height="70">
					</a></th>
					<td>點擊左側圖片查看訂單細節</td>
					<td>${odif.date}</td>
					<td>${odif.orderId}</td>
					
				</tr>
	
			</tbody>
			
		</c:forEach>

	</table>
	
	</div>


</body>


</html>