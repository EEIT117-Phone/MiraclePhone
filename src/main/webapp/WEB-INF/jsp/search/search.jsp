<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <title>銷售奇機</title>
    <!-- @@ CSS -->
    <link rel="stylesheet" href="<c:url value='/css/tail.select-default.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/owl.theme.default.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/font-awesome-4.7.0/css/font-awesome.min.css' />" />
<%--     <link rel="stylesheet" href="<c:url value='/css/font-awesome.min.css' />" /> --%>
    <link rel="stylesheet" href="<c:url value='/css/search.css' />" />
</head>

<body>
    <div class="main">
        <div class="main-toplink card">
            <table cellpadding="20" cellspacing="0">
                <tr>
                    <td class="text-center">
                    	<a href="<c:url value='/search/result?phoneSort=全新機' />" class="text-decoration-none">
                    		<label class="h4 w-75 bg-secondary text-white rounded">點我快速搜全新機</label>
                    		<img src="<c:url value='/images/iPhoneSeries.png' />" class="img-top rounded" alt="...">
                    	</a>
                    </td>
                    <td class="text-center">
                    	<a href="<c:url value='/search/result?phoneSort=二手機' />" class="text-decoration-none">
                    		<label class="h4 w-75 bg-secondary text-white rounded">點我快速搜二手機</label>
                            <img src="<c:url value='/images/iPhoneSecand.jpeg' />" class="img-top rounded" alt="...">
                        </a>
                    </td>
                    <td class="text-center">
                    	<a href="<c:url value='/search/result?phoneSort=零件機' />" class="text-decoration-none">
                    		<label class="h4 w-75 bg-secondary text-white rounded">點我快速搜零件機</label>
                            <img src="<c:url value='/images/iPhoneParts.jpeg' />" class="img-top rounded" alt="...">
                        </a>
                    </td>
                </tr>
            </table>
        </div>

        <div class="main-body-and-filter h-100">
            <div class="main-body">
                <!--    VIP輪播        -->
                <h4>精選推薦</h4>
                <div class="owl-carousel">
                    <a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhone6s.jpeg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[二手機] iPhone 6s 128G 銀色 7成新</p>
                                <p class="card-text">$ 1,500</p>
                            </div>
                        </div>
                    </a> <a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhoneSE.jpg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[二手機] iPhone SE 32G 太空灰 7成新</p>
                                <p class="card-text">$ 12,000</p>
                            </div>
                        </div>
                    </a> <a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhoneXR.jpg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[二手機] iPhone XR 256G 白色 9成新</p>
                                <p class="card-text">$ 22,500</p>
                            </div>
                        </div>
                    </a> <a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhone11.jpg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[全新機] iPhone 11 64G 珊瑚色</p>
                                <p class="card-text">$ 30,000</p>
                            </div>
                        </div>
                    </a> <a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhone6sPlus.jpg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[二手機] iPhone 6s Plus 32G 玫瑰金 6成新</p>
                                <p class="card-text">$ 5,000</p>
                            </div>
                        </div>
                    </a><a target="_blank" href="<c:url value='/buyer' />"
                        class="text-dark text-decoration-none">
                        <div class="item card">
                            <img class="card-img" src="<c:url value='/images/iPhoneXR.jpg' />" alt="Card image cap">
                            <div class="card-body search-card-body">
                                <p class="card-title">[二手機] iPhone XR 256G 白色 9成新</p>
                                <p class="card-text">$ 22,500</p>
                            </div>
                        </div>
                    </a>
                </div>

				<div class="d-inline-block w-100">
                <h4 class="float-left">搜尋結果</h4>
