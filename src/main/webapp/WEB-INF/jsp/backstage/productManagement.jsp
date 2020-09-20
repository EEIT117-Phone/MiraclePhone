<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>後台管理</title>
<link href="<c:url value='/css/productManagement.css' />" rel="stylesheet">
<script src="<c:url value='/js/backstageCustomer.js' />"></script>
<script src="<c:url value='/js/productManagement.js' />"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>


<body>
<div id="content">
  <nav id="nav">
  <div class="main_nav btn-group-vertical dropright" role="group" aria-label="Vertical button group">
    <button type="button" class=" btn btn-secondary " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">客服回覆</button>
    <a href='<c:url value="/backstage" />' class="bottom btn btn-secondary " role="button" aria-pressed="true">商品管理</a>
    <a href='<c:url value="/backstage" />' id = "b" class="bottom btn btn-secondary" role="button" aria-pressed="true">會員管理</a>
  
  	<div class="dropdown-menu">
      <a class="dropdown-item" href='<c:url value="/backstage/customerContact?selectq1=賣家相關&selectq2=賣家評價" />'>賣家相關</a>
      <a class="dropdown-item" href='<c:url value="/backstage/customerContact?selectq1=配送問題&selectq2=配送時長" />'>配送問題</a>
      <a class="dropdown-item" href='<c:url value="/backstage/customerContact?selectq1=會員相關&selectq2=修改會員資料" />'>會員相關</a>
      <a class="dropdown-item" href='<c:url value="/backstage/customerContact?selectq1=退貨及退款&selectq2=退貨進度查詢" />'>退貨及退款</a>
    </div>
    
    
  </div>
  </nav>
  
  <main id="main">
  <h2>搜尋商品</h2>
    <form:form servletRelativeAction="/productManagement/searchProduct" method="POST" enctype="application/x-www-form-urlencoded" modelAttribute="searchBean">
           <table class="searchtable">
           		<thead>
           			<tr>
           				<th>
           				<form:label path="account">賣家帳號</form:label>
                    	<form:input path="account" class="searchBox form-control"/>
           				</th>
           			<th>
           				<form:label path="productId">商品編號</form:label>
                    	<form:input path="productId" class="searchBox form-control"/>
           			</th>
           			<th >
                   		<form:checkboxes class="form-check-input" items="${statusList}" path="status" element="div"/><br>
           			</th>
           			</tr>
           		</thead>
           
           </table>
               
            <div class="form-group float-right">
            	<div class="form-check">
		            <input type="submit" class="btn btn-primary" value="查詢"/>
            	</div>
            </div>
  	</form:form>	
    <table class="productManagement-header table">
  		<c:forEach varStatus="status"  var="result"  items="${results}" >
  		<thead class="thead-dark">
   			<tr>
     		 <th scope="col" colspan="3">商品編號 ：${result.productId}</th>
  	 		</tr>
 		 </thead>
  	<tbody>
    <tr>
      <td  rowspan="3">
      
      	<a target="_blank" href="<c:url value='/buyer?productId=${result.productId}' />" class="text-dark text-decoration-none">
      	<img src="<c:url value='/fs/img/${result.pic2}' />" border=0 width=105px height=140px /> 
      	
      	</a>
	 </td>
      <td>商品名稱 ：${result.phoneType.label}</td>
      <td>
      	商品狀態 ：<span id = "status${status.count}">${result.status}</span>
      	<button type="button" name='${result.productId}' value="${result.productId}" class="status btn btn-outline-primary" id="status-control${status.count}"></button>
      </td>
    </tr>
    <tr>
      <td>賣家帳號 ：${result.account}</td>
      <td class="moneyFormat">商品價格 ：<fmt:formatNumber value="${result.amount}" type="number"/>元</td>
      
    </tr>
    <tr>
      <td>容量 ：${result.storage.label}</td>
      <td>顏色 ：${result.color.label}</td>
    </tr>
  </tbody>
  </c:forEach>
</table>


    
  </main>
  
</div>
</body>
</html>