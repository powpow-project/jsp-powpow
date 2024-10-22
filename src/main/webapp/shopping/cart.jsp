<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품있는장바구니</title>
<link rel="stylesheet" href="../assets/css/shopping/cart.css">
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
									<a href="#"><img src="../assets/images/shopping/search.png"
										alt="검색"></a> <a href="#"><img
										src="../cart/img/icon 2.png" alt="배송"></a> <a href="#"><img
										src="../assets/images/shopping/cart.png" alt="카트"></a>
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
				<p class="cart h2">장바구니</p>
				<section class="cart-section">
					<div class="all">
						<label><input type="checkbox" id="select-all"
							class="item-checkbox" checked> 전체선택</label>
						<button id="delete-button" class="check-delete">선택 삭제</button>
					</div>
					<div class="cart-item">
						<label><input type="checkbox" class="item-checkbox"
							checked></label> <a href="#"><img
							src="../assets/images/shopping/product-not-found.png"
							alt="상품 이미지" class="product-img"></a>
						<div class="product-info">
							<h3>오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 간식 69g (유통기한 2025-02225까지)</h3>
							<div class="price">
								<span>가격: 4,050원</span> <span><del>4,500원</del></span>
							</div>
						</div>
						<div class="quantity-control">
							<span><button class="btn-minus">-</button></span> <input
								id="result1" value="1" class="quantity-input"> <span><button
									class="btn-plus">+</button></span>
						</div>
					</div>
					<div class="cart-item">
						<label><input type="checkbox" class="item-checkbox"
							checked></label> <a href="#"><img
							src="../assets/images/shopping/product-not-found.png"
							alt="상품 이미지" class="product-img"></a>
						<div class="product-info">
							<h3>오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 간식 69g (유통기한 2025-02225까지)</h3>
							<div class="price">
								<span>가격: 4,050원</span> <span><del>4,500원</del></span>
							</div>
						</div>
						<div class="quantity-control">
							<span><button class="btn-minus">-</button></span> <input
								id="result2" value="1" class="quantity-input"> <span><button
									class="btn-plus">+</button></span>
						</div>
					</div>
				</section>
				<section class="payment-info">
					<p class="cart-pay h2">결제정보</p>
					<div class="coupon-section">
						<select class="coupon-check">
							<option value="">적용할 쿠폰</option>
							<option value="1">할인 쿠폰</option>
						</select>
					</div>

					<div class="summary">
						<span>총 상품금액</span> <span>총 배송비</span> <span>총 결제금액</span> <span>예상
							기부액</span>
					</div>

					<div class="pay-summary">
						<span>8,100원</span> <span>+</span> <span>무료</span> <span>=</span>
						<span>8,100원</span> <span class="coin">520원</span>
					</div>
					<div class="button-container">
						<button class="check-button">선택상품주문</button>
						<button class="payment-button">전체상품주문</button>
					</div>
				</section>
			</main>
	</div>

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

<script src="../assets/js/shopping/cart.js"></script>
<script>
    </script>

</html>