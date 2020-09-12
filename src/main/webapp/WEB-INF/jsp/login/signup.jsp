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
</head>
<body class="bg-light">
	<div class="container">
		<div class="py-5 text-center">
			<h2>會員註冊</h2>
			<p class="lead">歡迎來到銷售奇機，請輸入個人資料</p>
		</div>

		<div class="row">
			<div class="col-md-4 order-md-2 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">待放</span> <span
						class="badge badge-secondary badge-pill">N1</span>
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">A1</h6>
							<small class="text-muted">A2</small>
						</div> <span class="text-muted">A3</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">B1</h6>
							<small class="text-muted">B2</small>
						</div> <span class="text-muted">B3</span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">C1</h6>
							<small class="text-muted">C2</small>
						</div> <span class="text-muted">C3</span>
					</li>
					<li class="list-group-item d-flex justify-content-between bg-light">
						<div class="text-success">
							<h6 class="my-0">D1</h6>
							<small>D2</small>
						</div> <span class="text-success">D3</span>
					</li>
					<li class="list-group-item d-flex justify-content-between"><span>E1</span>
						<strong>E2</strong></li>
				</ul>

				<form class="card p-2">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Promo code">
						<div class="input-group-append">
							<button type="submit" class="btn btn-secondary">Redeem</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">個人資料</h4>
				<form class="needs-validation" novalidate  action="/MiraclePhone/usersignup" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="firstName">中文姓名</label> <input type="text"
								class="form-control" name="name" id="NAME" placeholder=""
								value="" required>
							<div class="invalid-feedback">我的名字呢?嗚嗚</div>
						</div>

					</div>

					<div class="mb-3">
						<label for="username">帳號(Email)</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text">@</span>
							</div>
							<input type="text" class="form-control" id="account"
								name="account" placeholder="請輸入電子信箱" required>
							<div class="invalid-feedback" style="width: 100%;">帳號跟愛情一樣不能空白</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="password">密碼<span class="text-muted">(password)</span></label>
						<input type="password" class="form-control" id="password"
							placeholder="密碼4~16位含數字、特殊符號、大小寫英文">
						<div class="invalid-feedback">你的密碼人家才不感興趣呢!</div>
					</div>
					<div class="mb-4">
					<label for="address">住址</label>
						<div id="twzipcode"></div>
					</div>
					<div class="mb-3">
					<label for="idnumber">身分證字號<span class="text-muted"></span></label>  
					<input id="idnumber" type="text" name="idnumber" class="form-control"
					value="">
						<span id="sureidnumber"></span>
					</div>
					<div class="mb-3">
        	<h4>生日</h4>
			<input type="hidden" id="age" name="age" value=" " class="custom-control-input">
			<input type="date" id="birth" name="birth" value="">
			 	
		</div>	
        <h4 class="mb-3">性別</h4>
        <div class="d-block my-3">
          <div class="custom-control custom-radio">
            <input id="man" name="sex" type="radio" class="custom-control-input" >
            <label class="custom-control-label" for="man">男</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="woman" name="sex" type="radio" class="custom-control-input" >
            <label class="custom-control-label" for="woman">女</label>
          </div>
          <div class="custom-control custom-radio">
            <input id="other" name="sex" type="radio" class="custom-control-input" checked = "checked">
            <label class="custom-control-label" for="other">其他</label>
          </div>
        </div>
        <h4 class="mb-3">上傳大頭貼</h4>
        <div class="d-block my-3">
          <input type="file" accept="image/*" name="file">
        </div>
        <div class="mb-3">
        	<h4>賣家權限</h4>
			<input type="hidden" id="gm" name="gm" value=" " class="custom-control-input">
			<input type="radio" id="seller" name="seller" value="seller">
			 <span>須年滿18歲才能勾選成為賣家</span>		
		</div>

<button class="btn btn-primary btn-lg btn-block" type="submit">提交</button>
				</form>
			</div>
		</div>


	</div>
	
<!-- 	<div class="form-writein"> -->
<!-- 			大頭照 -->
<%-- 			<form id="sendimg" name="sendimg" action="/MiraclePhone/usersignupimg" method="post"  enctype="multipart/form-data" > --%>
<!-- 			<input accept="image/jpeg" id="uploadimg" name="uploadimg" type="file"> -->
<!-- 			<img id="previewImg" name="previewImg" style="weight:100px; height:100px" src=""> -->
<!--  			<input type="hidden" id="imagename" name="imagename"> 放實際圖片url的地方	 -->
<!--  			<input type="submit" id="test" name="test" value="check" > -->
<%--  			</form> --%>
<!-- 			</div> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
	<script src="<c:url value='/js/signup1.js' />"></script>
	<script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
		
	

</body>
</html>