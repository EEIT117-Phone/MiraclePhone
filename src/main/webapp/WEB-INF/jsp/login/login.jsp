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
    <div>
        <form:form servletRelativeAction="/user/userLogin" method="post">
            會員帳號:<input type="text" name="useraccount" value="ken1234@yahoo.com"><br />
            會員密碼:<input type="text" name="userpassword" value="Kk@12345656"><br />
            <input type="submit" value="提交">
        </form:form>
    </div>
    <div>
        登陸狀態 <span>${loginstatus}</span>
    </div>
</body>

</html>