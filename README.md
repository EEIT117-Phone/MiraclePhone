# MiraclePhone

### 命名規則
##### 駝峰式大小寫（Camel-Case，Camel Case，camel case）
* 小駝峰式命名法（lower camel case）
> 第一個單字以小寫字母開始；第二個單字的首字母大寫，例如：firstName、lastName。
>> 使用此規則
>>> **類別變數名稱**、**方法名稱**、**html**、**css**、**js**、**images**
* 大駝峰式命名法（upper camel case）
> 每一個單字的首字母都採用大寫字母，例如：FirstName、LastName、CamelCase，也被稱為Pascal命名法（英語：Pascal Case）。
>> 使用此規則
>>> **類別名稱**

* * *

### Java Src Package

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>目錄</th>
<th>說明</th>
</tr>
</thead>
<tbody>

<tr class="odd">
<td><p>org.iii.eeit117.project.controller</p></td>
<td><p>Servlet 放置位置<br />
</p></td>
</tr>

<tr class="even">
<td><p>org.iii.eeit117.project.model.service</p></td>
<td><p>Service介面(interface) 放置位置</p></td>
</tr>

<tr class="odd">
<td><p>org.iii.eeit117.project.model.service.impl</p></td>
<td><p>Service實作類別(class) 放置位置<br />
</p></td>
</tr>

<tr class="even">
<td><p>org.iii.eeit117.project.model.dao</p></td>
<td><p>Dao類別 放置位置</p></td>
</tr>


<tr class="odd">
<td><p>org.iii.eeit117.project.model.data</p></td>
<td><p>Enum 放置位置<br />
</p></td>
</tr>

<tr class="even">
<td><p>org.iii.eeit117.project.model.vo</p></td>
<td><p>ORM Object 放置位置(與資料庫資料表相對應之類別)<br />
</p></td>
</tr>

<tr class="odd">
<td><p>org.iii.eeit117.project.model.util</p></td>
<td><p>Util工具類別 放置位置<br />
</p></td>
</tr>

</tbody>
</table>

* * *

### 靜態資源路徑
<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>目錄</th>
<th>說明</th>
</tr>
</thead>
<tbody>

<tr class="odd">
<td><p>/WebContent/模組名稱/</p></td>
<td><p>html放置位置<br /></p>
<p>(請大家依自己的模組名稱建立目錄，並放置所需畫面之html)<br /></p>
<p>範例<br /></p>
<p>/WebContent/cart/cart.html<br /></p>
<p>/WebContent/cart/orderConfirm.html<br /></p>
</td>
</tr>

<tr class="even">
<td><p>/WebContent/css/</p></td>
<td><p>css 放置目錄(css包含各模組之css)</p></td>
</tr>

<tr class="odd">
<td><p>/WebContent/js/</p></td>
<td><p>js 放置目錄(js包含各模組之js)</p></td>
</tr>

<tr class="even">
<td><p>/WebContent/images/</p></td>
<td><p>圖片放置位置</p></td>
</tr>

</tbody>
</table>

* * *

### Commit Code
#### [新增|修改|Bug|共用][模組名稱] 簡單描述
#### 範例
* [新增] 購物車(cart)
* [修改] 購物車(cart) 修正購物車畫面跑版
* [Bug] 購物車(cart)  使用者重新整理畫面，購物車資訊不見
* [共用] 新增檔案上傳共用模組
* [共用] 修改web.xml

* * *

### 共用模組
#### 待補充