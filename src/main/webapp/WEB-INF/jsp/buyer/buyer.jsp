<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<title>[${info.phoneSort}] ${info.phoneType.label} ${info.storage.label} ${info.color.label}</title>
<link href="<c:url value='/css/owl.carousel.min.css' />" rel="stylesheet">
<link href="<c:url value='/css/owl.theme.default.min.css' />" rel="stylesheet">
<link rel="stylesheet" href="<c:url value='/css/font-awesome-4.7.0/css/font-awesome.min.css' />" />
<link rel="stylesheet" href="<c:url value='/css/buyer.css' />" />
<link rel="stylesheet" href="<c:url value='/css/search.css' />" />
<script src="<c:url value='/js/buyer.js' />"></script>
</head>

<body>
	<div class="link1">
		<span><a href="<c:url value='/'/>">首頁></a></span>
		<span><a href="<c:url value='/search/result?searchInput='/>">搜尋></a></span>
		<span><a href="<c:url value='/buyer?productId=${info.productId}'/>">[${info.phoneSort}] ${info.phoneType.label} ${info.storage.label} ${info.color.label}</a></span>

		<h3 class="mt-3">[${info.phoneSort}] ${info.phoneType.label} ${info.storage.label} ${info.color.label}</h3>
		<p>觀看次數:${info.watch}次</p>

		<div class="imgArea overflow-auto">
			<div class="salse float-right mr-5 mb-3">
				<div class="salse2 mt-5">
					<div>
						<span class="align-middle h4 font-weight-bold">直購價 :</span><span class="span1 align-middle"> $ <fmt:formatNumber value="${info.amount}" type="number" /></span>
						&nbsp;&nbsp;
						<button id='addShopCart' class="btn btn-primary btn-sm">
							<i class="fa fa-cart-plus" aria-hidden="true"></i> 加入購物車
						</button>
						<br>
						<span class="h4 font-weight-bold">刊登日期 :</span> <input type='hidden' name='phoneId' value="${info.productId}">
						<div class="stl1">
							<span class="h4 font-weight-bold">付款方式 :</span>
							<span> 銀行或郵局轉帳
								<c:choose>
									<c:when test="${info.post ==1 }"><span><span class="text-success">✔</span></span></c:when>
									<c:when test="${info.post !=1 }"><span class="text-danger">✘</span></c:when>
								</c:choose>
							</span>
							&nbsp;&nbsp;	
							<span> 面交取貨付款
								<c:choose>
									<c:when test="${info.face ==1 }"><span class="text-success">✔</span></c:when>
									<c:when test="${info.face !=1 }"><span class="text-danger">✘</span></c:when>
								</c:choose>
							</span>
						</div>
					</div>
				</div>
				<!-- 
			<div class="link4">
				<p class="p1">賣家資訊</p>
				<a href="連結網址" class="p2">${info.account}</a> <br> <a
					href="連結網址" class="p2">聯絡賣家</a> <br> <a href="連結網址" class="p2">賣家評價</a>
			</div>
			-->
			<hr>
			<div class="productInfo">
			<p class="h4 font-weight-bold">商品說明 :</p>
				<table>
					<p>手機型號: ${info.phoneType.label}</p>
					<p>容量: ${info.storage.label}</p>
					<p>顏色: ${info.color.label}</p>
					<p>機況: ${info.phoneCondition}</p>
					<p>保固: ${info.phoneWarranty}</p>
					<p>種類: ${info.phoneSort}</p>
					<p>出廠日期: ${info.yearOfManufacture}</p>
				</table>
					<p>販售原因: ${info.sellReason}</p>
			</div>
			<hr>
			
					<div class="QA">
		<p class="h4 font-weight-bold mt-2">問與答(${size})</p>
				<div id="quest2" class="quest">
					<c:if test="${ qa[0] == null}">
						<p class="noleave">目前暫無留言</p>
					</c:if>
					<c:forEach varStatus="status" var="li" items="${qa}">
						<div>
							<c:if test="${li.massage != null}">
								<div class="buyerquest pl-4">
									<p>( ${li.buyeraccount}) ${li.leaveTime}</p>
									<p>問題:</p>
									<p class="mb-0">${li.massage}</p>
								</div>
							</c:if>
							<c:if test="${li.answer != '' and li.answer != null}">
								<div class="useranswer pl-4">
									<p class="selleranswer font-weight-bold">賣家回覆:</p>
									<p>${li.answer}</p>
									<p class="text-right pr-4">( ${li.answeraccount}) ${li.ansTime}</p>
								</div>
							</c:if>
							<c:if
								test="${li.massage != null and user.account == info.account and li.answer == null}">
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
			
			
			</div>

			<div class="link3 float-left ml-5 mt-4 overflow-auto">
				<div class="imgdiv mt-3">
					<img src="<c:url value='/fs/img/${info.pic1}' />" class="img1"
						id="myImg">
				</div>
				<div class="my-0 mx-auto">
					<img src="<c:url value='/fs/img/${info.pic1}' />"
						class="small my-3 ml-4"> <img
						src="<c:url value='/fs/img/${info.pic2}' />"
						class="small my-3 ml-4"> <img
						src="<c:url value='/fs/img/${info.pic3}' />"
						class="small my-3 ml-4"> <img
						src="<c:url value='/fs/img/${info.pic4}' />"
						class="small my-3 ml-4"> <img
						src="<c:url value='/fs/img/${info.pic5}' />"
						class="small my-3 ml-4"> <img
						src="<c:url value='/fs/img/${info.pic6}' />"
						class="small my-3 ml-4">
				</div>
			</div>
			<div id="myModal" class="modal">
				<br> <br> <br> <span class="close">&times;</span> <img
					class="modal-content" id="img01">
				<div id="caption"></div>
			</div>
		</div>

			<br>
			<p class="h4 font-weight-bold">其他搜尋結果:</p>
			<div class="owl-carousel">
				<c:forEach varStatus="status" var="result" items="${rs}">
					<a target="_blank"
						href="<c:url value='/buyer?productId=${result.productId}' />"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img"
								src="<c:url value='/fs/img/${result.pic1}' />"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[${result.phoneSort}]
									${result.phoneType.label} ${result.storage.label}
									${result.color.label}色</p>
								<p class="card-text mr-2 d-inline-block mb-0">
									$
									<fmt:formatNumber value="${result.amount}" type="number" />
								</p>
								<i class="fa fa-eye fa-fw text-secondary mr-0"
									aria-hidden="true"></i>
								<p class="card-city mb-0 text-right">${result.county}${result.district}</p>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>
	<script src="<c:url value='/js/jquery-2.1.1.min.js' />"></script>
	<script src="<c:url value='/js/owl.carousel.2.0.0-beta.2.4.min.js' />"></script>
	<script src="<c:url value='/js/owl.carouselyin.js' />"></script>
</body>

</html>