<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<% String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
<title>銷售奇機</title>
<!-- @@ CSS -->
<link rel="stylesheet" href="<%=path%>/css/tail.select-default.min.css"/>
<link rel="stylesheet" href="<%=path%>/css/owl.carousel.min.css"/>
<link rel="stylesheet" href="<%=path%>/css/owl.theme.default.min.css"/>
<link
	href="<c:url value='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' />"
	rel="stylesheet">
<link rel="stylesheet" href="<%=path%>/css/search.css"/>
</head>

<body>
	<div class="main">
		<div class="main-toplink card">
			<table cellpadding="20" cellspacing="0">
				<tr>
					<td class="text-center"><a href="#"
						class="text-decoration-none"><label
							class="h4 w-75 bg-secondary text-white rounded">點我快速搜全新機</label><img
							src="<%=path%>/images/iPhoneSeries.png" class="img-top rounded" alt="..."></a></td>
					<td class="text-center"><a href="#"
						class="text-decoration-none"><label
							class="h4 w-75 bg-secondary text-white rounded">點我快速搜二手機</label><img
							src="<%=path%>/images/iPhoneSecand.jpeg" class="img-top rounded" alt="..."></a></td>
					<td class="text-center"><a href="#"
						class="text-decoration-none"><label
							class="h4 w-75 bg-secondary text-white rounded">點我快速搜零件機</label><img
							src="<%=path%>/images/iPhoneParts.jpeg" class="img-top rounded" alt="..."></a></td>
				</tr>
			</table>
		</div>

		<div class="main-body-and-filter">
			<div class="main-body">
				<!-- 	VIP輪播		 -->
				<h4>精選推薦</h4>
				<div class="owl-carousel">
					<a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img" src="<%=path%>/images/iPhone6s.jpeg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[二手機] iPhone 6s 128G 銀色 7成新</p>
								<p class="card-text">$ 1,500</p>
							</div>
						</div>
					</a> <a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img" src="<%=path%>/images/iPhoneSE.jpg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[二手機] iPhone SE 32G 太空灰 7成新</p>
								<p class="card-text">$ 12,000</p>
							</div>
						</div>
					</a> <a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img" src="<%=path%>/images/iPhoneXR.jpg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[二手機] iPhone XR 256G 白色 9成新</p>
								<p class="card-text">$ 22,500</p>
							</div>
						</div>
					</a> <a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img" src="<%=path%>/images/iPhone11.jpg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[全新機] iPhone 11 64G 珊瑚色</p>
								<p class="card-text">$ 30,000</p>
							</div>
						</div>
					</a> <a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="item card">
							<img class="card-img" src="<%=path%>/images/iPhone6sPlus.jpg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[二手機] iPhone 6s Plus 32G 玫瑰金 6成新</p>
								<p class="card-text">$ 5,000</p>
							</div>
						</div>
					</a>
				</div>

				<h4>搜尋結果</h4>
				<form class="w-100" style="border-spacing: 20px;">
				<c:forEach varStatus="status"  var="result"  items="${results}" >
				<a target="_blank"
						href="https://via.placeholder.com/150x150?text=img1"
						class="text-dark text-decoration-none">
						<div class="card card-result">
 							<img class="card-img" src="<%=path%>/images/iPhone11.jpg"
								alt="Card image cap">
							<div class="card-body search-card-body">
								<p class="card-title">[${result.phoneSort}] ${result.phoneType} ${result.memory} ${result.color}</p>
								<p class="card-text">$ ${result.amount}</p>
							</div>
						</div>
					</a>
				</c:forEach>


					<!--               <select class="float-right h-100" style="margin-right: 20px;">
                <option>價格(高到低)</option>
                <option>價格(低到高)</option>
              </select>
              <input type="button" value="最新" class="float-right h-100" style="width:100px; margin: 0 10px 15px 5px;">
              <input type="button" value="最熱門" class="float-right h-100" style="width:100px; margin: 0 5px 15px 5px;"> -->
				</form>
			</div>

			<!-- Filter -->
			<div class="filter col-sm-4">

				<div class="wrap">
					<div class="search">
						<form:form servletRelativeAction="/search/result" method="post"
							enctype="application/x-www-form-urlencoded"
							modelAttribute="searchBean">
							<form:input path="searchInput" class="searchTerm" placeholder="請輸入關鍵字搜尋"/>
								<button type="submit" class="searchButton"><i class="fa fa-search"></i>
							</button>
						</form:form>
					</div>
				</div>

				<h4>快速篩選</h4>
				<div class="card">
					<article class="card-group-item">
						<header class="card-header">
							<label class="filter-title">機種</label>
						</header>
						<div class="filter-content">
							<div class="card-body">
								<form>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxTypeAll" value="TypeAll" checked> <label
											class="form-check-label" for="inlineCheckboxTypeAll">不限</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphone6" value="iphone 6"> <label
											class="form-check-label" for="inlineCheckboxiphone6">iPhone
											6系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphone7" value="iphone 7"> <label
											class="form-check-label" for="inlineCheckboxiphone7">iPhone
											7系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphone8" value="iphone 8"> <label
											class="form-check-label" for="inlineCheckboxiphone8">iPhone
											8系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphonese" value="iphone se"> <label
											class="form-check-label" for="inlineCheckboxiphonese">iPhone
											SE系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphonex" value="iphone x"> <label
											class="form-check-label" for="inlineCheckboxiphonex">iPhone
											X系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphone11" value="iphone 11"> <label
											class="form-check-label" for="inlineCheckboxiphone11">iPhone
											11系列</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxiphonese2" value="iphone se2"> <label
											class="form-check-label" for="inlineCheckboxiphonese2">iPhone
											SE2系列</label>
									</div>
									<br>
								</form>

							</div>
						</div>
					</article>

					<article class="card-group-item">
						<header class="card-header">
							<label class="filter-title">容量</label>
						</header>
						<div class="filter-content">
							<div class="card-body">
								<form>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxMemoryAll" value="MemoryAll" checked>
										<label class="form-check-label" for="inlineCheckboxMemoryAll">不限</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox16GB" value="16GB"> <label
											class="form-check-label" for="inlineCheckbox16GB">16
											GB</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox32GB" value="32GB"> <label
											class="form-check-label" for="inlineCheckbox32GB">32
											GB</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox64GB" value="64GB"> <label
											class="form-check-label" for="inlineCheckbox64GB">64
											GB</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox128GB" value="128GB"> <label
											class="form-check-label" for="inlineCheckbox128GB">128
											GB</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox256GB" value="256GB"> <label
											class="form-check-label" for="inlineCheckbox256GB">256
											GB</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox512GB" value="512GB"> <label
											class="form-check-label" for="inlineCheckbox512GB">512
											GB</label>
									</div>
									<br>
								</form>
							</div>
						</div>
					</article>

					<article class="card-group-item">
						<header class="card-header">
							<label class="filter-title">價格區間</label>
						</header>
						<div class="filter-content">
							<div class="card-body">
								<form>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxPriceAll" value="PriceAll" checked>
										<label class="form-check-label" for="inlineCheckboxPriceAll">不限</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxUnder5000" value="Under5000"> <label
											class="form-check-label" for="inlineCheckboxUnder5000">5,000元以下</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxUnder10000" value="Under10000"> <label
											class="form-check-label" for="inlineCheckboxUnder10000">10,000元以下</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxUnder20000" value="Under20000"> <label
											class="form-check-label" for="inlineCheckboxUnder20000">20,000元以下</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxUnder30000" value="Under30000"> <label
											class="form-check-label" for="inlineCheckboxUnder30000">30,000元以下</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxUnder40000"
											value="inlineCheckboxUnder40000"> <label
											class="form-check-label" for="inlineCheckboxUnder40000">40,000元以下</label>
									</div>
									<br>
								</form>
							</div>
						</div>
					</article>

					<article class="card-group-item">
						<header class="card-header">
							<label class="filter-title">交易方式</label>
						</header>
						<div class="filter-content">
							<div class="card-body">
								<form>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxDeliveryAll" value="DeliveryAll" checked>
										<label class="form-check-label"
											for="inlineCheckboxDeliveryAll">不限</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxDeliveryFTF" value="DeliveryFTF"> <label
											class="form-check-label" for="inlineCheckboxDeliveryFTF">面交</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxDeliveryHome" value="DeliveryHome">
										<label class="form-check-label"
											for="inlineCheckboxDeliveryHome">宅配物流</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxPost" value="Post"> <label
											class="form-check-label" for="inlineCheckboxPost">中華郵政</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxOK" value="OK"> <label
											class="form-check-label" for="inlineCheckboxOK">OK
											Mart</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckbox7-11" value="7-11"> <label
											class="form-check-label" for="inlineCheckbox7-11">7-11</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxFamily" value="Family"> <label
											class="form-check-label" for="inlineCheckboxFamily">全家</label>
									</div>
									<br>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="checkbox"
											id="inlineCheckboxLife" value="Life"> <label
											class="form-check-label" for="inlineCheckboxLife">萊爾富</label>
									</div>
									<br>
								</form>
							</div>
						</div>
					</article>

				</div>
			</div>
		</div>
	</div>
	<!-- @@ JS -->
	<script src="<%=path %>/js/jquery-3.5.1.slim.min.js"></script>
	<script src="<%=path %>/js/popper.js"></script>
	<script src="<%=path %>/js/bootstrap.bundle.min.js"></script>
	<script src="<%=path %>/js/tail.select.min.js"></script>
	<script src="<%=path %>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=path %>/js/owl.carousel.2.0.0-beta.2.4.min.js"></script>
	<script src="<%=path %>/js/popper.js"></script>
	<script src="<%=path %>/js/owl.carousel.setting.js"></script>
	<script src="<%=path %>/js/tail-select.setting.js"></script>
	<script src="<%=path %>/js/owl.carousel.setting.js"></script>
	<script src="<%=path %>/js/search.js"></script>
</body>

</html>