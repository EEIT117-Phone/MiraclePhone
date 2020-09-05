<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Document</title>
<link href="<c:url value='/css/owl.carousel.css' />" rel="stylesheet">
<link href="<c:url value='/css/buyer.css' />" rel="stylesheet">
<link href="<c:url value='/css/owl.carousel.min.css' />" rel="stylesheet">
<link href="<c:url value='/css/owl.theme.default.min.css' />" rel="stylesheet">
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<script src="<c:url value='/js/buyer.js' />"></script>
</head>


<body>
	<div class="link1">
		<div class="link2">
			<span><a href="連結網址">首頁></a></span> <span><a href="連結網址">新機></a></span>
			<span><a href="連結網址">Nokia></a></span> <span><a href="連結網址">3310</a></span>
		</div>
		<h3>◢ 簡便宜 ◣ 二手 Nokia 諾基亞 3310 藍色手機</h3>
    <div class="link3">
      <img id="myImg" class="img1" src="https://via.placeholder.com/200x200?text=img8">
      <img src="https://via.placeholder.com/200x200?text=img1" class="small">
      <img src="https://via.placeholder.com/200x200?text=img2" class="small">
      <img src="https://via.placeholder.com/200x200?text=img3" class="small">
      <img src="https://via.placeholder.com/200x200?text=img4" class="small">
      <img src="https://via.placeholder.com/200x200?text=img5" class="small">
    </div>
    <div id="myModal" class="modal">
      <span class="close">&times;</span>
      <img class="modal-content" id="img01">
      <div id="caption"></div>
    </div>
		<div class="salse">
			<div class="salse2">
				直購價:<span class="span1"> $${info.amount}</span>
				<p>刊登日期:</p>
			</div>
			<div class="stl1">
				<p>付款方式：PChomePay支付連 現金 (ATM、餘額、銀行支付)</p>
				<p>銀行或郵局轉帳</p>
				<p>郵局無摺存款</p>
				<p>面交取貨付款</p>
				<p>運送方式：7-11取貨 60 元</p>
				<p>郵寄寄送 40 元</p>
				<input type='hidden' name='phoneId' value="a1">
				<!-- 				<input type='hidden' name='phoneId' value="a2"> -->
				<p>
					<input id='addShopCart' type='button' value='加入購物車' />
				</p>
			</div>
			<div class="link4">
				<p class="p1">賣家資訊</p>
				<a href="連結網址" class="p2">${info.productId}</a> <br> <a href="連結網址"
					class="p2">賣場首頁</a> <br> <a href="連結網址" class="p2">加入最愛</a> <br>
				<a href="連結網址" class="p2">所有商品</a> <br> <a href="連結網址"
					class="p2"">賣家評價</a>
			</div>
		</div>

		<ul class="down">
			<li id="aaa"><p>商品說明</p></li>
			<li id="bbb"><p>問與答</p></li>
			<li id="ccc"><p>購買紀錄</p></li>
		</ul>
		<div>
			<div id="quest1" class="quest">
				<p>手機型號:${info.phoneType}</p>
				<p>容量:${info.memory}</p>
				<p>顏色:${info.color}</p>
				<p>機況:${info.phoneCondition}</p>
				<p>保固:${info.phoneWarranty}</p>
				<p>耳機:${info.headPhone}</p>
				<p>充電線:</p>
				<p>種類:${info.phoneSort}</p>
				<p>插頭:${info.socket}</p>
				<p>付款方式:</p>
				<p>出廠日期:${info.yearOfManufacture}</p>
				<p>販售原因:${info.sellReason}</p>
			</div>
			<div id="quest2" class="quest">
				<% 
				ResultSet rs = (ResultSet)request.getAttribute("rs");
				if(rs!=null){
				while(rs.next()){
					out.write("<p>" + rs.getString(2) + "<p><br>");
				}
				}
				%>
				
			</div>
			<div id="quest3" class="quest">
				<p>1</p>
				<p>2</p>
				<p>3</p>
			</div>
		</div>
		
		<form id="QAA" action="<c:url value="/massagepage"/>" method="post">
			<textarea rows="5" cols="50" name="textarea"></textarea><br>
			<input type="submit" value="提交">
		</form>
	
		<br>
		<p>按鍵輪播</p>
		<div class="owl-carousel">
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img1"><img
					src="https://via.placeholder.com/200x200?text=img1" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img2"><img
					src="https://via.placeholder.com/200x200?text=img2" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img3"><img
					src="https://via.placeholder.com/200x200?text=img3" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img4"><img
					src="https://via.placeholder.com/200x200?text=img4" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img5"><img
					src="https://via.placeholder.com/200x200?text=img5" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img6"><img
					src="https://via.placeholder.com/200x200?text=img6" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img7"><img
					src="https://via.placeholder.com/200x200?text=img7" /></a>
			</div>
			<div class="item">
				<a target="_blank"
					href="https://via.placeholder.com/200x200?text=img8"><img
					src="https://via.placeholder.com/200x200?text=img8" /></a>
			</div>
		</div>
	</div>
</body>
<script src="<c:url value='/js/jquery-2.1.1.min.js' />"></script>
<script src="<c:url value='/js/owl.carousel.2.0.0-beta.2.4.min.js' />"></script>
<script src="<c:url value='/js/owl.carouselyin.js' />"></script>
<script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>

</html>