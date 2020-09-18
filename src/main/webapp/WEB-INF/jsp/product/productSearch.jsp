<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>刊登中物件</title>
<script src="<c:url value='/js/jquery.twzipcode.min.js' />"></script>
 <link href="<c:url value='/css/hello.css' />" rel="stylesheet">
</head>
<body>
 <div id="content" class="container">
	<table class="table">
		<thead>
			<tr>
				<th>序號</th>
				<th>編號	</th>
				<th>機種</th>
				<th>顏色</th>
				<th>容量</th>
				<th>刊登時間</th>
				<th>銷售金額</th>
				<th>銷售原因以及備註</th>
				<th></th>
				<th></th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach varStatus="status" var="result" items="${results}">
				<tr>
					<td>${status.count}</td>
					<td>${result.productId}</td>
					<td>${result.phoneType.label}</td>
					<td>${result.color.label}</td>
					<td>${result.storage.label}</td>
					<td>${result.ad_date}</td>
					
					<form:form id="form-1"  servletRelativeAction="/product/update" modelAttribute="productSearch" method="post">
					<td><input type="number" max="50000" min="0" value=${result.amount} step="100" required="required"
                    name="amount" /></td>
					<td><textarea  rows="1" cols="17" maxlength="110" name=sellReason >${result.sellReason}</textarea></td>
					<td><input type="submit" class="btn btn-primary" value="儲存"/></td>
					<td><input name="productId" value=${result.productId} hidden="TRUE"/></td>
					</form:form>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</body>
</html>