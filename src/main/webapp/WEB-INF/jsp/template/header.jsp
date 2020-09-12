<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="<c:url value='/index' />">
			<img src="<c:url value='/images/icon/phoneIcon.png' />" width="25"
			height="25" /> <span>銷售奇機</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarCollapse" aria-controls="navbarCollapse"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav mr-auto"></div>
			<div class="form-inline mt-2 mt-md-0 module-link">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/cart' />" style="color: white"> 
						<img src="<c:url value='/images/icon/shoppingCartIcon.png' />" width="25" height="25" />
						<span id="carAmount">
							${not empty cart ? cart.size() : 0}
						</span>
					</a></li>
					<li class="nav-item usersmenu"><a class="nav-link"
						style="color: white">會員專區</a>
						<ul>
							<li><a href="<c:url value='/product' />">刊登手機</a></li>
							<li><a href="<c:url value='/contact' />">刊登中物件</a></li>
							<li><a href="<c:url value='/usermodification' />">修改會員資訊</a></li>
							<li><a href="<c:url value='/orderHistory' />">訂單歷史紀錄</a></li>
							<li><a href="<c:url value='/contactcustomer' />">客服專區</a></li>
							
						</ul></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/userlogin' />" style="color: white">登入</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value='/usersignup'/>" style="color: white">註冊</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>