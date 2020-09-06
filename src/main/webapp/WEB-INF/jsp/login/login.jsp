<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>登入</title>
<!--     customize script css     -->
<link href="/MiraclePhone/css/login.css" rel="stylesheet">
<script src="/MiraclePhone/js/login.js"></script>

</head>
<body>
	<div>
		<form:form action="/MiraclePhone/user/userLogin" method="post" class="form-signin">
			<input type="email" name="useraccount" value="" placeholder="會員帳號" class="form-control"><br />
			<input type="password" name="userpassword" value="" placeholder="會員密碼" class="form-control"><br />
			<button type="submit" class="btn btn-lg btn-primary btn-block">提交</button>
		</form:form>
	</div>
	<div>
		登陸狀態 <span>${loginstatus}</span>
	</div>
</body>
</html>