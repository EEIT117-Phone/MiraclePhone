<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>OrderConfirm</title>
    <link href="<c:url value='/css/orderConfirm.css' />" rel="stylesheet">
    <script src="<c:url value='/js/cart.js' />"></script>
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
            <c:forEach varStatus="status" var="entry" items="${cartItems}">
						<thead class="thead-light">
							<tr>
								<th scope="col" colspan="8">賣家 : ${entry.account}</th>
							</tr>
						</thead>
					<c:forEach varStatus="status" var="product" items="${entry.productVos}">
						<tbody>
 							<tr class = "product"> 
 								<td>${status.count}</td>
 								<td><img src="<c:url value='/fs/img/${product.pic1}' />" border=0 width=100px /></td>
 								<td>${product.phoneType.label}</td>
 								<td>${product.storage.label}</td>
 								<td>${product.color.label}</td>
 								<td>1</td>
 								<td><fmt:formatNumber value="${product.amount}" type="number"/><span class="sum">${product.amount}</span></td>
  								
 							</tr> 
					</c:forEach>
					</c:forEach>
                    <tr class="ship-payment">
                        <td></td>
                        <td>付款資訊:</td>
                        <td colspan="5">
                            <div class="payment">${payInfoMsg}</div>
                            <div></div>
                        </td>
                    </tr>

                    <tr class="ship-method">
                        <td></td>
                        <td>寄送資訊:</td>
                        <td colspan="5">
                            <div class="shipMethod">${shipInfoMsg}</div>
                        </td>
                    </tr>

                 
                </tbody>
 				
            </table>
            <table class="cart-summary table">

                <tbody>
                    <tr>
                        <td></td>
                        <td id=totalUnit>件商品</td>
                        <td id=totalAmount>總金額:$</td>
                    </tr>
                </tbody>
              
            </table>
        </div>

    </main>
</body>

</html>