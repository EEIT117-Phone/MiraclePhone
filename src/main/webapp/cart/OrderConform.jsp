<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OrderConfirm</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">
  <!-- Bootstrap core CSS -->
  <link href="/MiraclePhone/css/bootstrap.min.css" rel="stylesheet">
  <link href="/MiraclePhone/css/orderConfirm.css" rel="stylesheet">
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
  <script src="/MiraclePhone/js/orderConfirm.js"></script>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Carousel</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
        aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Home <span
                class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="https://getbootstrap.com/docs/4.5/examples/carousel/#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="https://getbootstrap.com/docs/4.5/examples/carousel/#" tabindex="-1"
              aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>
  </header>

  <main role="main">
    <div class="shop-main">
      <h3>Order Confirmation</h3>
      <h3>您已訂購成功!</h3>
      <table class="cart-header table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">商品</th>
            <th scope="col">規格</th>
            <th scope="col">單價</th>
            <th scope="col">數量</th>
            <th scope="col">總計</th>
          </tr>
        </thead>

      </table>

      <table class="cart-main table">
        <thead class="thead-light">
          <tr>
            <th scope="col" colspan="8">賣家1</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td><img id='pic1' /></td>
            <td>IphoneX</td>
            <td>125G</td>
            <td>10,000</td>
            <td>1</td>
            <td>10000</td>
          </tr>
          <!-- <tr>
            <td>2</td>
            <td><img id='pic2' /></td>
            <td>IphoneX</td>
            <td>125G</td>
            <td>10,000</td>
            <td>2</td>
            <td>20000</td>
          </tr> -->
          <tr class="ship-payment">
            <td></td>
            <td>付款資訊:</td>
            <td colspan="5">
              <div class="payment">匯款帳號：12345678</div>
              <div></div>
            </td>
          </tr>

          <tr class="ship-method">
            <td></td>
            <td>取貨資訊:</td>
            <td colspan="5">
              <div class="shipMethod">請與賣家聊聊，約定取貨地點</div>
            </td>
          </tr>

        </tbody>
      </table>
      <table class="cart-summary table">

        <tbody>
          <tr>
            <td></td>
            <td>1件商品</td>
            <td>總金額:$10,000</td>
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