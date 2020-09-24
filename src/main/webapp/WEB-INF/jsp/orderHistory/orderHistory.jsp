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





	<%-- 	    <c:forEach  var="odif" items="${odif}"> --%>

	<%-- 	    ${odif.date} --%>
	<%-- 	    </c:forEach> --%>



	<table class="table table-striped">



		<thead>
			<tr>
				<th scope="col">圖片</th>
				<th scope="col">產品名稱</th>
				<th scope="col">購買日期</th>
				<th scope="col">訂單編號</th>

			</tr>
		</thead>


<%-- 		<c:forEach varStatus="status" var="pdf" items="${pdf}"> --%>
<%-- 			<p>${pdf.phoneSort}</p> --%>
			
<%-- 			<img src="<c:url value='/fs/img/${pdf.pic1}' />" class="img1" id="myImg">   --%>
<%-- 		</c:forEach>  --%>
<!-- 		純測試 -->




		<c:forEach varStatus="status" var="odif" items="${odif}">


			<tbody>

				<tr>
					<th scope="row"><a href="http://www.pchome.com.tw"> 
<%-- 							<img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" --%>
<!-- 							title="你的商品" width="80" height="70"> -->

  <img src="<c:url value='/fs/img/${odif.pic1}' />" class="img1" id="myImg" width="80" height="70">  
<!-- 只要有pdf的就容易有問題 我把pdf的啟用 有時會顯示不出圖片 大部分是連網頁都跑不出來 -->
					</a></th>
				
					<td>${odif.phoneType.label}</td>
					<td>${odif.date}</td>
					<td>${odif.orderId}</td>
			
				</tr>

				<!--           <tr> -->
				<!--             <th scope="row"><a href="http://www.pchome.com.tw" > -->
				<%--                <img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" title="你的商品" --%>
				<!--               width="80" height="70"> </a></th> -->
				<!--             <td>哀鳳2</td> -->
				<!--             <td>2020/10/08</td> -->
				<!--             <td>123456789</td> -->

				<!--           </tr> -->
				<!--           <tr> -->
				<!--             <th scope="row"><a href="http://www.pchome.com.tw" > -->
				<%--                <img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" title="你的商品" --%>
				<!--               width="80" height="70"> </a></th> -->
				<!--             <td>哀鳳3</td> -->
				<!--             <td>2020/10/08</td> -->
				<!--             <td>123456789</td> -->

				<!--           </tr> -->
			</tbody>
		</c:forEach>
	
	</table>


</body>


</html>