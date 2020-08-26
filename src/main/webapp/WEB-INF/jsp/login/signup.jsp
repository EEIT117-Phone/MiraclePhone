<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
	<title>註冊</title>
 	<jsp:include page="/WEB-INF/jsp/template/common.jsp"></jsp:include>
    <!--     customize script css     -->
    <link href="<c:url value='css/signup.css' />" rel="stylesheet">
	<script src="<c:url value='js/signup.js' />"></script>
	
	<script src="<c:url value='js/er.twzipcode.js' />"></script>
	<!-- 地址表單外嵌 -->
	<script src="<c:url value='js/er.twzipcode.data.js' />"></script>
</head>
<body>
<body>
	<!--     共用表頭匯入     -->
	<jsp:include page="/WEB-INF/jsp/template/header.jsp"></jsp:include>
	<!--     content     -->
	<h1>會員註冊</h1>
	<form id="userform" action="<c:url value='signup' />"
		method="post">
		<p>
			帳號<input id="account" type="text" name="account" placeholder="電子郵件"
				value="ken1234@yahoo.com"> 密碼<input id="password"
				type="text" name="password" value="Kk@12345656"
				placeholder="4~16位含數字、特殊符號、大小寫英文" size="35"> <span
				id="pwdsure"></span> 身分證字號<input id="idnumber" type="text"
				name="idnumber" value="A177806520"> <span id="sureidnumber"></span>

			中文姓名<input id="chinesename" type="text" name="chinesename" value="卓卓">


			性別<select id="sexchoose" name="sexchoose">
				<option value="man">男</option>
				<option value="woman">女</option>
				<option value="othersex">其他</option>
			</select> 生日<input id="birth" type="date" name="birth" value="2002-08-11">
			年齡:<input id="age" name="age" value="">
		</p>


		<p>
			<select name="county"></select> <label>縣市</label> <select
				name="district"></select> <label>鄉鎮市區</label> <input id="zipcode"
				name="zipcode" type="text" value=""> <label for="zipcode">郵遞區號</label>
		</p>
		<br>
		<p>
		<h3>買賣權限</h3>
		<input type="checkbox" id="buyer" name="buyer" value="buyer">買家

		<input type="checkbox" id="seller" name="seller" value="seller"><span
			id="seller_word">賣家</span>
		<p>
			<input type="file" id="file-photo" name="file-photo" accept="image/*"
				multiple="multiple" /><span id="photo_word">照片</span>

		</p>
		<h3>免責聲明</h3>
		<p id="disclaimer">本網頁所載的所有資料、商標、標誌、圖像、短片、聲音檔案、連結及其他資料等（以下簡稱「資料」），只供參考之用，信興電器貿易有限公司（以下簡稱「本公司」）將會隨時更改資料，並由本公司決定而不作另行通知。雖然本公司已盡力確保本網頁的資料準確性，但本公司不會明示或隱含保證該等資料均為準確無誤。本公司不會對任何錯誤或遺漏承擔責任。
			本公司不會對使用或任何人士使用本網頁而引致任何損害（包括但不限於電腦病毒、系統固障、資料損失）承擔任何賠償。本網頁可能會連結至其他機構所提供的網頁，但這些網頁並不是由本公司所控制。本公司不會對這些網頁所顯示的內容作出任何保證或承擔任何責任。閣下如瀏覽這些網頁，將要自己承擔後果。</p>
		<input type="checkbox" value="免責聲明">我已看過免責聲明<br /> <input
			type="submit" id="submit" name="submit" value="繳交">
	</form>
	<!--     共用頁尾匯入     -->
	<jsp:include page="/WEB-INF/jsp/template/footer.jsp"></jsp:include>
</body>

</html>