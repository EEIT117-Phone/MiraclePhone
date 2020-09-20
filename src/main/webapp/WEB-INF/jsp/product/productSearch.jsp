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
 <style>

 </style>
 <script src="<c:url value='/js/backstageCustomer.js' />"></script>
<script src="<c:url value='/js/productManagement.js' />"></script>
</head>
<body>
 <div id="content" class="container">
 <table class="productManagement-header table">
  		<c:forEach varStatus="status"  var="result"  items="${results}" >
  		<thead class="thead-dark">
   			<tr>
     		 <th scope="col" colspan="3">商品編號 ：${result.productId}</th>
  	 		</tr>
 		 </thead>
  	<tbody>
    <tr>
      <td  rowspan="4">
      <a target="_blank" href="<c:url value='/buyer?productId=${result.productId}' />">	
		<img src="<c:url value='/fs/img/${result.pic2}'/>"alt="Card image cap" style="border:0px;width:105px;height:140px">
					</a></td>  
      <td>機種 ：${result.phoneType.label}</td>
      <td>
      刊登時間:${result.ad_date}
      </td>
    </tr>
    <tr>
      <td>容量 ：${result.storage.label}</td>
      <td>顏色 ：${result.color.label}</td>
    </tr>
    <tr>
    	<form:form id="form-1"  servletRelativeAction="/product/update" modelAttribute="productSearch" method="post">
					<td style="position:relative;top:8px">銷售金額  :  <input type="number" max="50000" min="0" value=${result.amount} step="100" required="required"
                    name="amount" /></td>
                    
					<td>
					銷售原因以及備註  :  <textarea style="position:relative;top:8px" rows="1" cols="17" maxlength="110" name=sellReason >${result.sellReason}</textarea>
					<input type="submit" class="btn btn-primary" value="儲存"/>
					</td>
					<td style="display:none;"><input name="productId" value=${result.productId} hidden="TRUE"/></td>
					</form:form>
	</tr>
  </tbody>
  </c:forEach>
</table>
	</div>
</body>
</html>