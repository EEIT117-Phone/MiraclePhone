<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0051)https://getbootstrap.com/docs/4.5/examples/product/ -->
<html lang="zh-Hans-TW">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.0.1">
<title>賣家刊登頁面</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/product/">

<!-- Bootstrap core CSS -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/product/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.5/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/safari-pinned-tab.svg"
	color="#563d7c">
<link rel="icon"
	href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon.ico">
<meta name="msapplication-config"
	content="/docs/4.5/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">
<link
	href="https://getbootstrap.com/docs/4.5/examples/product/product.css"
	rel="stylesheet">
<link
	href="https://getbootstrap.com/docs/4.5/examples/carousel/carousel.css"
	rel="stylesheet">
<!-- twZip -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<script type="text/javascript">
	//圖片預覽
	function setImagePreviews(avalue) {
		var docObj = document.getElementById("doc");
		var dd = document.getElementById("dd");
		dd.innerHTML = "";
		var fileList = docObj.files;
		for (var i = 0; i < fileList.length; i++) {
			dd.innerHTML += "<div style='float:left' > <img id='img" + i + "'  /> </div>";
			var imgObjPreview = document.getElementById("img" + i);

			if (docObj.files && docObj.files[i]) {
				imgObjPreview.style.display = 'block';
				imgObjPreview.style.width = '200px';
				imgObjPreview.style.height = '180px';
				imgObjPreview.src = window.URL.createObjectURL(docObj.files[i]);
			} else {
				docObj.select();
				var imgSrc = document.selection.createRange().text;
				var localImagId = document.getElementById("img" + i);
				localImagId.style.width = "200px";
				localImagId.style.height = "180px";
				try {
					localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
					localImagId.filters
							.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
				} catch (e) {
					alert("您上傳的圖片格式不正確，請重新選擇!");
					return false;
				}
				imgObjPreview.style.display = 'none';
				document.selection.empty();
			}
		}
		return true;
	}
</script>


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

form {
	border-left: black 2px solid;
	border-right: black 2px solid;
	background-color: wheat;
	margin: 0px 350px 0px 350px;
	padding: 5px;
	position: relative;
}

hr {
	border: black 1px solid;
	padding: 0px;
	margin: 0px;
}

.img {
	max-width: 150px;
	max-height: 150px;
	margin: 5px;
}
</style>
<!-- Custom styles for this template -->
<link href="../css/productWen.css" rel="stylesheet">

</head>

