<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<title>orderHistory</title>
<link href="<c:url value='/css/orderHistory.css' />" rel="stylesheet">
<script src="<c:url value='/js/orderHistory.js' />"></script>
</head>
<body>
    

    
    
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">圖片</th>
          <th scope="col">產品名稱</th>
          <th scope="col">購買日期</th>
          <th scope="col">訂單編號</th>
    
        </tr>
      </thead>
      <tbody>
        
          <tr>
            <th scope="row"><a href="http://www.pchome.com.tw" >
              <img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" title="你的商品"
              width="80" height="70"> </a></th>
            <td>哀鳳1</td>
            <td>2020/10/08</td>
            <td>123456789</td>
          </tr>
    
          <tr>
            <th scope="row"><a href="http://www.pchome.com.tw" >
               <img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" title="你的商品"
              width="80" height="70"> </a></th>
            <td>哀鳳2</td>
            <td>2020/10/08</td>
            <td>123456789</td>
    
          </tr>
          <tr>
            <th scope="row"><a href="http://www.pchome.com.tw" >
               <img src="<c:url value='/images/iphoneOrderHistory.jpg' />" alt="" title="你的商品"
              width="80" height="70"> </a></th>
            <td>哀鳳3</td>
            <td>2020/10/08</td>
            <td>123456789</td>
    
          </tr>
      </tbody>
    </table>
    

</body>


</html>