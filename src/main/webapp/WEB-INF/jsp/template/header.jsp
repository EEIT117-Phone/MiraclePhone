<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container d-flex flex-column flex-md-row justify-content-between"
            style="position: sticky;top:0;left:0">
            <a href="<c:url value='index' />"  class="py-2" aria-label="Product"
                style="color:white">
                銷售奇機1
            </a>
            <a class="py-2 d-none d-md-inline-block"></a>
            <a href="<c:url value='customer.msg/costomerService.html' />" style="color:white">客服專區</a>
            <a href="<c:url value='cart/cart.html' />" style="color:white">購物車</a>
            <a style="color:white">會員專區</a>
            <a href="<c:url value='Jsp/userLogin/userLogin.html' />" style="color:white">登入</a>
            <a href="<c:url value='Jsp/userLogin/userMake.html' />" style="color:white">註冊</a>
        </div>
    </nav>
</header>