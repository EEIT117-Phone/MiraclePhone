<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test File Upload</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<form action="upload" method="post" enctype="multipart/form-data">
		File 1 :<input type="file" name="file1" /><br> 
		File 2 :<input type="file" name="file2" /><br> 
		File 3 :<input type="file" name="file3" /><br> 
		
		<input type="submit" value="Upload" />
	</form>
	<br>
	<form action="download" method="get" >
	<div>
		<img src="/MiraclePhone/download?filename=10001_1" border=0
			width=100px />
	</div>
	</form>
</body>
</html>