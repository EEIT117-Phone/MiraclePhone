<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userLogin</title>
</head>
<body>
<form action="/MiraclePhone/LoginServlet" method="post">

會員帳號:<input type="text" name="useraccount" value="ken1234@yahoo.com"><br/>
會員密碼:<input type="text" name="userpassword" value="Kk@12345656"><br/>

<input type="submit" value="提交">
<% String status=(String)request.getAttribute("logStatus"); %>
<input id="getStatus" name="getStatus" value="<%=status %>"/>
<span id="status"></span>
</form>
<script type="text/javascript">
let status=document.getElementById("getStatus").value //將登入後失敗或成功結果顯示在<span>內
let writeStatus=document.getElementById("status")
writeStatus.innerHTML(status)
</script>
</body>
</html>