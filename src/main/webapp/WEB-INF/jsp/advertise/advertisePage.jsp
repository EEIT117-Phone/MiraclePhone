<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- saved from url=(0051)https://getbootstrap.com/docs/4.5/examples/product/ -->
<html lang="zh-Hans-TW">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>賣家刊登頁面</title>
<link href="/MiraclePhone/css/advertise.css" rel="stylesheet">
<!-- Custom styles for this template -->


<!-- twZip -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<body>
	<div>
		<form method="GET" class="form1" action="">
			<fieldset>
				<legend>手機刊登</legend>
				<label for="phoneType">機種:</label>
				<select id="phoneType">
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
				</select>
				<label for="phoneMemory">容量:</label>
				<select id="phoneMemory">
					<option>16G</option>
					<option>32G</option>
					<option>64G</option>
					<option>128G</option>
					<option>256G</option>
					<option>512G</option>
				</select>
				<label for="phoneColor">顏色:</label>
				<select id="phoneColor">
					<option>太空灰</option>
					<option>銀</option>
					<option>金</option>
					<option>玫瑰金</option>
					<option>黑</option>
					<option>曜石黑</option>
					<option>白</option>
					<option>藍</option>
					<option>黃</option>
					<option>珊瑚</option>
					<option>紅</option>
					<option>紫</option>
					<option>綠</option>
					<option>夜幕綠</option>
				</select>
				<br>
				<label for="phoneSort">分類:</label>
				<select id="phoneSort">
					<option>全新機</option>
					<option>二手機</option>
					<option>零件機</option>
				</select>
				<br>
				<label for="phoneCondition">機況:</label>
				<select id="phoneCondition">
					<option>整新機</option>
					<option>9成新</option>
					<option>7成新</option>
					<option>6成新</option>
				</select>
				<br>
				<label for="phoneWarranty">保固狀況:</label>
				<select id=phoneWarranty>
					<option>無保固</option>
					<option>一年保固</option>
					<option>保固未滿一年</option>
				</select>
				<br>
				<label>配件:</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxHeadphone" name="headphone" value="1">
					<label class="form-check-label" for="inlineCheckboxHeadphone">耳機</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxLine" name="line" value="1">
					<label class="form-check-label" for="inlineCheckboxLine">線</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxPlug" name="plug" value="1">
					<label class="form-check-label" for="inlineCheckboxPlug">插頭</label>
				</div>
				<br />
				<label>交易方式(複選):</label>
				<br>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" name="seven" value="1">
					<label class="form-check-label" for="inlineCheckbox7-11">7-11</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxFamily" name="family" value="1">
					<label class="form-check-label" for="inlineCheckboxFamily">全家</label>
				</div>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxPost" name="post" value="1" >
					<label class="form-check-label" for="inlineCheckboxPost">郵寄</label>
				</div>

				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox" id="inlineCheckboxFace" name="face" value="1">
					<label class="form-check-label" for="inlineCheckboxFace">面交</label>
				</div>
				<br>
				<br>
				<label for="yearOfManufacture">出廠年份:</label>
				<input id="yearOfManufacture" type="month" name="" min="2007-06" max="2020-10" value="2020-10">
				<br>
				<label>
					<div id="twzipcode">交易地點:</div>
				</label>
				<br>
				<label for="amount">銷售金額:</label>
				<input type="number" max="50000" min="0" value="8000" step="100" required="required">
				<br>
				<label for="sellReason">銷售原因以及備註:</label>
				<br>
				<textarea placeholder="請輸入銷售原因&備註 (上限100字)" rows=10 cols="50px" maxlength="109" maxrows="10" id="sellReason" required="required"></textarea>
				<br>
				<label for="file1">正面:</label>
				<input type="file" name=file1 accept="image/*" required="required">
				<br>
				<label for="file2">反面:</label>
				<input type="file" name=file2 accept="image/*" required="required">
				<br>
				<label for="file3">左側:</label>
				<input type="file" name=file3 accept="image/*" required="required">
				<br>
				<label for="file4">右側:</label>
				<input type="file" name=file4 accept="image/*" required="required">
				<br>
				<label for="file5">上面:</label>
				<input type="file" name=file5 accept="image/*" required="required">
				<br>
				<label for="file6">下面:</label>
				<input type="file" name=file6 accept="image/*" required="required">
				<br>
				<br>
				<center>
				<label>
					<input type="submit">
					<input type="reset">
				</label>
				</center>
			</fieldset>
		</form>
	</div>
	<hr>

	<script>
		$("#twzipcode").twzipcode();
	</script>

	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>

</body>

</html>