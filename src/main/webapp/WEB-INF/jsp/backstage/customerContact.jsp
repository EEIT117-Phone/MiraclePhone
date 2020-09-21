<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<title>後台管理</title>
<link href="<c:url value='/css/backstageMain.css' />" rel="stylesheet">
<script src="<c:url value='/js/backstageCustomer.js' />"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
      <a class="dropdown-item" href='<c:url value="/customerContact?selectq1=會員相關&selectq2=修改會員資料" />'>會員相關</a>
      <a class="dropdown-item" href='<c:url value="/customerContact?selectq1=退貨及退款&selectq2=退貨進度查詢" />'>退貨及退款</a>
    </div>
    
    
  </div>
  </nav>
  
  <main id="main">

  	<div id="selectq1">${selectq1}</div>
  	<div class="tab-pane" id="selectq_1" role="tabpanel" aria-labelledby="list-home-list">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=賣家相關&selectq2=賣家評價" />' aria-selected="true">賣家評價</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=賣家相關&selectq2=商品付款方式" />'  aria-selected="false">商品付款方式</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=賣家相關&selectq2=商品規格疑問" />' aria-selected="false">商品規格疑問</a>
				
	
			</div>
		</nav>
	</div>
  	<div class="tab-pane" id="selectq_2" role="tabpanel" aria-labelledby="list-home-list">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=配送問題&selectq2=配送時長" />' aria-selected="true">配送時長</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=配送問題&selectq2=配送方式" />' aria-selected="false">配送方式</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=配送問題&selectq2=其他" />' aria-selected="false">其他</a>
<!-- 				<a class="nav-link active" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=配送時長" role="tab" aria-selected="true">配送時長</a>  -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=配送方式" role="tab" aria-selected="false">配送方式</a> -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=其他"  role="tab" aria-selected="false">其他</a> -->
			</div>
		</nav>
	</div>
  	<div class="tab-pane" id="selectq_3" role="tabpanel" aria-labelledby="list-home-list">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=會員相關&selectq2=修改會員資料" />' aria-selected="true">修改會員資料</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=會員相關&selectq2=海外會員" />' aria-selected="false">海外會員</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=會員相關&selectq2=取消註冊" />' aria-selected="false">取消註冊</a>
<!-- 				<a class="nav-link active" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=修改會員資料" role="tab" aria-selected="true">修改會員資料</a>  -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=海外會員" role="tab" aria-selected="false">海外會員</a> -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=取消註冊"  role="tab" aria-selected="false">取消註冊</a> -->
			</div>
		</nav>
	</div>	
  	<div class="tab-pane" id="selectq_4" role="tabpanel" aria-labelledby="list-home-list">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=退貨及退款&selectq2=退貨進度查詢" />' aria-selected="true">退貨進度查詢</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=退貨及退款&selectq2=退貨相關問題" />' aria-selected="false">退貨相關問題</a>
				<a class="nav-link" href='<c:url value="/customerContact?selectq1=退貨及退款&selectq2=維修保固相關問題" />' aria-selected="false">維修保固相關問題</a>
<!-- 				<a class="nav-link active" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=退貨進度查詢" role="tab" aria-selected="true">退貨進度查詢</a>  -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=退貨相關問題" role="tab" aria-selected="false">退貨相關問題</a> -->
<!-- 				<a class="nav-link" data-toggle="tab" href="/MiraclePhone/backstage/customerContact?selectq2=維修保固相關問題"  role="tab" aria-selected="false">維修保固相關問題</a> -->
			</div>
		</nav>
	</div>
	<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
		<br>
		<div class="accordion" id="accordionExample">
		<div>${ResponseMsg}</div>
		<c:forEach varStatus="status" var="contact" items="${unResponse}">
	<form:form servletRelativeAction="/backstage/customerResponse" method="GET" modelAttribute="customerServiceVo">
		<form:hidden path="selectq1"/>
		<form:hidden path="selectq2"/>
		<input type="hidden" name="contactid" value="${contact.contactid}" />
		<input type="hidden" name="account" value="${contact.account}" />
		<input type="hidden" name="question" value="${contact.question}" />
		<input type="hidden" name="date" value="${contact.date}" />
		
			<div class="card">
				<div class="card-header" id="headingTwo">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse${status.count}" aria-expanded="false" aria-controls="collapseTwo">#${status.count} ${contact.question}</button>
					</h2>
				</div>
				<div id="collapse${status.count}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					<div class="card-body">
						會員: ${contact.account}<br>
						${contact.question}<br>
						<div class="date">[${contact.date}]</div><br>
						<hr>
						<form:textarea path="answer" rows="3" cols="77" style="border-radius: 5px"  placeholder="  回覆:"/>
						
						<br>
						<button type="submit" class="submitbtn btn btn-outline-primary">送出</button>
					</div>
				</div>
			</div>
  			</form:form>
	 		</c:forEach> 
		</div>
	</div>	

  </main>
  
</div>
</body>
</html>