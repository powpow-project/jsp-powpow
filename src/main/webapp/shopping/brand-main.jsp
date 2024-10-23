<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/shopping/brand-main.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>판매자쇼핑메인</title>
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
							<a href="cart.jsp"><img src="../assets/images/shopping/cart.png"alt="카트"></a>
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

	<!-- 배너 섹션 -->
	<section class="slider-container-banner">
		<div class="slider-container">
			<div class="slider">
				<img src="../assets/images/shopping/product-not-found.png" alt="배너"> <img
					src="../assets/images/shopping/product-not-found.png" alt="배너"> <img
					src="../assets/images/shopping/product-not-found.png" alt="배너">
			</div>
			<div class="slider-btn">
				<button class="prev" onclick="moveSlide(-1)">&#10094;</button>
				<button class="next" onclick="moveSlide(1)">&#10095;</button>
			</div>
		</div>
	</section>

	<!-- 상품 섹션 -->
	<section class="products">
		<!-- 베스트 상품 섹션 -->
		<div class="best-products">
			<h2>베스트 상품</h2>
			<div class="search-box">
				<input type="text" placeholder="검색란">
				<button type="submit">
					<img src="../assets/images/shopping/search.png" alt="search Icon"> <i
						class="fa fa-search"></i>
					<!-- 검색 아이콘 -->
				</button>
			</div>
			<div class="category-dropdown">
				<ul>
					<li class="category-item">
						<p class="category-title">
							카테고리 <img class="toggle-icon" src="../assets/images/shopping/arrow.png"
								alt="Toggle Icon" />
						</p>
						<div class="sub-category" style="display: none;">
							<p>전체 상품보기</p>
							<p>전체 상품보기</p>
							<p>전체 상품보기</p>
							<p>전체 상품보기</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="product-grid">
				<div class="product">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">

				</div>
				<div class="product">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">

				</div>
				<div class="product">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">

				</div>
				<div class="product">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">

				</div>
			</div>
		</div>

		<!-- 전체 상품 섹션 -->
		<div class="all-products">
			<div class="all-sup-title">
				<div class="all-category-dropdown">
					<ul>
						<li class="all-category-item">
							<p class="all-category-title">
								인기상품순 <img class="all-toggle-icon" src="../assets/images/shopping/arrow.png"
									alt="Toggle Icon" />
							</p>
							<div class="all-sub-category" style="display: none;">
								<p>판매 인기순</p>
								<p>상품평 많은순</p>
								<p>낮은 가격순</p>
								<p>신규 등록순</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<h2>전체 상품</h2>
			<div class="product-grid">
				<!-- 상품 반복 -->
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★(201)</p>
				</div>
				<!-- ... 더 많은 상품 -->
			</div>
			<div class="product-grid">
				<!-- 상품 반복 -->
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<!-- ... 더 많은 상품 -->
			</div>
			<div class="product-grid">
				<!-- 상품 반복 -->
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
				<div class="product2">
					<img src="../assets/images/shopping/product-not-found.png" alt="상품 이미지">
					<p class="product-name">피시포독 그레인프리 참치+스피니치</p>
					<p class="product-name">+캐롯 85g,5개</p>
					<p class="product-price">9,900원</p>
					<p class="product-rating">★★★★★ (201)</p>
				</div>
			</div>
		</div>

		<!-- 페이지네이션 -->
		<div class="pagination">
			<a href="#">&#x3c;&#x3c;</a>
			<!-- 이전 페이지 버튼 -->
			<a href="#">&#x3c;</a>
			<!-- 이전 페이지 버튼 -->
			<span>1</span>
			<!-- 현재 페이지 -->
			<a href="#">&#x3e;</a>
			<!-- 다음 페이지 버튼 -->
			<a href="#">&#x3e;&#x3e;</a>
			<!-- 다음 페이지 버튼 -->
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
						<p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로
							146, 3층 4층</p>
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

	</section>

</body>
<script src="../assets/js/shopping/brand-main.js">
</script>

</html>