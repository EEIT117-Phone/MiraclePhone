<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>登入</title>
    <link href="<c:url value='/css/login.css' />" rel="stylesheet">
    <script src="<c:url value='/js/login.js' />"></script>
</head>

<body>

  <div class="body-login">
  		<h1 class="form-signin">請輸入帳號資訊</h1>
        <form:form servletRelativeAction="/user/userLogin" method="post" class="form-signin">
        <input type="text" name="useraccount" placeholder="會員帳號" class="form-control"><br/>
         <input type="text" name="userpassword" placeholder="會員密碼" class="form-control"><br/>
         <button type="submit" class="btn btn-lg btn-primary btn-block">提交</button><br/>
       	<label>登陸狀態:${loginstatus}</label> 
        </form:form>
       </div>  	 
    
</body>

</html>