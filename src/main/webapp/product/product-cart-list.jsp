
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품있는장바구니</title>
<link rel="stylesheet" href="../assets/css/product/cart-write.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">

</head>

<body>
	<div id="frame">
		</head>

		<body>
			<div class="header-container">
				<div id="header-wrap">
					<div id="border">
						<div id="nav">
							<div class="left">
								<img src="../assets/images/shopping/powpow-logo.png" alt="로고">
							</div>
							<div class="right">
								<div class="icons">
									<a href="#"><img src="../assets/images/shopping/search.png"alt="검색"></a> 
									<a href="#"><img src="../assets/images/shopping/icon 2.png" alt="배송"></a> 
									<a href="#"><img src="../assets/images/shopping/cart.png" alt="카트"></a>
								</div>
								<div class="sector"></div>
								<div class="login">
									<a href="#">로그인</a>
								</div>
							</div>
						</div>
						<div class="menu-container">
							<ul class="menu-wrap h4">
								<li class="menu"><a href="#">스토어</a></li>
								<li class="menu"><a href="#">커뮤니티</a></li>
								<li class="menu"><a href="#">마이홈</a></li>
								<li class="menu"><a href="#">이벤트</a></li>
							</ul>
							<div id="sector"></div>
							<div class="sub-menu-wrap">
								<ul>
									<li class="sub-menu"><a href="#">강아지</a></li>
									<li class="sub-menu"><a href="#">고양이</a></li>
									<li class="sub-menu"><a href="#">새</a></li>
									<li class="sub-menu"><a href="#">물고기</a></li>
									<li class="sub-menu"><a href="#">헬스+</a></li>
								</ul>
								<ul>
									<li class="sub-menu"><a href="#">홈</a></li>
									<li class="sub-menu"><a href="#">헬스+</a></li>
								</ul>
								<ul>
									<li class="sub-menu"><a href="#">나의 정보</a></li>
									<li class="sub-menu"><a href="#">반려동물 정보</a></li>
									<li class="sub-menu"><a href="#">나의 쇼핑</a></li>
									<li class="sub-menu"><a href="#">내 게시글</a></li>
								</ul>

								<ul>
									<li class="sub-menu"><a href="#"></a></li>
									<li class="sub-menu"><a href="#"></a></li>
									<li class="sub-menu"><a href="#"></a></li>
									<li class="sub-menu"><a href="#"></a></li>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>
			<main>
				 <h2 class="h2">장바구니</h2>
			<section class="cart-section">
				<form action="product-cart-delete.product" method="POST" id="delete-form">
					<div class="all">
						<label><input type="checkbox" id="select-all" class="item-checkbox"> 전체선택</label>
						<button type="button" id="delete-button" onclick="submitDeleteForm()" class="check-delete">선택삭제</button>
					</div>
					
					<c:forEach var="cartItem" items="${cartItems}">
						<div class="cart-item">
							<label>
								<input type="checkbox" id="cartItem_${cartItem.productId}" name="selectedIds" value="${cartItem.productId}" class="item-checkbox">
							</label>
							<a href="#"><img src="../assets/images/product/${cartItem.productImage}" alt="${cartItem.productName}" class="product-img"></a>
							<div class="product-info">
								<h3>${cartItem.productName}</h3>
								<div class="price">
									<span>가격: ${cartItem.productPrice}원</span>
								</div>
							</div>
							<div class="quantity-control">
								<button type="button" class="btn-minus">-</button>
								<input type="text" value="1" class="quantity-input">
								<button type="button" class="btn-plus">+</button>
							</div>
						</div>
					</c:forEach>
				</form>
			</section>
				<!-- 결제 정보 -->
            <section class="payment-info">
                <h2 class="h2">결제 정보</h2>

                <!-- 쿠폰 선택 -->
                <div class="coupon-section">
                    <select class="coupon-check">
                        <option value="">적용할 쿠폰</option>
                        <option value="1">할인 쿠폰</option>
                    </select>
                </div>

                <!-- 요약 정보 -->
                <div class="summary">
                    <span>총 상품 금액: </span> <span>${totalPrice}원</span><br>
                    <span>총 배송비: </span> <span>무료</span><br>
                    <span>총 결제 금액: </span> <span>${totalPrice}원</span><br>
                    <span>예상 기부액: </span> <span>${donationAmount}원</span><br>
                </div>

                <!-- 주문 버튼 -->
                <div class="button-container">
                    <button class="check-button">선택 상품 주문</button>
                    <button class="payment-button">전체 상품 주문</button>
                </div>
            </section>
        </main>
    </div>
				

	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3 calss="h3">고객센터 &gt;</h3>
				<p>
					<span class="highlight">0000-0000</span> <span>09:00~18:00</span>
				</p>
				<ul class="custom-list">
					<li>평일: 전체 문의 상담</li>
					<li>토요일, 공휴일: 포포 배송 주문건 상담</li>
					<li>일요일: 휴무</li>
				</ul>
			</div>

			<div class="footer-section">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">채용정보</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보 처리방침</a></li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">안전거래센터</a></li>
				</ul>
			</div>

			<div class="footer-section">
				<ul>
					<li><a href="#">입점신청</a></li>
					<li><a href="#">제휴/광고 문의</a></li>
					<li><a href="#">POWPOW 신고센터</a></li>
					<li><a href="#">파트너 개인정보 처리방침</a></li>
					<li><a href="#">상품권 소개</a></li>
					<li><a href="#">고객의 소리</a></li>
				</ul>
			</div>

			<div class="footer">
				<div class="footer-section legal">
					<p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146,
						3층 4층</p>
					<p>
						contact@powpow.com | 0000 <span class="highlight">사업자정보확인</span>
					</p>
					<p>통신판매업신고번호 제2024-서울강남-0000호</p>
				</div>

				<div class="footer-section legal2">
					<p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을
						지지 않습니다.</p>
					<p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
				</div>

				<div class="footer-section legal3">
					<p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
</body>

<script src="../assets/js/product/cart-write.js"></script>
<script>
// 선택 삭제 폼 제출 함수

function submitDeleteForm() {
    document.getElementById("delete-form").submit();
    
}
</script>

</html>
