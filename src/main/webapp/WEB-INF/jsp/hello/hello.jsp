<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="<c:url value='css/bootstrap.min.css' />" rel="stylesheet">
	<title>Hello</title>
	<style type="text/css">
		#mainTable {
			background-image: url(<c:url value='images/右側.jpg' />);
			background-size: cover;
			background-position: center;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>${name}這是一個DEMO的JSP</h1>
		<br/>
		<h6>使用jstl c:url 與 c:forEach</h6>
		<br/>
		<table id="mainTable" class="table">
			<thead>
				<tr>
					<th>訊息</th>
					<th>中文姓名</th>
					<th>英文姓名</th>
					<th>年紀</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach varStatus="status"  var="hello"  items="${hellos}" >
				<tr>
					<td>${hello.type.msg}</td>
					<td>${hello.name}</td>
					<td>${hello.enName}</td>
					<td>${hello.age}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>