<!--                 <select class="float-right h-100" style="margin-right: 20px;">
                <option>價格(低到高)</option>
                <option>價格(高到低)</option>
              	</select> -->
              	<input id="price" type="button" value="價格(低到高)" class="float-right btn btn-secondary" style="width:130px; margin: 0 2% 0 1%;">
              	<input type="button" value="最新" class="float-right btn btn-secondary" style="width:130px; margin: 0 1% 0 1%;">
              	<input type="button" value="最熱門" class="float-right btn btn-secondary" style="width:130px; margin: 0 1% 0 1%;">
                </div>
              
                <div class="h-100 mb-5">
                <form class="w-100" style="border-spacing: 20px;">
                    <c:forEach varStatus="status" var="result" items="${results}">
                        <a target="_blank" href="<c:url value='/buyer?productId=${result.productId}' />" class="text-dark text-decoration-none">
                            <div class="card card-result">
                                <img class="card-img" src="<c:url value='/images/iPhone11.jpg' />" alt="Card image cap">
                                <div class="card-body search-card-body">
                                    <p class="card-title">[${result.phoneSort}] ${result.phoneType} ${result.memory}
                                        ${result.color}色</p>
                                    <span class="card-text mr-2">$ <fmt:formatNumber value="${result.amount}" type="number"/></span><span class="card-city">${result.county}${result.district}</span>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </form>
                </div>
                
            </div>

            <!-- Filter -->
            <div class="filter col-sm-4">

                <div class="wrap">
                    <div class="search">
                        <form:form servletRelativeAction="/search/result" method="get"
                            enctype="application/x-www-form-urlencoded" modelAttribute="searchBean">
                            <form:input path="searchInput" class="searchTerm" placeholder="請輸入關鍵字搜尋"/>
                            <button type="submit" class="searchButton"><i class="fa fa-search"></i>
                            </button>
                        </form:form>
                    </div>
                </div>

                <h4>進階篩選</h4>
                <form:form servletRelativeAction="/search/result" method="get"
                            enctype="application/x-www-form-urlencoded" modelAttribute="searchBean">
                            <button type="submit" class="searchButton"></button>

                <div class="card">
                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">機種</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" items="${phoneTypeList}" path="checkedOption" element="div"/>
                        	</div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">容量</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" items="${memoryList}" path="checkedOption" element="div"/>
                        	</div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">價格區間</label>
                        </header>
                        <form class="multi-range-field my-5 pb-5">
                        <input id="price" class="price-range" type="range" />
                        </form>
<!--                         <div class="filter-content"> -->
<!--                             <div class="card-body"> -->
<%--                                 <form> --%>
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxPriceAll" -->
<!--                                             value="PriceAll" checked> -->
<!--                                         <label class="form-check-label" for="inlineCheckboxPriceAll">不限</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxUnder5000" -->
<!--                                             value="Under5000"> <label class="form-check-label" -->
<!--                                             for="inlineCheckboxUnder5000">5,000元以下</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxUnder10000" -->
<!--                                             value="Under10000"> <label class="form-check-label" -->
<!--                                             for="inlineCheckboxUnder10000">10,000元以下</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxUnder20000" -->
<!--                                             value="Under20000"> <label class="form-check-label" -->
<!--                                             for="inlineCheckboxUnder20000">20,000元以下</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxUnder30000" -->
<!--                                             value="Under30000"> <label class="form-check-label" -->
<!--                                             for="inlineCheckboxUnder30000">30,000元以下</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<!--                                     <div class="form-check form-check-inline"> -->
<!--                                         <input class="form-check-input" type="checkbox" id="inlineCheckboxUnder40000" -->
<!--                                             value="inlineCheckboxUnder40000"> <label class="form-check-label" -->
<!--                                             for="inlineCheckboxUnder40000">40,000元以下</label> -->
<!--                                     </div> -->
<!--                                     <br> -->
<%--                                 </form> --%>
<!--                             </div> -->
<!--                         </div> -->
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">交易方式</label>
                        </header>
                        <div class="filter-content">
                            <div class="card-body">
                                <form>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxDeliveryAll"
                                            value="DeliveryAll" checked>
                                        <label class="form-check-label" for="inlineCheckboxDeliveryAll">不限</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxDeliveryFTF"
                                            value="DeliveryFTF"> <label class="form-check-label"
                                            for="inlineCheckboxDeliveryFTF">面交</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxDeliveryHome"
                                            value="DeliveryHome">
                                        <label class="form-check-label" for="inlineCheckboxDeliveryHome">宅配物流</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxPost"
                                            value="Post"> <label class="form-check-label"
                                            for="inlineCheckboxPost">中華郵政</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxOK"
                                            value="OK"> <label class="form-check-label" for="inlineCheckboxOK">OK
                                            Mart</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11"
                                            value="7-11"> <label class="form-check-label"
                                            for="inlineCheckbox7-11">7-11</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxFamily"
                                            value="Family"> <label class="form-check-label"
                                            for="inlineCheckboxFamily">全家</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckboxLife"
                                            value="Life"> <label class="form-check-label"
                                            for="inlineCheckboxLife">萊爾富</label>
                                    </div>
                                    <br>
                                </form>
                            </div>
                        </div>
                    </article>

                </div>
                </form:form>
            </div>
        </div>
    </div>
    <!-- @@ JS -->
    <script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
    <script src="<c:url value='/js/jquery-2.1.1.min.js' />"></script>
    <script src="<c:url value='/js/popper.js' />"></script>
    <script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
    <script src="<c:url value='/js/tail.select.min.js' />"></script>
    <script src="<c:url value='/js/owl.carousel.2.0.0-beta.2.4.min.js' />"></script>
    <script src="<c:url value='/js/popper.js' />"></script>
    <script src="<c:url value='/js/tail-select.setting.js' />"></script>
    <script src="<c:url value='/js/owl.carousel.setting.js' />"></script>
    <script src="<c:url value='/js/search.js' />"></script>
</body>

</html>