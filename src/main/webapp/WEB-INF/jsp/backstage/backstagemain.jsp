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
  <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
    <a href="/MiraclePhone/backstage/customerContact" class="bottom btn btn-secondary" role="button" aria-pressed="true">客服回覆</a>
    <a href="/MiraclePhone/backstage" class="bottom btn btn-secondary" role="button" aria-pressed="true">商品管理</a>
    <a href="/MiraclePhone/backstage" class="b bottom btn btn-secondary" role="button" aria-pressed="true">會員管理</a>
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