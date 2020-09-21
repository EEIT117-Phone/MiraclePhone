<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>後台管理</title>
<link href="<c:url value='/css/memberManagement.css' />" rel="stylesheet">
<script src="<c:url value='/js/backstageCustomer.js' />"></script>
<script src="<c:url value='/js/memberManagement.js' />"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>


<body>
<div id="content">
  <nav id="nav">
  <div class="main_nav btn-group-vertical dropright" role="group" aria-label="Vertical button group">
    <button type="button" class=" btn btn-secondary " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">客服回覆</button>
    <a href='<c:url value="/productManagement" />' class="bottom btn btn-secondary " role="button" aria-pressed="true">商品管理</a>
    <a href='<c:url value="/memberManagement" />' id = "b" class="bottom btn btn-secondary" role="button" aria-pressed="true">會員管理</a>
  
  	<div class="dropdown-menu">
      <a class="dropdown-item" href='<c:url value="/customerContact?selectq1=賣家相關&selectq2=賣家評價" />'>賣家相關</a>
      <a class="dropdown-item" href='<c:url value="/customerContact?selectq1=配送問題&selectq2=配送時長" />'>配送問題</a>
      <a class="dropdown-item" href='<c:url value="/bcustomerContact?selectq1=會員相關&selectq2=修改會員資料" />'>會員相關</a>
      <a class="dropdown-item" href='<c:url value="/customerContact?selectq1=退貨及退款&selectq2=退貨進度查詢" />'>退貨及退款</a>
    </div>
    
    
  </div>
  </nav>
  
  <main id="main">
  <h2>會員管理</h2><br>
    <form:form servletRelativeAction="/memberManagement/searchMember" method="get" modelAttribute="searchBean">
           <table class="searchtable">
           		<thead>
           			<tr>
           				<th>
           				<form:label path="account">賣家帳號</form:label>
                    	<form:input path="account" class="searchBox form-control"/>
           				</th>
           			<th>
           				<form:label path="idnumber">身分證字號</form:label>
                    	<form:input path="idnumber" class="searchBox form-control"/>
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
     		 <th scope="col" colspan="3">會員編號 ：${result.account}</th>
  	 		</tr>
 		 </thead>
  	<tbody>
    <tr>
      <td  rowspan="3">
      	<img src="<c:url value='/fs/img/${result.pic}' />" border=0 width=105px height=140px /> 
	 </td>
      <td>姓名 ：${result.name}</td>
      <td>
      	刊登數 ：${result.postAmount}
      </td>
    </tr>
    <tr>
      <td>生日 ：${result.birth}</td>
      <td>身分證字號 ：${result.idnumber}</td>
      
    </tr>
    <tr>
      <td>身分 ：${result.seller eq "seller" ? "買家／賣家 " : "買家" }</td>
      <td>
		<input type="button" class="status btn btn-outline-primary" value="${result.status eq "blacklist" ? "恢復權限" :"設為黑名單"}" onclick="javascript: location.href = '<c:url value='/memberManagement/deleteMember?account=${result.account}&status=${result.status eq "blacklist" ? "NULL" :"blacklist"}' />'"/>
		</td>
    </tr>
  </tbody>
  </c:forEach>
</table>

    
  </main>
  
</div>
</body>
</html>