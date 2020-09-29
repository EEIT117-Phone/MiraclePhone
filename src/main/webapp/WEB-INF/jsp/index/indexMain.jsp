<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>銷售奇機</title>
    <link href="<c:url value='/css/index.css' />" rel="stylesheet">
	<script src="<c:url value='/js/index.js' />"></script>

</head>
<body>
    <div class="cobtainer">
        <ul class="pictureslides">
            
            <li><img src="<c:url value='/images/index2.webp' />" alt=""></li>
            <li><img src="<c:url value='/images/index3.png' />" alt=""></li>
            <li><img src="<c:url value='/images/indexiphone.jpg' />" alt=""></li>
            <li><img src="<c:url value='/images/iphoneindex4.jpg' />" alt=""></li>
        </ul>
        <div id="inputarea">
            <form id="test" action="<c:url value='/search/result' />" method="get">
               	<h1 >在這找到您的手機</h1>
                <input id="search" type="text" name="searchInput" style="font-size:20px" size=50 autofocus placeholder="請輸入關鍵字(iphone機種，預算，容量，地點)">
                <br>
                
            </form>
        </div>
        <ul class="dot">
            <li id="1"></li>
            <li id="2"></li>
            <li id="3"></li>
            <li id="4"></li>
        </ul>
    </div>
    <div class="container marketing">
        <!-- Three columns of text below the carousel -->
        
        <!-- START THE FEATURETTES -->
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">精選全新機推薦 <span class="text-muted"></span></h2>
                <p class="lead">全新機也就是官方等正規渠道售賣的機子，全新機無論是機頭還是配件、盒子等都是正規廠商生產，全新原封就是全新的，配件等都沒有拆封使用過，官方售賣以及經銷商等正規售賣點代為售賣所取得的。

</p>
            </div>
            <div class="col-md-5">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                    height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                     
                     <a href="<c:url value='/search/result?vip=VIP&phoneSort=全新機' />" class="text-decoration-none">
                     <image xlink:href="<c:url value='/images/iphonenew.jpg' />"
    														width="100%" height="100%"/>
    														</a> 
                    
    													
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading">精選二手機推薦<span class="text-muted"></span></h2>
                <p class="lead">二手機一般指曾被購買，且已拆封被使用過的手機。
								價格會比全新機為低，一般會與貨品的外觀與損耗程度成比例。

</p>
            </div>
            <div class="col-md-5 order-md-1">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="600"
                    height="600" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                   
                   	<a href="<c:url value='/search/result?vip=VIP&phoneSort=二手機' />" class="text-decoration-none">
                     <image xlink:href="<c:url value='/images/iphoneSEsecond.jpg' />"
    														width="100%" height="100%"/>
    														</a>
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">精選零件機推薦 <span class="text-muted"></span></h2>
                <p class="lead">指手機無法正常使用，可能無法開機，螢幕壞損嚴重，使用者不想修理故出售，這類型的手機可以
                	作為其他手機維修時所需要的零件來源。
                </p>
            </div>
            <div class="col-md-5">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                    height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                     <a href="<c:url value='/search/result?vip=VIP&phoneSort=零件機' />" class="text-decoration-none">
                     <image xlink:href="<c:url value='/images/iPhoneParts.jpeg' />"
    														width="100%" height="100%"/>
    														</a>
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <!-- /END THE FEATURETTES -->
    </div><!-- /.container -->
</body>
</html>