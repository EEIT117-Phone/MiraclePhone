<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value="/buyer/answerpage"/>" method="POST">
		<textarea rows="5" cols="50" name="text"></textarea>
			<br> <input type="submit" value="提交" >
	</form>
</body>
</html>