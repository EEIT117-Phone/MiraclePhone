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
  
</head>

<body>
<script src="<c:url value='/js/usermain.js' />"></script>
<script type="text/javascript"></script>
<script src="<c:url value='/js/er.twzipcode.js' />"></script>
<script src="<c:url value='/js/er.twzipcode.data.js' />"></script>
<hr>
<div class="container bootstrap snippet">
  
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              <button type="button" id="showform" class="btn btn-lg btn-success">修改會員資料</button>
  
     
   <br>

               
        </div><!--/col-3-->
    	<div class="col-sm-9">
           

          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                <form class="form" action="/MiraclePhone/usermodification" method="post" id="registrationForm" onsubmit="return checkform()" enctype="multipart/form-data">
                   <div class="text-center">
        <img id="previewImg" name="previewImg" src="<c:url value='/fs/img/${user.pic}' />" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload" id="file" name="file" >
      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="account"><h4>帳號</h4></label>
                              <input id="account" class="form-control" name="account" value="${user.account}" readonly>
                              </div>
                    
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password"><h4>密碼</h4></label>
                              <input type="password" class="form-control" name="password" id="password" placeholder="password" value="${user.password}">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="name"><h4>姓名</h4></label>
                              <input type="text" class="form-control" name="name" id="name" placeholder="name" value="${user.name}">
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="idnumber"><h4>身分證字號</h4></label>
                              <input type="text" class="form-control" name="idnumber" id="idnumber" placeholder="enter idnumber" value="${user.idnumber}" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="sex"><h4>性別</h4></label>
                           	<input  type="radio" id="man" name="sex" value="man" ><span id="man_span" >男</span>
							<input type="radio" id="woman" name="sex"  value="woman"><span id="woman_span" >女</span>
							<input type="radio" id="other" name="sex"  value="other" ><span id="other_span" >其他</span>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="birth"><h4>生日</h4></label>
                              <input type="date" class="form-control" id="birth" name="birth" value="${user.birth}" >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="password"><h4>住址</h4></label>
                              <select  name="county" aria-describedby="form-county"></select>
                              <select  name="district" aria-describedby="form-district"></select>
                              <input name="zipcode" >
                             
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="bankaccount"><h4>銀行帳戶</h4></label>
                              <input type="text" class="form-control" name="bankaccount" id="bankaccount" value="${user.bankaccount}">
                          </div>
                      </div>
                      
                      <div class="form-group">
                      <div class="col-xs-6">
                       <label for="seller"><h4>賣家權限</h4></label>
                       <input type="radio" id="seller" name="seller" value="seller">
                       <span id="seller_word">賣家</span>
                      </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="age"><h4>年齡</h4></label>
                             ${user.age}<input type="hidden" id="age" name="age" value="${user.age}">
                             <input id="status" type="hidden" name="status" value="user">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>儲存</button>
                               	
                            </div>
                      </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->
           
             
              </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
   
   </body>
 </html>                                                     