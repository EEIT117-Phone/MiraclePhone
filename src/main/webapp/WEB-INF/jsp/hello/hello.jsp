<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
	<title>Hello</title>
	<!--     共用script css     -->
    <jsp:include page="/WEB-INF/jsp/template/common.jsp"></jsp:include>
    
    <link href="<c:url value='css/hello.css' />" rel="stylesheet">
</head>
<body>
	<!--     共用表頭匯入     -->
    <jsp:include page="/WEB-INF/jsp/template/header.jsp"></jsp:include>
    <!--     content     -->
	<div id="content" class="container">
		<div class="list-group text-center">
		  <a href="hello?page=search" class="list-group-item list-group-item-action">搜尋</a>
		  <a href="hello?page=findOne" class="list-group-item list-group-item-action">單一筆</a>
		  <a href="hello?page=insert" class="list-group-item list-group-item-action">新增</a>
		  <a href="hello?page=update" class="list-group-item list-group-item-action">修改</a>
		  <a href="hello?page=delete" class="list-group-item list-group-item-action">刪除</a>
		</div>
	</div>
</body>
</html>