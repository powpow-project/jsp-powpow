<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="assets/css/main/main-index.css" />
<link rel="shortcut icon" href="assets/images/favicon.ico" />
</head>
<body>
	<form id="frame">

		<div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"><img src="assets/images/search-icon.jpg"
									alt="검색" /></a> <a href="./myhome/shipping-list.myhome"> <img
									src="assets/images/truck-icon.jpg" alt="배송" />
								</a> <a href="./cart-check.product"> <img
									src="assets/images/shopping-cart-icon.jpg" alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="./member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="./product/main.product">스토어</a></li>
							<li class="menu"><a
								href="./community/community-main.community">커뮤니티</a></li>
							<li class="menu"><a href="./list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a
									href="product/product-dog.product?productCategoryName=강아지">강아지</a></li>
								<li class="sub-menu"><a
									href="product/product-cat.product?productCategoryName=고양이">고양이</a></li>
								<li class="sub-menu"><a
									href="product/product-bird.product?productCategoryName=새">새</a></li>
								<li class="sub-menu"><a
									href="product/product-fish.product?productCategoryName=물고기">물고기</a></li>
								<li class="sub-menu"><a
									href="product/product-health-main.product?productCategoryName=헬스+">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="community/community-main.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./myhome/list.myhome">나의
										정보</a></li>
								<li class="sub-menu"><a href="./myhome/pet-list.myhome">반려동물
										정보</a></li>
								<li class="sub-menu"><a
									href="./myhome/shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="./community/read.community">내
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

		<!-- 메인배너 -->
		<div id="main">
			<div id="frame2">
				<header>
					<div id="mainbanner">
						<div class="banner">
							<img src="assets/images/main/Rectangle 235.png"
								alt="Banner Image" class="banner-img" />
						</div>
						<div class="community-banner">
							<img src="assets/images/main/community-img.png"
								alt="Community Banner" class="community-banner-img" />
						</div>
					</div>
				</header>

				<!-- 아이콘 -->
				<section class="categories">
					<a class="category"
						href="product/product-dog.product?productCategoryName=강아지"> <img
						src="assets/images/main/Group 750.png" alt="Dog" />
					</a> <a class="category"
						href="product/product-cat.product?productCategoryName=고양이"> <img
						src="assets/images/main/Group 749.png" alt="Cat" />
					</a> <a class="category"
						href="product/product-brid.product?productCategoryName=새"> <img
						src="assets/images/main/Group 748.png" alt="Bird" />
					</a> <a class="category"
						href="product/product-fish.product?productCategoryName=물고기"> <img
						src="assets/images/main/Frame 748.png" alt="Reptile" />
					</a>
				</section>

				<!-- 커뮤니티 섹션 -->
				<section class="community">
					<div class="community-banner">
						<h2>
							POWPOW<br />커뮤니티 OPEN
						</h2>
						<p>쇼핑과 소통 그리고 정보공유를 한번에</p>
						<button class="community-btn">커뮤니티 이동하기</button>
					</div>
					<div class="community-images">
						<img src="assets/images/main/Rectangle 239.png"
							alt="Dog Community" />
					</div>
				</section>

				<!-- 콘텐츠 포스트 섹션 -->
				<section class="featured-posts">
					<div class="featured-header">
						<h2>이런 게시물은 어때요?</h2>
						<button class="more-button">+더보기</button>
					</div>
					<div class="post-cards">
						<div class="post-card">
							<img src="assets/images/main/1.jpg" alt="Dog Post" />
						</div>
						<div class="post-card">
							<img src="assets/images/main/pubby.jpg" alt="Cat Post" />
						</div>
						<div class="post-card">
							<img src="assets/images/main/6.jpg" alt="Another Cat Post" />
						</div>
						<div class="post-card">
							<img src="assets/images/main/4.jpg" alt="Bird Post" />
						</div>
						<div class="post-card">
							<img src="assets/images/main/5.jpg" alt="Bird Post" />
						</div>
						<div class="post-card">
							<img src="assets/images/main/pubby2.jpg" alt="Another Dog Post" />
						</div>
					</div>
				</section>

				<!-- 헬스 섹션 -->
				<section class="community2">
					<div class="community2-banner">
						<h2>
							POWPOW<br />헬스+
						</h2>
						<p>우리 반려동물에게 필요한 의학정보 알아봐요!</p>
						<button class="community2-btn">헬스+ 이동하기</button>
					</div>
					<div class="community2-images">
						<img src="assets/images/main/health-banner.png"
							alt="fitness-Community" />
					</div>
				</section>

				<!-- 제품 섹션1 -->
				<div id="frame3">
					<section class="products">
						<section class="header">
							<a href="#"><img src="assets/images/main/Icon_Dog 1.png"
								alt="강아지 아이콘" /></a>
							<h2>이 제품이 지금 핫해요!</h2>
							<button class="more-button">+더보기</button>
						</section>

						<div class="product-cards">
							<div class="product-card">
								<img src="assets/images/main/toy1.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy2.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy3.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy6.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy4.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy5.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>
						</div>
					</section>

					<!-- 제품 섹션2 -->
					<section class="products">
						<section class="header">
							<a href="#"><img src="assets/images/main/Icon_Cat02 1.png"
								alt="고양이 아이콘" /></a>
							<h2>이 제품이 지금 핫해요!</h2>
							<button class="more-button">+더보기</button>
						</section>
						<div class="product-cards">
							<div class="product-card">
								<img src="assets/images/main/toy1.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy2.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy3.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy4.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy5.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy6.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>
						</div>
					</section>

					<!-- 제품 섹션3 -->
					<section class="products">
						<section class="header">
							<a href="#"><img src="assets/images/main/Icon_Bird 1.png"
								alt="새 아이콘" /></a>
							<h2>이 제품이 지금 핫해요!</h2>
							<button class="more-button">+더보기</button>
						</section>

						<div class="product-cards">
							<div class="product-card">
								<img src="assets/images/main/toy1.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy2.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy3.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy4.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy5.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy6.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>
						</div>
					</section>

					<!-- 제품 섹션4 -->
					<section class="products">
						<section class="header">
							<a href="#"><img src="assets/images/main/Icon_Fish 1.png"
								alt="물고기 아이콘" /></a>
							<h2>이 제품이 지금 핫해요!</h2>
							<button class="more-button">+더보기</button>
						</section>

						<div class="product-cards">
							<div class="product-card">
								<img src="assets/images/main/toy1.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy2.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy3.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy4.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy5.jpg" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>

							<div class="product-card">
								<img src="assets/images/main/toy6.webp" alt="Product 1" />
								<p class="product-name">아카나 독 라이트 앤 피트 레시피, 6kg</p>
								<p class="product-price">55,760원</p>
								<p class="shipping-info">
									<span class="shipping-highlight">오늘출발</span> 오늘 3시 전 주문시(무료배송)
								</p>
								<p class="rating">⭐⭐⭐⭐⭐</p>
							</div>
						</div>
					</section>
				</div>
			</div>
			<div class="donation-wrap">
				<div class="donation">
					<div class="donation-letter">
						<span class="h4">포포 이용자들이 이만큼 기부했어요!</span><br /> <span
							style="font-size: 50px">300,993,000 원</span><br /> <span
							class="h6"> 포포에서 산 제품의 금액 중 5%는 기부, 후원금으로 산정됩니다</span>
					</div>
				</div>
				<div class="announce">
					<p class="h4">공지사항</p>
					<div class="annouce-letter">
						<ul>
							<li>마이 홈페이지 업데이트 2024.09.21</li>
							<li>Shipping delay controversy law suit</li>
							<li>Welcome new POW kit</li>
							<li>Get ready for winter season with us!</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</form>

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
<script src="./assets/js/index/index-main.js"></script>
</html>