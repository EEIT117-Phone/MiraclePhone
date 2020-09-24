<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>


<head>
  <title>會員資料</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/css/usermain.css' />" />
</head>

<body>
<script src="<c:url value='/js/usermain.js' />"></script>
<script type="text/javascript"></script>
<script src="<c:url value='/js/er.twzipcode.js' />"></script>
<script src="<c:url value='/js/er.twzipcode.data.js' />"></script>
<div class="container bootstrap snippet">
  
    <div class="row">

    	<div class="col-sm-9 mx-auto">
           

          <div class="tab-content">
            <div class="tab-pane active" id="home">
            <h2 class="text-center font-weight-bold">修改會員資料</h2>
                <hr>
                <form class="form form-horizontal" action="/MiraclePhone/usermodification" method="post" id="registrationForm" onsubmit="return checkform()" enctype="multipart/form-data">
                   <div class="text-center">
        				<img id="previewImg" name="previewImg" src="<c:url value='/fs/img/${user.pic}' />" class="avatar img-circle img-thumbnail" alt="avatar">
        				<h6>Upload a different photo...</h6>
        				<input type="file" class="text-center center-block file-upload w-25" id="file" name="file" >
        			</div>
      				<hr>
      				<div class="mainAll">
      				<div class="leftSide float-left mx-2">
                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="account" class="h4 control-label col-xs-6">帳號</label>
                              <input id="account" class="form-control" name="account" value="${user.account}" readonly>
                          </div>
                    
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password" class="h4 control-label">密碼</label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" value="${user.password}">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="name" class="h4 control-label">姓名</label>
                              <input type="text" class="form-control" name="name" id="name" placeholder="name" value="${user.name}">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="idnumber" class="h4 control-label">身分證字號</label>
                              <input type="text" class="form-control" name="idnumber" id="idnumber" placeholder="enter idnumber" value="${user.idnumber}" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="sex" class="h4 control-label">性別</label><br>
                           	<input  type="radio" id="man" name="sex" value="man" ><span id="man_span" >男</span>
							<input type="radio" id="woman" name="sex"  value="woman"><span id="woman_span" >女</span>
							<input type="radio" id="other" name="sex"  value="other" ><span id="other_span" >其他</span>
                          </div>
                      </div>
                      </div>
                      <div class="rightSide float-right">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="birth" class="h4 control-label">生日</label>
                              <input type="date" class="form-control" id="birth" name="birth" value="${user.birth}" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password" class="h4 control-label">住址</label>
                          <div class="form-inline">
                          <input type="hidden" id="save_county" name="save_county" value="${user.county}">
                          <input type="hidden" id="save_district" name="save_district" value="${user.district}">
                              <select class="form-control w-50" id="county" name="county" aria-describedby="form-county" ></select>
                              <select class="form-control w-50" id="district" name="district" aria-describedby="form-district" ></select>
                              <input name="zipcode" class="form-control w-100" value="${user.zipcode}" >
                             
                          </div>
                      </div>
                      </div>
                      <div class="form-group">

                          <div class="col-xs-6">
                            <label for="bankaccount" class="h4 control-label">銀行帳戶</label>
                              <input type="text" class="form-control" name="bankaccount" id="bankaccount" value="${user.bankaccount}">
                          </div>
                      </div>
                      
                      <div class="form-group">
                      <div class="col-xs-6">
                       <label for="seller" class="h4 control-label">賣家權限</label>
                       <input type="radio" id="seller" name="seller" value="seller">
                       <span id="seller_word">賣家</span>
                      </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="age" class="h4 control-label">年齡</label>
                             ${user.age}<input type="hidden" id="age" name="age" value="${user.age}">
                             <input id="status" type="hidden" name="status" value="user">
                          </div>
                      </div>
                      </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12 float-right">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>儲存</button>
                               	
                            </div>
                      </div>
              	</form>
              
              
             </div><!--/tab-pane-->
           
             
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->
   <hr>
        </div><!--/col-9-->
   </body>
 </html>                                                     