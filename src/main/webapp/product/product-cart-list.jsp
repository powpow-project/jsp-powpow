<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품있는장바구니</title>
<link rel="stylesheet" href="../assets/css/product/cart-write.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="icon" href="../assets/images/favicon.ico">

</head>
<body>
			<div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="../assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"><img src="../assets/images/search-icon.jpg"
									alt="검색" /></a> <a href="../myhome/shipping-list.myhome"> <img
									src="../assets/images/truck-icon.jpg" alt="배송" />
								</a> <a href="../cart-check.product"> <img
									src="../assets/images/shopping-cart-icon.jpg" alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="../member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="../product/main.product">스토어</a></li>
							<li class="menu"><a
								href="../community/community-main.community">커뮤니티</a></li>
							<li class="menu"><a href="../list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a
									href="../product/product-dog.product?productCategoryName=강아지">강아지</a></li>
								<li class="sub-menu"><a
									href="../product/product-cat.product?productCategoryName=고양이">고양이</a></li>
								<li class="sub-menu"><a
									href="../product/product-bird.product?productCategoryName=새">새</a></li>
								<li class="sub-menu"><a
									href="../product/product-fish.product?productCategoryName=물고기">물고기</a></li>
								<li class="sub-menu"><a
									href="../product/product-health-main.product?productCategoryName=헬스+">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="../community/community-main.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="../myhome/list.myhome">나의
										정보</a></li>
								<li class="sub-menu"><a href="../myhome/pet-list.myhome">반려동물
										정보</a></li>
								<li class="sub-menu"><a
									href="../myhome/shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="../community/read.community">내
										게시글</a></li>
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
			<form action="product-cart-delete.product" method="POST">
				<div class="all">
					<label class="checkbox-label"> <input type="checkbox" id="select-all" class="item-checkbox"> 전체선택 </label>
					<button type="button" id="delete-button" class="check-delete">선택삭제</button>
				</div>

				<c:forEach var="cartItem" items="${cartItems}">
					<div class="cart-item">
						<label> <input type="checkbox"
							id="cartItem_${cartItem.productId}" name="selectedIds"
							value="${cartItem.productId}" class="item-checkbox">
						</label> <a href="#"><img
							src="../assets/images/product/${cartItem.productImage}"
							alt="${cartItem.productName}" class="product-img"></a>
						<div class="productTotal">
							<div class="product-info">
								<h3>${cartItem.productName}</h3>
								<div class="price">
									<span>가격: ${cartItem.productPrice}원</span>
								</div>
							</div>
							<div class="quantity-button">
								<button type="button" class="btn-minus">-</button>
								<input type="text" value="1" class="quantity-input">
								<button type="button" class="btn-plus">+</button>
							</div>
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
				<span>총 상품 금액: </span> <span>${totalPrice}원</span><br> <span>총
					배송비: </span> <span>무료</span><br> <span>총 결제 금액: </span> <span>${totalPrice}원</span><br>
				<span>예상 기부액: </span> <span>${donationAmount}원</span><br>
			</div>

			<!-- 주문 버튼 -->
			<div class="button-container">
				<button class="check-button">선택 상품 주문</button>
				<button class="payment-button">전체 상품 주문</button>
			</div>
		</section>
	</main>


	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3>고객센터 &gt;</h3>
				<p>
					<span class="highlight">0000-0000</span> <span>09:00~18:00</span>
				</p>
				<ul class="custom-list">
					<li>평일: 전체 문의 상담</li>
					<li>토요일, 공휴일: 포포 배송 주문건 상담</li>
					<li>일요일: 휴무</li>
				</ul>
				<button class="kakao-button">카톡 상담 (평일 09:00~18:00)</button>

			</div>

			<div class="footer-section">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">채용정보</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">개인정보 처리방침</a></li>
				</ul>
			</div>

			<div class="footer-section">
				<ul>
					<li><a href="#">배너신청</a></li>
					<li><a href="#">쿠폰신청</a></li>
					<li><a href="#">고객의 소리</a></li>
					<li><a href="#">이메일 문의</a></li>
					<li><a href="#">제휴/광고 문의</a></li>
				</ul>
			</div>

			<div class="footer">
				<div class="footer-section legal">
					<p>(주)포포 | 공동 제작 류 재 준 | 서울 강남구 테헤란로 146, 3층 4층</p>
					<p>
						contact@powpow.com | 사업자등록번호: <span class="highlight">사업자정보확인</span>
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
const deleteButton = document.getElementById("delete-button");
const form = document.querySelector('form'); // 폼 요소 선택

deleteButton.addEventListener("click", () => {
    const selectedCheckboxes = document.querySelectorAll('input[name="selectedIds"]:checked'); // 체크된 체크박스 선택
    const selectedIds = Array.from(selectedCheckboxes).map(checkbox => checkbox.value); // 체크된 체크박스의 value 값 가져오기

    if (selectedIds.length > 0) {
        console.log("선택된 상품 ID:", selectedIds); // 선택된 상품 ID 출력
        // 선택된 상품 삭제를 위해 폼 제출
        form.submit(); // 여기서 폼을 제출하여 서버로 데이터 전송
    } else {
        console.log("선택된 상품이 없습니다."); // 선택된 상품이 없을 경우 출력
    }
});
</script>

</html>
