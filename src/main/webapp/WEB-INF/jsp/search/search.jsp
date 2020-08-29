<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
    <title>銷售奇機</title>
          <!-- @@ CSS -->
    <jsp:include page="/WEB-INF/jsp/template/common.jsp"></jsp:include>
    <link href="<c:url value='css/tail.select-default.min.css' />" rel="stylesheet">
  	<link href="<c:url value='css/owl.carousel.min.css' />" rel="stylesheet">
  	<link href="<c:url value='css/owl.theme.default.min.css' />" rel="stylesheet">
  	<link href="<c:url value='css/search.css' />" rel="stylesheet">
</head>

<body>
	<!--     共用表頭匯入     -->
    <jsp:include page="/WEB-INF/jsp/template/header.jsp"></jsp:include>
    <!--     content     -->
	  <div class="main">
    <div class="main-toplink card">
      <table cellpadding="20" cellspacing="0">
        <tr>
          <td style="text-align:left;"><a href="https://via.placeholder.com/420x180?text=New+link"><img
                src="https://via.placeholder.com/420x180?text=New+link" class="card-img-top" alt="..."></a></td>
          <td style="text-align:center;"><a href="https://via.placeholder.com/420x180?text=Secand+link"><img
                src="https://via.placeholder.com/420x180?text=Secand+link" class="card-img-top" alt="..."></a></td>
          <td style="text-align:right;"><a href="https://via.placeholder.com/420x180?text=Parts+link"><img
                src="https://via.placeholder.com/420x180?text=Parts+link" class="card-img-top" alt="..."></a></td>
        </tr>
      </table>
    </div>

    <div class="main-body-and-filter">
      <div class="main-body">
        <form>
          <fieldset>
            <legend>進階搜尋</legend>
            <div class="text-center">
            <!-- <div class="text-center">
              <label class="title">機型</label>
              <select type="text" id="search-select" class="select-hooked" multiple>
                <option>不限</option>
                <option>iPhone 6</option>
                <option>iPhone 6 Plus</option>
                <option>iPhone 6s</option>
                <option>iPhone 6s Plus</option>
                <option>iPhone 7</option>
                <option>iPhone 7 Plus</option>
                <option>iPhone 8</option>
                <option>iPhone 8 Plus</option>
                <option>iPhone X</option>
                <option>iPhone XR</option>
                <option>iPhone XS</option>
                <option>iPhone XS Max</option>
                <option>iPhone 11</option>
                <option>iPhone 11 Pro</option>
                <option>iPhone 11 Pro Max</option>
                <option>iPhone se</option>
                <option>iPhone se2</option>
              </select>

              <label class="title">容量</label>
              <select type="text" id="search-select" class="select-hooked" multiple>
                <option>不限</option>
                <option>16 GB</option>
                <option>32 GB</option>
                <option>64 GB</option>
                <option>128 GB</option>
                <option>256 GB</option>
                <option>512 GB</option>
              </select>

              <label class="title">顏色</label>
              <select type="text" id="search-select" class="select-hooked" multiple>
                https://support.apple.com/zh-tw/HT201296
                <option>不限</option>
                <option>太空灰</option>
                <option>銀</option>
                <option>金</option>
                <option>玫瑰金</option>
                <option>黑</option>
                <option>曜石黑</option>
                <option>白</option>
                <option>藍</option>
                <option>黃</option>
                <option>珊瑚</option>
                <option>紅</option>
                <option>紫</option>
                <option>綠</option>
                <option>夜幕綠</option>
              </select>

              <label class="title">價格</label>
              <select type="text" id="search-select" class="select-hooked" multiple>
                <option>不限</option>
                <option>5,000元以下</option>
                <option>10,000元以下</option>
                <option>20,000元以下</option>
                <option>30,000元以下</option>
                <option>40,000元以下</option>
              </select>

            </div> -->
              <!-- <button type="button"
                class="btn btn-secondary btn-lg search-main-buttom rounded mx-auto d-block">搜尋</button>

              <hr>
              <br>
 -->
              <input type="text" class="form-control search-input" placeholder="輸入關鍵字搜尋">
              <button type="button"
                class="btn btn-secondary btn-lg search-main-buttom-keyword rounded mx-auto d-block">搜尋</button>
            </div>

          </fieldset>
          <br>
          <fieldset>
            <legend>精選推薦</legend>
            <div class="owl-carousel">
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img1"><img
                    src="https://via.placeholder.com/200x200?text=img1" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img2"><img
                    src="https://via.placeholder.com/200x200?text=img2" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img3"><img
                    src="https://via.placeholder.com/200x200?text=img3" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img4"><img
                    src="https://via.placeholder.com/200x200?text=img4" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img5"><img
                    src="https://via.placeholder.com/200x200?text=img5" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img6"><img
                    src="https://via.placeholder.com/200x200?text=img6" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img7"><img
                    src="https://via.placeholder.com/200x200?text=img7" /></a>
              </div>
              <div class="item">
                <a target="_blank" href="https://via.placeholder.com/200x200?text=img8"><img
                    src="https://via.placeholder.com/200x200?text=img8" /></a>
              </div>
            </div>
          </fieldset>

          <br>
          <fieldset>
            <legend>搜尋結果</legend>
            <table style="width: 100%; border-spacing: 20px;">
              <select style="float: right; margin-right: 20px; height: 100%;">
                <option>默認更新時間排序</option>
                <option>依價格(高到低)</option>
                <option>依價格(低到高)</option>
                <option>依瀏覽次數(多到少)</option>
                <option>依瀏覽次數(少到多)</option>
                <option>依刊登時間(新到舊)</option>
                <option>依刊登時間(舊到新)</option>
              </select>
              <input type="button" value="刊登時間" style="float: right; height: 100%; margin: 0 10px 0 5px;">
              <input type="button" value="瀏覽次數" style="float: right; height: 100%; margin: 0 5px 0 5px;">
              <input type="button" value="價格排序" style="float: right; height: 100%; margin: 0 5px 0 5px;">
              <div>
              <tr>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
              </tr>
              <tr>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
              </tr>
              <tr>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
              </tr>
              <tr>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
                　<td class="resulttdclass">img</td>
              </tr>
              </div>
            </table>
            <br>
            <nav>
              <ul class="pagination justify-content-center">
                <li class="page-item">
                  <a class="page-link text-secondary" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link text-secondary" href="#">1</a></li>
                <li class="page-item"><a class="page-link text-secondary" href="#">2</a></li>
                <li class="page-item"><a class="page-link text-secondary" href="#">3</a></li>
                <li class="page-item"><a class="page-link text-secondary" href="#">4</a></li>
                <li class="page-item"><a class="page-link text-secondary" href="#">5</a></li>
                <li class="page-item">
                  <a class="page-link text-secondary" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
          </fieldset>
        </form>
      </div>

      <!-- Filter -->
      <div class="filter col-sm-4">
        <div class="filter-legend">快速篩選</div>
        <div class="card">
          <article class="card-group-item">
            <header class="card-header">
              <label class="title">機種</label>
            </header>
            <div class="filter-content">
              <div class="card-body">
                <form>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">不限</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">iPhone 6系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxDelivery" value="elivery">
                    <label class="form-check-label" for="inlineCheckboxDelivery">iPhone 7系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPost" value="Post">
                    <label class="form-check-label" for="inlineCheckboxPost">iPhone 8系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxOK" value="OK">
                    <label class="form-check-label" for="inlineCheckboxOK">iPhone SE系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" value="7-11">
                    <label class="form-check-label" for="inlineCheckbox7-11">iPhone X系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFamily" value="Family">
                    <label class="form-check-label" for="inlineCheckboxFamily">iPhone 11系列</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxLife" value="Life">
                    <label class="form-check-label" for="inlineCheckboxLife">iPhone SE2系列</label>
                  </div><br>
                </form>

              </div>
            </div>
          </article>

          <article class="card-group-item">
            <header class="card-header">
              <label class="title">容量</label>
            </header>
            <div class="filter-content">
              <div class="card-body">
                <form>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">不限</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">16 GB</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxDelivery" value="elivery">
                    <label class="form-check-label" for="inlineCheckboxDelivery">32 GB</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPost" value="Post">
                    <label class="form-check-label" for="inlineCheckboxPost">64 GB</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxOK" value="OK">
                    <label class="form-check-label" for="inlineCheckboxOK">128 GB</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" value="7-11">
                    <label class="form-check-label" for="inlineCheckbox7-11">256 GB</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" value="7-11">
                    <label class="form-check-label" for="inlineCheckbox7-11">512 GB</label>
                  </div><br>
                </form>
              </div>
            </div>
          </article>

          <article class="card-group-item">
            <header class="card-header">
              <label class="title">價格區間</label>
            </header>
            <div class="filter-content">
              <div class="card-body">
                <form>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">不限</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">5,000元以下</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxDelivery" value="elivery">
                    <label class="form-check-label" for="inlineCheckboxDelivery">10,000元以下</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPost" value="Post">
                    <label class="form-check-label" for="inlineCheckboxPost">20,000元以下</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxOK" value="OK">
                    <label class="form-check-label" for="inlineCheckboxOK">30,000元以下</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" value="7-11">
                    <label class="form-check-label" for="inlineCheckbox7-11">40,000元以下</label>
                  </div><br>
                </form>
              </div>
            </div>
          </article>

          <article class="card-group-item">
            <header class="card-header">
              <label class="title">交易方式</label>
            </header>
            <div class="filter-content">
              <div class="card-body">
                <form>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">不限</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" value="Face">
                    <label class="form-check-label" for="inlineCheckboxFace">面交</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxDelivery" value="elivery">
                    <label class="form-check-label" for="inlineCheckboxDelivery">宅配物流</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPost" value="Post">
                    <label class="form-check-label" for="inlineCheckboxPost">中華郵政</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxOK" value="OK">
                    <label class="form-check-label" for="inlineCheckboxOK">OK Mart</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" value="7-11">
                    <label class="form-check-label" for="inlineCheckbox7-11">7-11</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFamily" value="Family">
                    <label class="form-check-label" for="inlineCheckboxFamily">全家</label>
                  </div><br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxLife" value="Life">
                    <label class="form-check-label" for="inlineCheckboxLife">萊爾富</label>
                  </div><br>
                </form>
              </div>
            </div>
          </article>

        </div>
      </div>
    </div>
  </div>
    <!-- @@ JS -->  
  <script src="<c:url value='js/jquery-3.5.1.slim.min.js' />"></script>
  <script src="<c:url value='js/popper.js' />"></script>
  <script src="<c:url value='js/bootstrap.bundle.min.js' />"></script>
  <script src="<c:url value='js/tail.select.min.js' />"></script>
  <script src="<c:url value='js/jquery-2.1.1.min.js' />"></script>
  <script src="<c:url value='js/owl.carousel.2.0.0-beta.2.4.min.js' />"></script>
  <script src="<c:url value='js/owl.carousel.setting.js' />"></script>
  <script src="<c:url value='js/tail-select.setting.js' />"></script>
  <script src="<c:url value='js/owl.carousel.setting.js' />"></script>
  
	<!--     共用頁尾匯入     -->
	<jsp:include page="/WEB-INF/jsp/template/footer.jsp"></jsp:include>
</body>

</html>