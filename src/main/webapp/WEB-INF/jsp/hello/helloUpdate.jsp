<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>helloUpdate</title>
    <link href="<c:url value='/css/hello.css' />" rel="stylesheet">
</head>
<body>
    <!--     content     -->
	<div id="content" class="container">
        <form:form servletRelativeAction="/hello/update" method="post" enctype="application/x-www-form-urlencoded"
        	modelAttribute="result">
        	<!--     記得將物件的id參數帶到後端     -->
        	<form:hidden path="id" />
            <div class="form-row">
                <div class="form-group col-md-6">
                    <form:label path="name">中文姓名</form:label>
                    <form:input path="name" class="form-control"/>
                </div>
                <div class="form-group col-md-6">
                    <form:label path="enName">英文姓名</form:label>
                    <form:input path="enName" class="form-control"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <form:label path="age">年紀</form:label>
                    <form:input type="number" path="age" class="form-control"/>
                </div>
                <div class="form-group col-md-6">
                   <form:label path="type">訊息</form:label>
                    <div class="form-check">
                    	<form:radiobuttons class="form-check-input" items="${types}" path="type" itemLabel="msg" element="div"/>
                    </div>
                </div>
            </div>
            <div class="form-row">
            	<div class="form-group">
	            	<input type="submit" class="btn btn-primary" value="儲存"/>
	            	<input type="button" class="btn btn-primary" value="返回" onclick="javascript: location.href = '<c:url value='/hello' />'"/>
            	</div>
            </div>
        </form:form>
    </div>
</body>
</html>