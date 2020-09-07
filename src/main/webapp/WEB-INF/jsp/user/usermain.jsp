<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/css/usermain.css' />" rel="stylesheet">
<meta charset="UTF-8">
<title>會員資料</title>
</head>
<body>
<script type="text/javascript"></script>
<script src="<c:url value='/js/usermain.js' />"></script>
<div class="welcome">
<h1>歡迎回來,${useraccount}</h1>
</div>
<table class="userDataTable">
<tr>
<td>會員帳號</td>
<td>${user.account}</td>
</tr>
<tr>
<td>會員姓名</td>
<td>${user.name}</td>
</tr>
<tr>
<td>會員住址</td>
<td id="address"></td>
</tr>
<tr>
<td>買家權限</td>
<td>${user.buyer}</td>
</tr>
<tr>
<td>賣家權限</td>
<td>${user.seller}</td>
</tr>
</table>

<input id="usercounty" type="hidden" value="${user.county}">
<input id="userdistrict" type="hidden" value="${user.district}">
<input id="userzipcode" type="hidden" value="${user.zipcode}">

</body>
</html>