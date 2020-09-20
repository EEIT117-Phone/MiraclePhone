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
<script src="<c:url value='/js/er.twzipcode.js' />"></script>
<script src="<c:url value='/js/er.twzipcode.data.js' />"></script>
<input id="importMsgInput" type="hidden" value=""/> 
<div  class="jumbotron">
<h1>${user.name} 歡迎回來</h1>
</div>
<div class="container">
<h1>會員資料</h1>
<table class="table table-bordered">
<thead>
<c:forEach items="${usercolumn}" var="column" begin="0" end="11">
<td><c:out value="${column}"/></td> <%--將後端傳來的column-name list用foreach印出 --%>
</c:forEach>
</thead>
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
<td>${user.status}</td>
<td>${user.seller}</td>
<td>${user.bankaccount}</td>
</tr>
</table>
<input id="userdata" type="hidden" value="${user}">

<div id="modifyarea" style="display:none" class="elegant-aero">
<font size="3">會員修改</font>
<form action="/MiraclePhone/usermodification" method="post" onsubmit="return checkform()" enctype="multipart/form-data">
<input id="account" name="account" type="hidden" value="${user.account}" >
<input id="status" type="hidden" name="status" value="user">
<input id="password" name="password" type="password" value="${user.password}">
<input id="name" name="name" type="text" value="${user.name}" >
<input id="idnumber" name="idnumber" type="text" value="${user.idnumber}" >
<input id="birth" name="birth" type="date" value="${user.birth}">
<input id="age" type="hidden" name="age" value="${user.age}">
<input type="text" id="bankaccount" name="bankaccount" value="${user.bankaccount}">

<br>
<select class="col-lg-3" name="county" aria-describedby="form-county" required=""></select> 
<select class="col-lg-3" name="district" aria-describedby="form-district" required=""></select>
<input class="d-none" name="zipcode" />
<br>
<input type="radio" id="seller" name="seller" value="seller" class="form-input">
<span id="seller_word">賣家</span>
<br>

<input type="file" accept="image/*" id="file" name="file" >
<img id="previewImg" name="previewImg" style="weight:100px; height:100px" src="">
<br>
<button class="btn btn-primary btn-lg btn-block" type="submit" id="submit" name="submit" >提交</button>
</form>
</div>
<div id="modifybutton-area">
<input type="button" id="modifybutton" name="modifybutton" value="修改使用者資訊" class="btn btn-primary"/> 
</div>

</div>
<script src="<c:url value='/js/usermain.js' />"></script>
</body>
</html>