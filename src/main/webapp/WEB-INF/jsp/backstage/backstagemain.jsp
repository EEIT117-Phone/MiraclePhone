<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>後台管理</title>
<link href="<c:url value='/css/backstageMain.css' />" rel="stylesheet">

</head>


<body>
<div id="content">

  <nav id="nav">
  <div class="btn-group-vertical dropright" role="group" aria-label="Vertical button group">
    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">客服回覆</button>
    <a href="/MiraclePhone/backstage" class="bottom btn btn-secondary" role="button" aria-pressed="true">商品管理</a>
    <a href="/MiraclePhone/backstage" class="b bottom btn btn-secondary" role="button" aria-pressed="true">會員管理</a>
  
  	<div class="dropdown-menu">
      <a class="dropdown-item" href="/MiraclePhone/backstage/customerContact?selectq1=賣家相關&selectq2=商品規格疑問">賣家相關</a>
      <a class="dropdown-item" href="/MiraclePhone/backstage/customerContact?selectq1=配送問題&selectq2=配送時長">配送問題</a>
      <a class="dropdown-item" href="/MiraclePhone/backstage/customerContact?selectq1=會員相關&selectq2=修改會員資料">會員相關</a>
      <a class="dropdown-item" href="/MiraclePhone/backstage/customerContact?selectq1=退貨及退款&selectq2=退貨進度查詢">退貨及退款</a>
    </div>
  
  </div>
  </nav>
  
  <main id="main">
  	<div style="text-align:center;line-height:60px; ">
	歡迎來到後台管理系統!
	</div>



  </main>
  
</div>
</body>
</html>