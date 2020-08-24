<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shipInfo</title>
<script src="/MiraclePhone/js/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
    crossorigin="anonymous"></script>
  <link rel="canonical" href="../css/carousel/">

  <!-- Bootstrap core CSS -->
  <link href="/MiraclePhone/css/bootstrap.min.css" rel="stylesheet">
  <link href="/MiraclePhone/css/shiping.css" rel="stylesheet">
  <!-- Favicons -->
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
  <script src="/MiraclePhone/js/shipInfo.js"></script>
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
      <h3>Order Information</h3>
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
            <td> 2</td>
            <td><img id='pic2' /></td>
            <td>IphoneX</td>
            <td>125G</td>
            <td>10,000</td>
            <td>2</td>
            <td>20000</td>
          </tr> -->
          <tr class="ship-payment">
            <td></td>
            <td>付款方式:</td>
            <td colspan="2">
              <div class="form-check form-check-inline" style="margin-right: 50px;">
                <input class="form-check-input" type="radio" name="shipPaymentRadioOptions" id="shipPayment1"
                  value="option1">
                <label class="form-check-label" for="shipPayment1">匯款</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="shipPaymentRadioOptions" id="shipPayment2"
                  value="option2">
                <label class="form-check-label" for="shipPayment2">賣家面交</label>
              </div>
            </td>
            <td colspan="4">
              <div class="form-check form-check-inline row">
                <label for="inputPassword" class="ship-text col-sm-3 col-form-label">留言:</label>
                <div class="col-sm-9">
                  <textarea class="form-control" id="exampleFormControlTextarea1"></textarea>
                </div>
              </div>
            </td>
          </tr>

          <tr class="ship-method">
            <td></td>
            <td>取貨方式:</td>
            <td colspan="7">
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="shipMethodRadioOptions" id="shipMethod1"
                  value="post">
                <label class="form-check-label" for="shipMethod1">郵寄</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="shipMethodRadioOptions" id="shipMethod2"
                  value="face">
                <label class="form-check-label" for="shipMethod2">賣家面交</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="shipMethodRadioOptions" id="shipMethod3"
                  value="711">
                <label class="form-check-label" for="shipMethod3">7-11取貨</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="shipMethodRadioOptions" id="shipMethod4"
                  value="familyMart">
                <label class="form-check-label" for="shipMethod4">全家取貨</label>
              </div>

            </td>
          </tr>

        </tbody>
      </table>
      <div>
        <form class="ship-address">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputCity">縣市</label>
              <select id="inputCity" class="form-control">
                <option selected>臺北市</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-4">
              <label for="inputState">城市</label>
              <select id="inputState" class="form-control">
                <option selected>中正區</option>
                <option>...</option>
              </select>
            </div>
            <div class="form-group col-md-2">
              <label for="inputZip">郵遞區號</label>
              <input type="text" class="form-control" id="inputZip">
            </div>
          </div>
          <div class="form-group">
            <label for="inputAddress">地址</label>
            <input type="text" class="form-control" id="inputAddress">
          </div>
      </div>


    </div>
    </form>
    <table class="cart-summary table">
      
      <tbody>
        <tr>
          <td></td>
          <td>1件商品</td>
          <td>總金額:$10,000</td>
          <td>
            <a href="orderConfirm.html" class="btn btn-primary btn-sm" role="button" aria-pressed="true">訂單結帳</a>
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