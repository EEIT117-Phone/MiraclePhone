<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Test File Upload</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
    <form action="<c:url value='/fs/upload' />" method="post" enctype="multipart/form-data">
        File 1 :<input type="file" name="files" /><br>
        File 2 :<input type="file" name="files" /><br>
        File 3 :<input type="file" name="files" /><br>
        File 4 :<input type="file" name="files" /><br>
        File 5 :<input type="file" name="files" /><br>
        File 6 :<input type="file" name="files" /><br>
        <input type="submit" value="Upload" />
    </form>
    <br>
    <form action="download" method="get">
        <div>
            <img src="<c:url value='/fs/img/1' />" border="0" width="100px" height="100px"/>
            <img src="<c:url value='/fs/img/2' />" border="0" width="100px" height="100px"/>
            <img src="<c:url value='/fs/img/3' />" border="0" width="100px" height="100px"/>
            <img src="<c:url value='/fs/img/4' />" border="0" width="100px" height="100px"/>
            <img src="<c:url value='/fs/img/5' />" border="0" width="100px" height="100px"/>
            <img src="<c:url value='/fs/img/6' />" border="0" width="100px" height="100px"/>
        </div>
    </form>
</body>

</html>