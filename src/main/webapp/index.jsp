<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="assets/css/main/main-index.css" />
<link rel="stylesheet" href="assets/css/main/index-product.css" />

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="shortcut icon" href="assets/images/favicon.ico" />
<style>
#mainbanner {
	
}

.swiper-container {
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	object-fit: cover;
}

.community-images {
	position: relative;
}

.community-images .text-wrap{
	position: absolute;
	left : 200px;
	bottom : 40px;
}

.community-images .text-wrap p {
	color: white;
	font-size: 40px;
	font-weight: 900;
}

.community-images .text-wrap span {
	color: white;
	font-size: 24px;
	font-weight: 500;
}

.community-images-bg {
	position: absolute;
	right : 0;
	bottom : 0;
	width : 790px;
	height : 200px;
	background : linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3));
	border-radius: 20px;

}

</style>

</head>
<body>
	<form id="frame">

		<!-- 헤더 -->
		<jsp:include page="header.jsp"></jsp:include>

		<!-- 메인배너 -->
		<div id="main">
			<div id="frame2">
				<header>
					<div id="mainbanner">
						<div class="swiper-container mySwiper-main-banner">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<img src="assets/images/main/Rectangle 235.png"
										alt="Banner Image" class="banner-img" />
								</div>
								<div class="swiper-slide">
									<img src="assets/images/main/Rectangle 235.png"
										alt="Banner Image" class="banner-img" />
								</div>

							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
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
						<a href="community/community-main.community">
							<button type="button" class="community-btn">커뮤니티 이동하기</button>
						</a>
					</div>
					<div class="community-images">
						<img src="assets/images/main/Rectangle 239.png"
							alt="Dog Community" />
						<div class="community-images-bg"></div>
						<div class="text-wrap">
							<p>POWPOW 커뮤니티</p>
							<span>다른 반려동물들도 구경하러 와요.</span>
						</div>
					</div>
				</section>

				<!-- 콘텐츠 포스트 섹션 -->
				<section class="featured-posts">
					<div class="featured-header">
						<h2>이런 게시물은 어때요?</h2>
						<a href="community/community-main.community" class="more-button">+더보기</a>
					</div>
					<div class="post-cards">
						<div class="swiper-container mySwiper-sub">
							<div class="swiper-wrapper">
								<div class="swiper-slide post-card">
									<img src="assets/images/main/1.jpg" alt="Dog Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/pubby.jpg" alt="Cat Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/6.jpg" alt="Another Cat Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/4.jpg" alt="Bird Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/5.jpg" alt="Bird Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/pubby2.jpg" alt="Another Dog Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/1.jpg" alt="Dog Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/pubby.jpg" alt="Cat Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/6.jpg" alt="Another Cat Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/4.jpg" alt="Bird Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/5.jpg" alt="Bird Post" />
								</div>
								<div class="swiper-slide post-card">
									<img src="assets/images/main/pubby2.jpg" alt="Another Dog Post" />
								</div>
							</div>
							<div class="swiper-button-next"></div>
							<div class="swiper-button-prev"></div>
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
							<a href="product/product-dog.product?productCategoryName=강아지"><img src="assets/images/main/Icon_Dog 1.png"
								alt="강아지 아이콘" /></a>
							<h2>이 제품이 지금 핫해요!</h2>
							<a href="product/product-dog.product?productCategoryName=강아지" class="more-button">+더보기</a>
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

	<!-- 푸터 -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
	let swiper = new Swiper(".mySwiper-main-banner", {
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
	
	let swiper2 = new Swiper(".mySwiper-sub", {
		slidesPerView: 6,
        spaceBetween: 30,
        autoHeight: true,
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
</script>
</html>