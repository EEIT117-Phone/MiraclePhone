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
            <li><img src="<c:url value='/images/iphone.jpg' />" alt=""></li>
            <li><img src="<c:url value='/images/iPhone11.jpg' />" alt=""></li>
            <li><img src="<c:url value='/images/iphonelots.jpg' />" alt=""></li>
            <li><img src="<c:url value='/images/iphoneseconds.jpg' />" alt=""></li>
        </ul>
        <div id="inputarea">
            <form id="test" action="<c:url value='/search/result' />" method="POST">
                <h2>快速找到您的手機</h2>
                <input id="search" type="text" name="searchInput" size=50 autofocus placeholder="請輸入關鍵字(iphone機種，預算，容量)">
                <br>
                <input type="submit" value="Search" style="background-color:	#019858;font-family:cursive ;">
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
        <div class="row">
            <div class="col-lg-4">
                <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                    xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
                    aria-label="Placeholder: 140x140">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777"
                        dy=".3em">140x140</text>
                </svg>
                <h2>全新機</h2>
                <p>這裡賣的是全新機</p>
                <p><a class="btn btn-secondary" href="https://getbootstrap.com/docs/4.5/examples/carousel/#"
                        role="button">點此前往
                        »</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                    xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
                    aria-label="Placeholder: 140x140">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777"
                        dy=".3em">140x140</text>
                </svg>
                <h2>中古機</h2>
                <p>這裡賣的是中古機
                </p>
                <p><a class="btn btn-secondary" href="https://getbootstrap.com/docs/4.5/examples/carousel/#"
                        role="button">點此前往
                        »</a></p>
            </div><!-- /.col-lg-4 -->
            <div class="col-lg-4">
                <svg class="bd-placeholder-img rounded-circle" width="140" height="140"
                    xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
                    aria-label="Placeholder: 140x140">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777"
                        dy=".3em">140x140</text>
                </svg>
                <h2>零件機</h2>
                <p>這裡賣的是零件機</p>
                <p><a class="btn btn-secondary" href="https://getbootstrap.com/docs/4.5/examples/carousel/#"
                        role="button">點此前往
                        »</a></p>
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
        <!-- START THE FEATURETTES -->
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">精選全新機推薦 <span class="text-muted"></span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis
                    euismod
                    semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac
                    cursus
                    commodo.</p>
            </div>
            <div class="col-md-5">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                    height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                        dy=".3em">500x500</text>
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7 order-md-2">
                <h2 class="featurette-heading">精選中古機推薦<span class="text-muted"></span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis
                    euismod
                    semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac
                    cursus
                    commodo.</p>
            </div>
            <div class="col-md-5 order-md-1">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                    height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                        dy=".3em">500x500</text>
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
                <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis
                    euismod
                    semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac
                    cursus
                    commodo.</p>
            </div>
            <div class="col-md-5">
                <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500"
                    height="500" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice"
                    focusable="false" role="img" aria-label="Placeholder: 500x500">
                    <title>Placeholder</title>
                    <rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa"
                        dy=".3em">500x500</text>
                </svg>
            </div>
        </div>
        <hr class="featurette-divider">
        <!-- /END THE FEATURETTES -->
    </div><!-- /.container -->
</body>
</html>