<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>賣家刊登頁面</title>
<link href="<c:url value='/css/product.css' />" rel="stylesheet">
<!-- twZip -->
<script src="<c:url value='/js/product.js' />"></script>
<script src="<c:url value='/js/jquery.twzipcode.min.js'/>"></script>
<style>
select {
	width: 85%;
}

input {
	width: 100%;
	align-content: center;
	text-align: center;
}
td {
	max-width: 100%;
}
label {
	max-width: 100%;
}
table {
	border: 1px solid black;
}
</style>
</head>
<body>
	<div>
		<div style="width: 50%; margin: 0 auto">
			<form:form servletRelativeAction="/product/insert" method="GET" enctype="multipart/form-data"
				modelAttribute="product">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th colspan="2"><h2 style="text-align: center;">手機刊登</h2></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><label for="phoneType">機種:</label> <form:select items="${phoneTypes}"
									path="phoneType" itemLabel="label" /></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="pic1">正面 : </label><input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label for="storage">容量:</label> <form:select items="${phoneStorages}"
									path="storage" itemLabel="label" /></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="pic2">背面:</label> <input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label for="color">顏色:</label> <form:select items="${phoneColors}" path="color"
									itemLabel="label" /></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="file3"> 左側: </label> <input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label class="custom-file-label2" for="phoneSort">分類:</label> <form:select
									path="phoneSort">
									<option>全新機</option>
									<option>二手機</option>
									<option>零件機</option>
								</form:select></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="file4">右側:</label> <input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label class="custom-file-label2" for="phoneCondition">機況:</label> <form:select
									path="phoneCondition">
									<option>整新機</option>
									<option>9成新</option>
									<option>7成新</option>
									<option>6成新</option>
								</form:select></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="file5">上面:</label> <input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label class="custom-file-label2" for="phoneWarranty">保固:</label> <form:select
									path="phoneWarranty">
									<option>無保固</option>
									<option>一年保固</option>
									<option>保固未滿一年</option>
								</form:select></td>
							<td><div class="custom-file">
									<label class="custom-file-label" for="file6">下面:</label> <input class="custom-file-input"
										type="file" accept="image/*" name="files">
								</div></td>
						</tr>
						<tr>
							<td><label for="yearOfManufacture">出廠年份:</label> <form:input style="width:270px"
									path="yearOfManufacture" type="month" name="yearOfManufacture" min="2007-06" max="2020-10"
									value="2020-10" /></td>
							<td rowspan="4"><textarea
									style="width: 100%; height: 340px; font-size: 1em; color: blue;"
									placeholder="請輸入銷售原因&備註 (上限200字)" rows=10 cols="50px" maxlength="200" id="sellReason"
									name="sellReason" required="required"></textarea></td>
						</tr>
						<tr>
							<td><div class="form-check form-check-inline">
									<label>配件:</label>
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label" for="inlineCheckboxHeadphone">耳機 </label><input
										class="form-check-input" type="checkbox" id="inlineCheckboxHeadphone" name="headPhone"
										value="1">
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label" for="inlineCheckboxPlug">插頭 </label><input
										class="form-check-input" type="checkbox" id="inlineCheckboxPlug" name="plug" value="1">
								</div>
								<div class="form-check form-check-inline">
									<label class="form-check-label" for="inlineCheckboxLine">線 </label><input
										class="form-check-input" type="checkbox" id="inlineCheckboxLine" name="line" value="1">
								</div></td>
						</tr>
						<tr>
							<td>
								<div id="twzipcode">
									交易地點:
									<div data-role="county" data-name="county" data-value="" data-style="county-style"></div>
									<div data-role="district" data-name="district" data-value="" data-style="district-style"></div>
									<div data-role="zipcode" data-name="zipcode" data-value="" data-style="zipcode-style"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td><label for="amount">銷售金額:</label> <form:input type="number" max="50000" min="0"
									value="8000" step="100" required="required" path="amount" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><label> <input type="submit"
									class="btn btn-primary">
							</label> <label> <input type="reset" class="btn btn-primary">
							</label></td>
						</tr>
					</tbody>
				</table>
			</form:form>
		</div>
	</div>
</body>
<script>
	$(".custom-file-input").on(
			"change",
			function() {
				var fileName = $(this).val().split("\\").pop();
				$(this).siblings(".custom-file-label").addClass("selected")
						.html(fileName);
			});
</script>
</html>