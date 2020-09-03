<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Hello</title>
    <link href="<c:url value='/css/hello.css' />" rel="stylesheet">
</head>
<body>
    <div id="content" class="container">
        <form:form servletRelativeAction="/hello/search" method="post" enctype="application/x-www-form-urlencoded"
        	modelAttribute="searchBean">
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
                	<form:label path="types">訊息</form:label>
                    <div class="form-check">
                    	<form:checkboxes class="form-check-input" items="${types}" path="types" itemLabel="msg" element="div"/>
                    </div>
                </div>
            </div>
            <div class="form-row float-right">
            	<div class="form-group">
		            <input type="submit" class="btn btn-primary" value="查詢"/>
		            <input type="button" class="btn btn-primary" value="新增" onclick="javascript: location.href = '<c:url value='/hello/preInsert' />'"/>
            	</div>
            </div>
        </form:form>
        <table class="table">
			<thead>
				<tr>
					<th>序號</th>
					<th>訊息</th>
					<th>中文姓名</th>
					<th>英文姓名</th>
					<th>年紀</th>
					<th>功能</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach varStatus="status"  var="result"  items="${results}" >
				<tr>
					<td>${status.count}</td>
					<td>${result.type.msg}</td>
					<td>${result.name}</td>
					<td>${result.enName}</td>
					<td>${result.age}</td>
					<td>
						<input type="button" class="btn btn-primary" value="修改" onclick="javascript: location.href = '<c:url value='/hello/preUpdate?id=${result.id}' />'"/>
						<input type="button" class="btn btn-primary" value="刪除" onclick="javascript: location.href = '<c:url value='/hello/delete?id=${result.id}' />'"/>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
    </div>
</body>
</html>