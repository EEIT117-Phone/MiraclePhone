<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value='/css/signup.css' />" rel="stylesheet">
<title>註冊</title>
<script src="<c:url value='/js/signup.js' />"></script>
<!-- 地址表單外嵌 -->
<script src="<c:url value='/js/er.twzipcode.js' />"></script>
<script src="<c:url value='/js/er.twzipcode.data.js' />"></script>
</head>
<body>
<div id="signuptitle">
			<h1>會員資料填寫</h1>
</div>
<div class="all-form">
		<form:form servletRelativeAction="/usersignup" method="post" id="makeUser" class="form-writein" onsubmit="return checkform()" enctype="multipart/form-data">
			<div class="form-writein">
			<input id="account" type="text" name="account" placeholder="電子郵件"
					value="" class="form-input"  placeholder="帳號"  />
			</div>
			<div class="form-writein">
			<input id="password" type="text" name="password" class="form-input"
					value="" placeholder="密碼4~16位含數字、特殊符號、大小寫英文" size="35"/>
				<span id="pwdsure"></span>
			</div>
			<div class="form-writein">
				<input id="idnumber" type="text" name="idnumber" class="form-input"
					value="" placeholder="身分證字號">
			<span id="sureidnumber"></span>
			</div>
			<div class="form-writein">
				<input id="name" type="text" name="name" class="form-input"
					value="" placeholder="中文姓名" />
			</div>
			<div class="form-writein">
				性別<select id="sex" name="sex">
					<option value="man">男</option>
					<option value="woman">女</option>
					<option value="othersex">其他</option>
				</select>
			</div>
			<div class="form-writein">
				生日<input id="birth" type="date" name="birth" value="" class="form-input" />
			</div>
			<div class="form-writein">
				年齡:<input id="age" name="age" value=" " class="form-input"/>
			</div>
			<div class="form-writein">
			<input type="text" id="bankaccount" name="bankaccount" value="" placeholder="銀行帳號" >
			</div>
			<div class="row pl-3 pr-3">
				<label class="col-form-label" for="twzipcode">寄送地址（必填）</label>
			<div class="row pl-3 pr-3" id="twzipcode">
				<select class="col-lg-5" name="county"
						aria-describedby="form-county" required="">
				</select> 
				<select
						class="col-lg-5"  name="district"
						aria-describedby="form-district" required="">
				</select>
					<input class="col-lg-8" id="address" type="text"
						name="address" aria-describedby="form-address-input" required=""
						placeholder="路, 巷, 門牌, 樓層" /> 
					<input class="d-none" name="zipcode" />
			</div>
			</div>
			<br>
			
			<div class="form-writein">
			權限開通<br>
			<input type="hidden" id="gm" name="gm" value=" " class="form-input">
			<input type="radio" id="seller" name="seller" value="seller" class="form-input">
			<span id="seller_word">賣家</span><br>
			</div>
			
			<div class="form-writein">
				<input type="checkbox" value="免責聲明" class="form-input" />我已看過<a href="">免責聲明</a><br />
			</div>
			<div class="form-writein">
				<input type="submit" id="submit" name="submit" value="繳交"  class="form-input"/>
			</div>
		</form:form>
	</div>	
	
	<div class="form-writein">
			大頭照
			<form id="sendimg" name="sendimg" action="/MiraclePhone/usersignupimg" method="post"  enctype="multipart/form-data" >
			<input accept="image/jpeg" id="uploadimg" name="uploadimg" type="file">
			<img id="previewImg" name="previewImg" style="weight:100px; height:100px" src="">
 			<input type="hidden" id="imagename" name="imagename"> <!--放實際圖片url的地方	 -->
 			<input type="submit" id="test" name="test" value="check" >
 			</form>
			</div>
		
	

</body>
</html>