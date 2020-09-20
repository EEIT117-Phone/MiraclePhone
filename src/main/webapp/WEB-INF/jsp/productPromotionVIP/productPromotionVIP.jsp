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
	<h4 id="test">您的手機在VIP方案於每次收尋結果置頂並輪播，且在首頁可以透過精選推薦快速被買家收尋到</h4>
	

	<div id="bigframe">
		<P id="headh2">
		<h2>選擇刊登方案</h2>
	
		<form action="<c:url value='/productPromotionVIP/pay' />" method="post">
			<div id="collection">


				<div id="commoncase">
					<input id="normalone" type="radio" name="promotecase" value="normal 30 上架中">
					普通方案一個月
				</div>

				<div id="commoncase3">
					<input id="normalthree" type="radio" name="promotecase" value="normal 90 上架中">
					普通方案三個月
				</div>

				<div id="vip">
					<input id="vipone" type="radio" name="promotecase" value="VIP 30 上架中">
					vip方案一個月
				</div>


				<div id="vip3">
					<input id="vipthree" type="radio" name="promotecase" value="VIP 90 上架中">
					vip方案三個月
				</div>

				

			</div>
			
			<p>這樣金額:</p><span id="amount"></span>
				<div id="button">
					<input class="btn btn-primary " type="submit" value="確認結帳">
					 <a href="<c:url value='/product'/>" ><input class="btn btn-primary " type="button" value="回上一頁"></a>

				</div>
		</form>

	</div>
</body>
</html>