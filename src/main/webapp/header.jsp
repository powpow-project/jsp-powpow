<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/powpow/assets/css/main/main-index.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="icon" href="/powpow/assets/images/favicon.ico">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
        <div class="main-banner-container">
            <div class="header-hover-area"></div>

            <div class="header-container">
                <div id="header-wrap">
                    <nav id="nav">
                        <div class="left">
                            <img src="/powpow/assets/images/test/new-logo-blue.png" alt="로고" />
                        </div>

                        <div class="menu-container">
                            <ul class="menu-wrap h6">
                                <li class="menu"><a href="/powpow/product/main.product">스토어</a></li>
                                <li class="menu"><a href="/powpow/community/community-main.community">커뮤니티</a></li>
                                <li class="menu"><a href="/powpow/list.myhome">마이홈</a></li>
                                <li class="menu"><a href="#">이벤트</a></li>
                            </ul>

                            <div id="sector"></div>

                            <div class="sub-menu-wrap">
                                <div class="sub-menu-wrap-bg"></div>
                                <ul>
                                    <li class="sub-menu"><a href="/powpow/product/product-dog.product?productCategoryName=강아지">강아지</a></li>
                                    <li class="sub-menu"><a href="/powpow/product/product-cat.product?productCategoryName=고양이">고양이</a></li>
                                    <li class="sub-menu"><a href="/powpow/product/product-health-main.product?productCategoryName=헬스+">헬스+</a></li>
                                </ul>
                                <ul>
                                    <li class="sub-menu"><a href="/powpow/community/community-main.community">홈</a></li>
                                    <li class="sub-menu"><a href="/powpow/community/read.community">내게시글</a></li>
                                </ul>
                                <ul>
                                    <li class="sub-menu"><a href="/powpow/myhome/list.myhome">나의정보</a></li>
                                    <li class="sub-menu"><a href="/powpow/myhome/pet-list.myhome">반려동물정보</a></li>
                                    <li class="sub-menu"><a href="/powpow/myhome/shipping-list.myhome">나의쇼핑</a></li>
                                </ul>
                                <ul>
                                    <li class="sub-menu"><a href="#"></a></li>
                                    <li class="sub-menu"><a href="#"></a></li>
                                    <li class="sub-menu"><a href="#"></a></li>
                                    <li class="sub-menu"><a href="#"></a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="right-con">
                            <div class="right">
                                <div class="icons">
                                    <a href="#"><img src="/powpow/assets/images/search-icon.jpg" alt="검색" /></a>
                                    <a href="/powpow/myhome/shipping-list.myhome"><img src="/powpow/assets/images/truck-icon.jpg" alt="배송" /></a>
                                    <a href="/powpow/product/cart-check.product"><img src="/powpow/assets/images/shopping-cart-icon.jpg" alt="카트" /></a>
                                </div>
                                <div class="sector"></div>
                                <c:if test="${not empty sessionScope.buyerEmail}">
                                    <div class="login">
                                        <a href="/powpow/member/logout.member">로그아웃</a>
                                    </div>
                                </c:if>
                                <c:if test="${empty sessionScope.buyerEmail}">
                                    <div class="login">
                                        <a href="/powpow/member/login.member">로그인</a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="slider">
       <div class="slides">
          <div class="slide">
             <img class="main-banner" src="/powpow/assets/images/test/final-banner1.png" alt="메인배너">
           </div>
          <div class="slide">
             <img class="main-banner" src="/powpow/assets/images/test/final-banner2.png" alt="메인배너">
           </div>
          <div class="slide">
             <img class="main-banner" src="/powpow/assets/images/test/final-banner3.png" alt="메인배너">
           </div>
       </div>
    
       <div class="navigation">
         <span class="dot" onclick="currentSlide(1)"></span>
         <span class="dot" onclick="currentSlide(2)"></span>
         <span class="dot" onclick="currentSlide(3)"></span>
       </div>
   </div>
    </div>
</body>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="/powpow/assets/js/header.js"></script>
</html>