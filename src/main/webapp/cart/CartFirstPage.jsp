<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart</title>
<link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

  <!-- Bootstrap core CSS -->
  <link href="/MiraclePhone/css/bootstrap.min.css" rel="stylesheet">
  <link href="/MiraclePhone/css/cart.css" rel="stylesheet">
  <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/product/">
  <link href="https://getbootstrap.com/docs/4.5/examples/product/product.css" rel="stylesheet">
  <!-- Favicons -->
  <link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/apple-touch-icon.png"
    sizes="180x180">
  <link rel="icon" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32"
    type="image/png">
  <link rel="icon" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16"
    type="image/png">
  <link rel="manifest" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/safari-pinned-tab.svg"
    color="#563d7c">
  <link rel="icon" href="https://getbootstrap.com/docs/4.5/assets/img/favicons/favicon.ico">
  <meta name="msapplication-config" content="https://getbootstrap.com/docs/4.5/assets/img/favicons/browserconfig.xml">
  <meta name="theme-color" content="#563d7c">

  <!-- Custom styles for this template -->
  <link href="/MiraclePhone/css/carousel.css">
  <script src="/MiraclePhone/js/jquery-3.5.1.slim.min.js"></script>
  <script src="/MiraclePhone/js/bootstrap.bundle.min.js"></script>
  <script src="/MiraclePhone/js/cart.js"></script>
</head>
<body>
  <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container d-flex flex-column flex-md-row justify-content-between" style="position: sticky;top:0;left:0">
          <a class="py-2" aria-label="Product" style="color:white">
            銷售奇機
          </a>
          <a class="py-2 d-none d-md-inline-block"  ></a>
          <a  style="color:white">客服專區</a>
          <a  style="color:white">購物車</a>
          <a  style="color:white">會員專區</a>
          <a style="color:white">登入</a>
          <a  style="color:white">註冊</a>
        </div>
      </nav>
    </header>

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
              <a href="shipInfo.html" class="btn btn-primary btn-sm" role="button" aria-pressed="true">送出訂單</a>
            </td>
          </tr>
        </tbody>
      </table>

      

    </div>

    




    <!-- FOOTER -->
    <footer class="container">
      <p class="float-right"><a href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Back to top</a></p>
      <p>© 2017-2020 Company, Inc. · <a href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Privacy</a> · <a
          href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Terms</a></p>
    </footer>
  </main>


</body>
</html>