<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Document</title>
<link href="<c:url value='/css/owl.carousel.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/css/owl.theme.default.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/buyer.css' />" />
<script src="<c:url value='/js/buyer.js' />"></script>
</head>


<body style="background-color: #F7F3F3">
	<div class="link1">
		<div class="link2">
			<span><a href="<c:url value='/'/>">首頁></a></span> <span><a
				href="<c:url value='/search/result?searchInput='/>">搜尋></a></span> <span><a
				href="<c:url value='/buyer?productId=${info.productId}'/>">[${info.phoneSort}]
					${info.phoneType.label} ${info.storage.label} ${info.color.label}</a></span>
		</div>
		<h3>[${info.phoneSort}] ${info.phoneType.label}
			${info.storage.label} ${info.color.label}</h3>
		<p>觀看次數:${info.watch}次</p>
		<div class="link3">
			<img src="<c:url value='/fs/img/${info.pic1}' />" class="img1"
				id="myImg"> <img src="<c:url value='/fs/img/${info.pic2}' />"
				class="small"> <img
				src="<c:url value='/fs/img/${info.pic3}' />" class="small"> <img
				src="<c:url value='/fs/img/${info.pic4}' />" class="small"> <img
				src="<c:url value='/fs/img/${info.pic5}' />" class="small"> <img
				src="<c:url value='/fs/img/${info.pic6}' />" class="small">
		</div>
		<div id="myModal" class="modal">
			<br> <br> <br> <span class="close">&times;</span> <img
				class="modal-content" id="img01">
			<div id="caption"></div>
		</div>
		<div class="salse">
			<div class="salse2">
				直購價:<span class="span1"> $${info.amount}</span>
				<p>刊登日期:</p>
			</div>
			<div class="stl1">
				<p>付款方式 :</p>
				<p>
					銀行或郵局轉帳
					<c:choose>
						<c:when test="${info.post ==1 }">✔</c:when>
						<c:when test="${info.post !=1 }">✘</c:when>
					</c:choose>
				</p>
				<p>
					面交取貨付款
					<c:choose>
						<c:when test="${info.face ==1 }">✔</c:when>
						<c:when test="${info.face !=1 }">✘</c:when>
					</c:choose>
				</p>
				<p>
					7-11便利商店
					<c:choose>
						<c:when test="${info.seven ==1 }">✔</c:when>
						<c:when test="${info.seven !=1 }">✘</c:when>
					</c:choose>
				</p>
				<p>
					全家便利商店
					<c:choose>
						<c:when test="${info.family ==1 }">✔</c:when>
						<c:when test="${info.family !=1 }">✘</c:when>
					</c:choose>
				</p>
				<input type='hidden' name='phoneId' value="${info.productId}">
				<p>
					<input id='addShopCart' type='button' value='加入購物車' />
				</p>
			</div>
			<div class="link4">
				<p class="p1">賣家資訊</p>
				<a href="連結網址" class="p2">${info.account}</a> <br> <a
					href="連結網址" class="p2">聯絡賣家</a> <br> <a href="連結網址" class="p2">賣家評價</a>
			</div>
		</div>

		<ul class="down">
			<li id="aaa"><p>商品說明</p></li>
			<li id="bbb"><p>問與答(${size})</p></li>
		</ul>
		<div>
			<div id="quest1" class="quest">
				<p>手機型號:${info.phoneType.label}</p>
				<p>容量:${info.storage.label}</p>
				<p>顏色:${info.color.label}</p>
				<p>機況:${info.phoneCondition}</p>
				<p>保固:${info.phoneWarranty}</p>
				<p>種類:${info.phoneSort}</p>
				<p>出廠日期:${info.yearOfManufacture}</p>
				<p>販售原因:${info.sellReason}</p>
			</div>
			<div id="quest2" class="quest">
				<c:if test="${ qa[0] == null}">
					<p class="noleave">目前暫無留言</p>
				</c:if>
				<c:forEach varStatus="status" var="li" items="${qa}">
					<div>
						<c:if test="${li.massage != null}">
							<div class="buyerquest">
								<p>${li.buyeraccount}${li.leaveTime}</p>
								<p>問題:</p>
								<p>${li.massage}</p>
							</div>
						</c:if>
						<c:if test="${li.answer != '' and li.answer != null}">
							<div class="useranswer">
								<p>${li.answeraccount}${li.ansTime}</p>
								<p class="selleranswer">賣家回覆:</p>
								<p>${li.answer}</p>
							</div>
						</c:if>
						<c:if
							test="${li.massage != null and user.account == info.account}">
							<button class="ansbtn" type="button">回覆</button>
						</c:if>
						<form class="ansarea" action="<c:url value='/buyer/answerpage'/>"
							method="POST">
							<input class="mid" type="text" name="userid" value="${li.mId}" />
							<textarea rows="5" cols="50" name="text"></textarea>
							<br> <input type="submit" value="提交">
						</form>
					</div>
				</c:forEach>

			</div>
		</div>
		<c:choose>
			<c:when test="${user!=null}">
				<form id="QAA" action="<c:url value="/buyer/massagepage"/>"
					method="post">
					<textarea rows="5" cols="50" name="textarea"></textarea>
					<br> <input type="submit" value="提交">
				</form>
			</c:when>
			<c:when test="${user==null}">
				<div class="msglogin">
					<a href="http://localhost:8080/MiraclePhone/userlogin">留言請先登入</a>
				</div>
			</c:when>
		</c:choose>
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
	<script src="<c:url value='/js/jquery-2.1.1.min.js' />"></script>
	<script src="<c:url value='/js/owl.carousel.2.0.0-beta.2.4.min.js' />"></script>
	<script src="<c:url value='/js/owl.carouselyin.js' />"></script>
	<script src="<c:url value='/js/jquery-3.5.1.slim.min.js' />"></script>
</body>

</html>