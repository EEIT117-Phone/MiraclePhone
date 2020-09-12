<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
    <title>賣家刊登頁面</title>
    <link href="<c:url value='/css/advertise.css' />" rel="stylesheet">
    <!-- twZip -->
    <script src="<c:url value='/js/jquery.twzipcode.min.js' />"></script>
<body>
    <div>
        <form:form servletRelativeAction="/product/insert" method="post" enctype="multipart/form-data"
            modelAttribute="product">
            <fieldset>
                <legend>手機刊登</legend>
                <label for="phoneType">機種:</label>
                <form:select path="phoneType">
                    <option value="iPhone6">iPhone 6</option>
                    <option value="iPhone6Plus">iPhone 6 Plus</option>
                    <option value="iPhone6s">iPhone 6s</option>
                    <option value="iPhone6sPlus">iPhone 6s Plus</option>
                    <option value="iPhoneSE">iPhone SE (第一代)</option>
                    <option value="iPhone7">iPhone 7</option>
                    <option value="iPhone7Plus">iPhone 7 Plus</option>
                    <option value="iPhone8">iPhone 8</option>
                    <option value="iPhone8Plus">iPhone 8 Plus</option>
                    <option value="iPhoneX">iPhone X</option>
                    <option value="iPhoneXR">iPhone XR</option>
                    <option value="iPhoneXS">iPhone XS</option>
                    <option value="iPhoneXSMax">iPhone XS Max</option>
                    <option value="iPhone11">iPhone 11</option>
                    <option value="iPhone11Pro">iPhone 11 Pro</option>
                    <option value="iPhone11ProMax">iPhone 11 Pro Max</option>
                    <option value="iPhoneSE2">iPhone SE (第二代)</option>
                </form:select>
                <br>
                <label for="memory">容量:</label>
                <form:select path="memory">
                    <option>16G</option>
                    <option>32G</option>
                    <option>64G</option>
                    <option>128G</option>
                    <option>256G</option>
                    <option>512G</option>
                </form:select>


                <label for="color">顏色:</label>
                <form:select path="color">
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
                </form:select>
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
    <div data-role="county"
         data-name="county"
         data-value="臺北市"
         data-style="county-style">
    </div>
    <div data-role="district"
         data-name="district"
         data-value="大安區"
         data-style="district-style">
    </div>
    <div data-role="zipcode"
         data-name="zipcode"
         data-value="160"
         data-style="zipcode-style">
    </div>
</div>
                
                <br>
                <label for="amount">銷售金額:</label>
                <form:input type="number" max="50000" min="0" value="8000" step="100" required="required"
                    path="amount" />
                    
                    
                      <br>
                 <label for="file1">正面:</label>
                 <form:input type="file" accept="image/*" path="productImage1"/>
                 <br>
                 <label for="file2">背面:</label>
                 <form:input type="file" accept="image/*" path="productImage2"/>
                 <br>
                 <label for="file3">左側:</label>
                 <form:input type="file" accept="image/*" path="productImage3"/>
                 <br>
                 <label for="file4">右側:</label>
                 <form:input type="file" accept="image/*" path="productImage4"/>
                 <br>
                 <label for="file5">上面:</label>
                 <form:input type="file" accept="image/*" path="productImage5"/>
                 <br>
                 <label for="file6">下面:</label>
                 <form:input type="file" accept="image/*" path="productImage6"/>
                 <br>
              
                <label for="sellReason">銷售原因以及備註:</label>
                <br>
                <textarea placeholder="請輸入銷售原因&備註 (上限100字)" rows=10 cols="50px" maxlength="109" maxrows="10"
                    id="sellReason" name="sellReason" required="required"></textarea>
                <br>
                <center>
                    <label>
                        <input type="submit">
                        <input type="reset">
                    </label>
                </center>
            </fieldset>
        </form:form>
    </div>
    <hr>

    <script>
        $("#twzipcode").twzipcode();
    </script>
</body>

</html>