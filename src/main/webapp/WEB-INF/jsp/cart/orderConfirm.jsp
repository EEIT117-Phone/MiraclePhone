<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>OrderConfirm</title>
    <link href="<c:url value='/css/orderConfirm.css' />" rel="stylesheet">
    <script src="<c:url value='/js/orderConfirm.js' />"></script>
</head>

<body>
    <main role="main">
        <div class="shop-main">
            <h3>Order Confirmation</h3>
            <h3>您已訂購成功!</h3>
            <table class="cart-header table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">商品</th>
                        <th scope="col">容量</th>
                        <th scope="col">顏色</th>
                        <th scope="col">數量</th>
                        <th scope="col">總計</th>
                    </tr>
                </thead>

            </table>

            <table class="cart-main table">
            <c:forEach varStatus="status" var="product" items="${cartItem}">
                <thead class="thead-light">
                    <tr>
                        <th scope="col" colspan="8">賣家 : ${product.account}</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${status.count}</td>
							<td><img src="/MiraclePhone/downloadFile?filename=${product.productId}_1" border=0 width=100px /></td>
							<td>${product.phoneType}</td>
							<td>${product.memory}</td>
							<td>${product.color}</td>
							<td>1</td>
							<td>${product.amount}</td>
                    </tr>
            </c:forEach>
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
                        <td>${cart.size()}件商品</td>
                        <td>總金額:$${totalAmount}</td>
                    </tr>
                </tbody>
              
            </table>
        </div>

    </main>
</body>

</html>