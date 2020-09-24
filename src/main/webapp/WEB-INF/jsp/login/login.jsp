<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>登入</title>
    <link href="<c:url value='/css/login.css' />" rel="stylesheet">
</head>
<body>
	
  <div class="body-login">
  		<h1 class="form-signin">登入</h1>
        <form:form servletRelativeAction="/userlogin" method="post" class="form-signin">
        <input type="text" name="useraccount" placeholder="會員帳號" class="form-control"><br/>
         <input type="password" name="userpassword" placeholder="會員密碼" class="form-control"><br/>
         <input type="hidden" id="lastpage" name="lastpage" value=""> 
         <button type="submit" class="btn btn-lg btn-primary btn-block">提交</button><br/>
         <button class="btn btn-primary "
   			onclick="javascript:location.href='http://localhost:8080/MiraclePhone/usersignup'" type="button">會員註冊
   		</button>
   			<label style="color:red" >${loginstatus}</label>
   			<button type="button" class="btn btn-primary" id="forgetpwd" name="forgetpwd">
   		忘記密碼
   		</button> 
        </form:form>
        
   		<div class="form-signin" id="forgetpwd_area" >
   		<form action="/MiraclePhone/userforget" id="forgetpwd_form" method="post">
   		<input type="email" id="checkaccount" name="checkaccount" placeholder="請輸入電子信箱" >
   		<input type="text" id="checkidnumber" name="checkidnumber" placeholder="請輸入身分證字號"> 
   		<input type="submit" class="btn  btn-primary " value="提交">
   		</form>
   		</div>
       
       </div >  	
      
<script src="<c:url value='/js/login.js' />"></script> 
</body>

</html>