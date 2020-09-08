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

<div class="welcome">
<h1>歡迎回來,${user.account}</h1>
</div>
<h1>會員資料</h1>
<table class="userDataTable">
<tr>
<c:forEach items="${usercolumn}" var="column" begin="0" end="11">
<td><c:out value="${column}"/></td> <%--將後端傳來的column-name list用foreach印出 --%>
</c:forEach>
</tr>
<tr>
<td>${user.account}</td>
<td>${user.password}</td>
<td>${user.name}</td>
<td>${user.idnumber}</td>
<td>${user.sex}</td>
<td>${user.age}</td>
<td>${user.birth}</td>
<td>${user.county}</td>
<td>${user.district}</td>
<td>${user.zipcode}</td>
<td>${user.seller}</td>
<td>${user.buyer}</td>
</tr>
</table>
<input id="userdata" type="hidden" value="${user}">

<div id="modifyarea" style="display:none">
<form action="/MiraclePhone/user/" method="post">
<span>密碼</span><input id="password" name="password" value="${user.password}" >
<span>姓名</span><input id="name" name="name" value="${user.name}" >
<span>身分證字號</span><input id="idnumber" name="idnumber" value="${user.idnumber}" >
<span>性別</span><input id="sex" name="sex" value="${user.sex}" >
<span>生日</span><input id="birth" name="birth" value="${user.birth}" >

<input type="submit" value="提交修改" >

</form>
</div>
<div id="modifybutton-area">
<input type="button" id="modifybutton" name="modifybutton" value="修改使用者資訊" /> 
</div>






<script src="<c:url value='/js/usermain.js' />"></script>
</body>
</html>