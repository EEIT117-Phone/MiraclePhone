<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<title>Cart</title>
  	<link href="/MiraclePhone/css/cart.css" rel="stylesheet">
  	<script src="/MiraclePhone/js/cart.js"></script>
</head>
<body>
  <main role="main">
    <div class="shop-main">
      <h3>Shopping List</h3>
      <table class="cart-header table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">商品</th>
            <th scope="col">規格</th>
            <th scope="col">單價</th>
            <th scope="col">數量</th>
            <th scope="col">總計</th>
            <th scope="col">操作</th>
          </tr>
        </thead>

      </table>

      <table class="cart-main table">
          <c:forEach varStatus="status"  var="order"  items="${orderInfo}" >
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="8">賣家1${order.seller}</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td><img id='pic1' /></td>
            <td>${order.productName}</td>
            <td>${order.productStorage}</td>
            <td>${order.price}</td>
            <td>1</td>
            <td>${order.price}</td>
            <td>
<!--               <input type='hidden' name='deleteProduct' value=${order.productId}/> -->
              <button type="button" class="cart-delete btn btn-secondary btn-sm" id="deleteOrder">刪除</button>
            </td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
      <table class="cart-summary table">
        
        <tbody>
          <tr>
            <td>.</td>
            <td>件商品</td>
            <td>總金額:$</td>
            <td>
              <a href="shipInfo.heml" class="btn btn-primary btn-sm" role="button" aria-pressed="true">送出訂單</a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </main>


</body>
</html>