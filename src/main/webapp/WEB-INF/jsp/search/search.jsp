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
    <link rel="stylesheet" href="<c:url value='/css/owl.theme.default.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/owl.carousel.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/font-awesome-4.7.0/css/font-awesome.min.css' />" />
    <link rel="stylesheet" href="<c:url value='/css/search.css' />" />
</head>

<body>
    <div class="main">
        <div class="main-toplink card pb-3">
            <table>
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
                <p class="ml-3 h3">精選推薦</p>
                <div class="owl-carousel owl-theme">          
                    <c:forEach varStatus="status" var="result" items="${vipresults}">
                        <a target="_blank" href="<c:url value='/buyer?productId=${result.productId}' />" class="text-dark text-decoration-none">
                            <div class="item card card-result element-item">
                                <img class="card-img" src="<c:url value='/fs/img/${result.pic2}' />" alt="Card image cap">
                                <div class="card-body search-card-body">
                                	<span class="card-title new d-none">${result.productId}</span>
<%--                                 	<span class="card-title new d-none">${result.ad_date}</span> --%>
                                    <span class="card-title">[${result.phoneSort}] </span>
                                    <span class="card-title">${result.phoneType.label} </span>
                                    <span class="card-title">${result.storage.label} </span>
                                    <span class="card-title">${result.color.label}</span><br>
                                    <p class="card-text d-inline-block mb-0">$</p>
                                    <p class="card-text d-inline-block mb-0 amount"><fmt:formatNumber value="${result.amount}" type="number"/></p>
                                    <i class="fa fa-eye fa-fw text-secondary mr-0" aria-hidden="true"></i>
                                    <p class="card-city text-secondary d-inline-block mb-0 watch">${result.watch}</p>
                                	<p class="card-city mb-0 text-right">${result.county}${result.district}</p>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>

				<div class="d-inline-block w-100">
<%--                 <p class="h3 float-left ml-3">搜尋結果 (${results.size()})</p> --%>
                <p class="h3 float-left ml-3">搜尋結果</p>
                <div class="button-group sort-by-button-group">
              		<button id="amountButton" class="btn btn-primary float-right h-100 my-0 mr-3 ml-2" data-sort-value="amount">價格(低到高)↑</button>
              		<button class="btn btn-primary float-right h-100 my-0 mx-2" data-sort-value="new">上架時間</button>
              		<button class="btn btn-primary float-right h-100 my-0 mx-2" data-sort-value="watch">瀏覽次數</button>
                </div>
                </div>
              
                <div class="h-100 mb-5" id="ajaxres">
<%--                  	<c:if test="${results.size() == 0}"><p class="h5 ml-3 mt-3">找不到符合的搜尋結果，請重新設定條件</p></c:if> --%>
<%--                 	<c:if test="${results.size() > 0}"><span class="h5 ml-3">以下為${param.searchInput}的搜尋結果</span></c:if>                 --%>
                <form class="w-100 grid" style="border-spacing: 20px;" id="results">
	                    <c:forEach varStatus="status" var="result" items="${results}">
	                      	    <a target="_blank" href="<c:url value='/buyer?productId=${result.productId}' />" class="text-dark text-decoration-none">
	                            <div class="card card-result element-item">
	                                <img class="card-img" src="<c:url value='/fs/img/${result.pic2}' />" alt="Card image cap">
	                                <div class="card-body search-card-body">
	                                	<span class="card-title new d-none">${result.productId}</span>
<%--                                 	<span class="card-title new d-none">${result.ad_date}</span> --%>
	                                    <span class="card-title">[${result.phoneSort}] </span>
	                                    <span class="card-title">${result.phoneType.label} </span>
	                                    <span class="card-title">${result.storage.label} </span>
	                                    <span class="card-title">${result.color.label}</span><br>
	                                    <p class="card-text d-inline-block mb-0">$</p>
	                                    <p class="card-text d-inline-block mb-0 amount"><fmt:formatNumber value="${result.amount}" type="number"/></p>
	                                    <i class="fa fa-eye fa-fw text-secondary mr-0" aria-hidden="true"></i>
	                                    <p class="card-watch text-secondary d-inline-block mb-0 watch">${result.watch}</p>
	                                	<p class="card-city mb-0 text-right">${result.county}${result.district}</p>
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
                            <form:input path="searchInput" class="searchTerm" name="searchInput" placeholder="請輸入關鍵字搜尋"/>
                            <button type="submit" class="searchButton"><i class="fa fa-search"></i>
                            </button>
                        </form:form>
                    </div>
                </div>

                <p class="h3">進階篩選</p>
                <form:form servletRelativeAction="/search/result" method="get"
                            enctype="application/x-www-form-urlencoded" modelAttribute="searchBean">
<!--                             <button type="submit" class="searchButton"></button> -->
                <div class="card">
                	<article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">交易地區</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" id="countyOption" items="${countyList}" path="checkOption" element="div"/>
                        	</div>
                        </div>
                    </article>
                
                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">機種</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" id="phoneTypeOption" items="${phoneTypeList}" path="checkOption" element="div"/>
                        	</div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">容量</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" id="storageOption" items="${storageList}" path="checkOption" element="div"/>
                        	</div>
                        </div>
                    </article>

                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">價格區間</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" items="${amountList}" path="checkAmountOption" element="div"/>
                        	</div>
                        </div>
                    </article>
                    
                    <article class="card-group-item">
                        <header class="card-header">
                            <label class="filter-title">交易方式</label>
                        </header>
                        <div class="pl-3 pr-3">
                        	<div class="card-body">
                        	<form:checkboxes class="form-check-input" items="${face}" path="checkdFaceOption" element="div"/>
                        	<form:checkboxes class="form-check-input" items="${post}" path="checkdPostOption" element="div"/>
                        	</div>
                        </div>
                    </article>


                </div>
                </form:form>
            </div>
        </div>
    </div>
    <!-- @@ JS -->
    <script src="<c:url value='/js/popper.js' />"></script>
    <script src="<c:url value='/js/owl.carousel.min.js' />"></script>
    <script src="<c:url value='/js/isotope.pkgd.min.js' />"></script>
    <script src="<c:url value='/js/owl.carousel.setting.js' />"></script>
    <script src="<c:url value='/js/search.js' />"></script>
</body>

</html>