<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>賣家刊登頁面</title>
    
    <link href="<c:url value='/css/product.css' />" rel="stylesheet">
    <!-- twZip -->
    <script src="<c:url value='/js/product.js' />"></script>
    <script src="<c:url value='/js/jquery.twzipcode.min.js' />"></script>
</head>

<body>
    <div>
        <form:form servletRelativeAction="/product/insert" method="post" enctype="multipart/form-data"
            modelAttribute="product">
            <fieldset>
                <legend>手機刊登</legend>
                <label for="phoneType">機種:</label>
                <form:select items="${phoneTypes}" path="phoneType" itemLabel="label"/>
                <br>
                <label for="storage">容量:</label>
                <form:select items="${phoneStorages}" path="storage" itemLabel="label"/>

                <label for="color">顏色:</label>
                <form:select items="${phoneColors}" path="color" itemLabel="label"/>
                <br>
                <label for="phoneSort">分類:</label>
                <form:select path="phoneSort">
                    <option>全新機</option>
                    <option>二手機</option>
                    <option>零件機</option>
                </form:select>
                <br>
                <label for="phoneCondition">機況:</label>
                <form:select path="phoneCondition">
                    <option>整新機</option>
                    <option>9成新</option>
                    <option>7成新</option>
                    <option>6成新</option>
                </form:select>
                <br>

                <label for="phoneWarranty">保固狀況:</label>
                <form:select path="phoneWarranty">
                    <option>無保固</option>
                    <option>一年保固</option>
                    <option>保固未滿一年</option>
                </form:select>

                <br>
                <label>配件:</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxHeadphone" name="headPhone"
                        value="1">
                    <label class="form-check-label" for="inlineCheckboxHeadphone">耳機</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxLine" name="line" value="1">
                    <label class="form-check-label" for="inlineCheckboxLine">線</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPlug" name="plug" value="1">
                    <label class="form-check-label" for="inlineCheckboxPlug">插頭</label>
                </div>
                <br />
                <label>交易方式(複選):</label>
                <br>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox7-11" name="seven" value="1">
                    <label class="form-check-label" for="inlineCheckbox7-11">7-11</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFamily" name="family" value="1">
                    <label class="form-check-label" for="inlineCheckboxFamily">全家</label>
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxPost" name="post" value="1">
                    <label class="form-check-label" for="inlineCheckboxPost">郵寄</label>
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckboxFace" name="face" value="1">
                    <label class="form-check-label" for="inlineCheckboxFace">面交</label>
                </div>
                <br>
                <br>
                <label for="yearOfManufacture">出廠年份:</label>
                <form:input path="yearOfManufacture" type="month" name="yearOfManufacture" min="2007-06" max="2020-10"
                    value="2020-10" />
                <br>

                <div id="twzipcode">交易地點:
                    <div data-role="county" data-name="county" data-value="臺北市" data-style="county-style">
                    </div>
                    <div data-role="district" data-name="district" data-value="大安區" data-style="district-style">
                    </div>
                    <div data-role="zipcode" data-name="zipcode" data-value="160" data-style="zipcode-style">
                    </div>
                </div>

                <br>
                <label for="amount">銷售金額:</label>
                <form:input type="number" max="50000" min="0" value="8000" step="100" required="required"
                    path="amount" />
                <br>
                <label for="pic1">正面:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="pic2">背面:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="file3">左側:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="file4">右側:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="file5">上面:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="file6">下面:</label>
                <input type="file" accept="image/*" name="files">
                <br>
                <label for="sellReason">銷售原因以及備註:</label>
                <br>
                <textarea placeholder="請輸入銷售原因&備註 (上限100字)" rows=10 cols="50px" maxlength="109" maxrows="10"
                    id="sellReason" name="sellReason" required="required"></textarea>
                <br>
                <center>
                    <label>
                        <input type="submit">
                    </label>
                </center>
            </fieldset>
        </form:form>
    </div>
    <hr>
</body>
</html>