<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<div
				class="container d-flex flex-column flex-md-row justify-content-between"
				style="position: sticky; top: 0; left: 0">
				<a class="py-2" aria-label="Product" style="color: white"> 銷售奇機
				</a> <a class="py-2 d-none d-md-inline-block"></a> <a
					style="color: white">客服專區</a> <a style="color: white">購物車</a> <a
					style="color: white">會員專區</a> <a style="color: white">登入</a> <a
					style="color: white">註冊</a>
			</div>
		</nav>
	</header>
	<hr>



	<div>
		<form method="GET" class="form1" action="">
			<fieldset>
				<legend>手機刊登</legend>
				<label for="phoneType">機種:</label> <select id="phoneType">
					<option>iPhone 6</option>
					<option>iPhone 6 Plus</option>
					<option>iPhone 6s</option>
					<option>iPhone 6s Plus</option>
					<option>iPhone SE (第一代)</option>
					<option>iPhone 7</option>
					<option>iPhone 7 Plus</option>
					<option>iPhone 8</option>
					<option>iPhone 8 Plus</option>
					<option>iPhone X</option>
					<option>iPhone XR</option>
					<option>iPhone XS</option>
					<option>iPhone XS Max</option>
					<option>iPhone 11</option>
					<option>iPhone 11 Pro</option>
					<option>iPhone 11 Pro Max</option>
					<option>iPhone SE (第二代)</option>
				</select> <br> <label for="phoneSort">分類:</label> <select id="phoneSort">
					<option>全新機</option>
					<option>二手機</option>
					<option>零件機</option>
				</select> <br> <label for="phoneCondition">機況:</label> <select
					id="phoneCondition">
					<option>整新機</option>
					<option>9成新</option>
					<option>7成新</option>
					<option>6成新</option>
				</select> <br> <label for="phoneWarranty">保固狀況:</label> <select
					id=phoneWarranty>
					<option>無保固</option>
					<option>一年保固</option>
					<option>保固未滿一年</option>
				</select> <br> <label>配件:</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxHeadphone" name="headphone" value="耳機">
					<label class="form-check-label" for="inlineCheckboxHeadphone">耳機</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxSocket" name="socket" value="插座"> <label
						class="form-check-label" for="inlineCheckboxSocket">插座</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxPlug" name="plug" value="插頭"> <label
						class="form-check-label" for="inlineCheckboxPlug">插頭</label>
				</div>
				<br /> <label>交易方式(複選):</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxOK" name="ok" value="OK"> <label
						class="form-check-label" for="inlineCheckboxOK">OK</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox7-11" name="seven" value="7-11"> <label
						class="form-check-label" for="inlineCheckbox7-11">7-11</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxFamily" name="family" value="全家"> <label
						class="form-check-label" for="inlineCheckboxFamily">全家</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxLife" name="life" value="萊爾富"> <label
						class="form-check-label" for="inlineCheckboxLife">萊爾富</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxPost" name="post" value="郵寄"> <label
						class="form-check-label" for="inlineCheckboxPost">郵寄</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxDelivery" name="delivery" value="宅配"> <label
						class="form-check-label" for="inlineCheckboxDelivery">宅配</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckboxFace" name="face" value="面交"> <label
						class="form-check-label" for="inlineCheckboxFace">面交</label>
				</div>
				<br> <br> <label for="yearOfManufacture">出廠年份:</label> <input
					id="yearOfManufacture" type="month" name="" min="2007-06"
					max="2020-10" value="2020-10"> <br> <label>
					<div id="twzipcode">交易地點:</div>
				</label> <br> <label for="amount">銷售金額:</label> <input type="number"
					max="50000" min="0" value="8000" step="100"> <br> <label
					for="sellReason">銷售原因以及備註:</label><br>
				<textarea placeholder="請輸入銷售原因&備註 (上限100字)" maxlength="100"
					style="width: 300px; height: 200px;" id="sellReason"></textarea>
				<br>
				<div
					style="margin: 0px auto; width: 400px; height: 600px; position: absolute; top: 0px; left: 550px;">
					<input type="file" name="file" id="doc" multiple="multiple"
						style="width: 150px;" onchange="javascript:setImagePreviews();"
						accept="image/*" />
					<div id="dd"
						style="width: 450px; position: relative; top: 0x; left: 0px;"></div>
				</div>
				<label> <input type="submit"><input type="reset">
				</label>
			</fieldset>
		</form>
	</div>
	<hr>
	<footer class="container py-5">
		<div class="row">
			<div class="col-12 col-md">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					fill="none" stroke="currentColor" stroke-linecap="round"
					stroke-linejoin="round" stroke-width="2" class="d-block mb-2"
					role="img" viewBox="0 0 24 24" focusable="false">
          <title>Product</title>
          <circle cx="12" cy="12" r="10"></circle>
          <path
						d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94">
          </path>
        </svg>
				<small class="d-block mb-3 text-muted">© 2017-2020</small>
			</div>
			<div class="col-6 col-md">
				<h5>Features</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Cool
							stuff</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Random
							feature</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Team
							feature</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Stuff
							for developers</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Another
							one</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Last
							time</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Resource</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Resource
							name</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Another
							resource</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Final
							resource</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Business</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Education</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Government</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Gaming</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>About</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Team</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Locations</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Privacy</a></li>
					<li><a class="text-muted"
						href="https://getbootstrap.com/docs/4.5/examples/product/#">Terms</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script>
		$("#twzipcode").twzipcode();
	</script>
	<script src="../js/jquery-3.5.1Wen.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="../js/bootstrapWen.bundle.min.js"
		integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd"
		crossorigin="anonymous"></script>

</body>

</html>