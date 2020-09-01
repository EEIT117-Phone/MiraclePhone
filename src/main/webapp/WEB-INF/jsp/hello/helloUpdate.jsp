<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
	<title>helloUpdate</title>
	<!--     共用script css     -->
    <jsp:include page="/WEB-INF/jsp/template/common.jsp"></jsp:include>
    
    <link href="<c:url value='css/hello.css' />" rel="stylesheet">
</head>
<body>
	<!--     共用表頭匯入     -->
    <jsp:include page="/WEB-INF/jsp/template/header.jsp"></jsp:include>
    <!--     content     -->
	<div id="content" class="container">
        <form action="<c:url value='hello' />" method="post" enctype="application/x-www-form-urlencoded">
        	<input type="hidden" name="action" value="update" />
        	<!--     記得將物件的id參數帶到後端     -->
        	<input type="hidden" name="id" value="${result.id}" />
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>中文姓名</label>
                    <input type="text" name="name" class="form-control" value="${result.name}">
                </div>
                <div class="form-group col-md-6">
                    <label>英文姓名</label>
                    <input type="text" name="enName" class="form-control" value="${result.enName}">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label>年紀</label>
                    <input type="number" name="age" class="form-control" value="${result.age}">
                </div>
                <div class="form-group col-md-6">
                    <label>訊息</label>
                    <div class="form-check">
                    	<c:forEach varStatus="status"  var="type"  items="${types}" >
							<input type="radio" class="form-check-input" name="type" value="${type}" checked="${result.type == type}"><label class="form-check-label">${type.msg}</label>
							<br/>
						</c:forEach>
                    </div>
                </div>
            </div>
            <input type="submit" class="btn btn-primary" value="修改"/>
        </form>
    </div>
</body>
</html>