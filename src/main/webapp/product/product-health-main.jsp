<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/product/health-main.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>헬스+쇼핑</title>
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
							<a href="#"> <img src="../assets/images/search-icon.jpg"
								alt="검색" /></a> <a href="#"> <img
								src="../assets/images/truck-icon.jpg" alt="배송" />
							</a> <a href="./cart-check.product"> <img
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
						<li class="menu"><a href="./product/main.product">스토어</a></li>
						<li class="menu"><a href="#">커뮤니티</a></li>
						<li class="menu"><a href="./list.myhome">마이홈</a></li>
						<li class="menu"><a href="#">이벤트</a></li>
					</ul>
					<div id="sector"></div>
					<div class="sub-menu-wrap">
						<ul>
							<li class="sub-menu"><a href="./product/product-dog.product">강아지</a></li>
							<li class="sub-menu"><a href="./product/product-cat.product">고양이</a></li>
							<li class="sub-menu"><a
								href="./product/product-bird.product">새</a></li>
							<li class="sub-menu"><a
								href="./product/product-fish.product">물고기</a></li>
							<li class="sub-menu"><a
								href="./product/product-health-main.product">헬스+</a></li>
						</ul>
						<ul>
							<li class="sub-menu"><a href="./community/list.community">홈</a></li>
							<li class="sub-menu"><a href="#">헬스+</a></li>
						</ul>
						<ul>
							<li class="sub-menu"><a href="./myhome/list.myhome">나의
									정보</a></li>
							<li class="sub-menu"><a href="./myhome/pet-list.myhome">반려동물
									정보</a></li>
							<li class="sub-menu"><a href="./myhome/shipping-list.myhome">나의
									쇼핑</a></li>
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
	<!-- 배너 섹션 -->
	<section class="health-banner-container">
		<div class="health-banner">
			<c:forEach var="banner" items="${banners}">
				<img src="../assets/images/product/${banner.adminBannerImage}"
					alt="헬스 배너">
			</c:forEach>
		</div>
	</section>
	<!-- 추천상품 -->
	<div id="content-frame">
		<div class="recommendation-section-dog">
			<div class="all-and-header">
				<div class="section-header-container">
					<div class="section-header">
						<img src="../assets/images/shopping/dogicon.png" alt="강아지 헬스+">
						<span>성장기별 추천 아이템이에요!</span>
					</div>
					<div class="category-buttons">
						<button data-category="강아지 퍼피" class="category-button active">퍼피</button>
						<button data-category="강아지 어덜트" class="category-button">어덜트</button>
						<button data-category="강아지 시니어" class="category-button">시니어</button>
					</div>
				</div>
				<a href="#" class="view-all">전체보기</a>
			</div>
			<div class="slider-container-dog">
				<button class="slider-btn prev">&#10094;</button>
				<div class="slider">
					<c:forEach var="product" items="${products}">
						<c:if
							test="${product.productCategoryName == '강아지' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
							<div class="product" data-category="강아지 ${product.productAge}">
								<div class="product-image-wrap">
									<img src="../assets/images/product/${product.productImage}"
										alt="${product.productName}">
									<div class="hover-box">
										<div class="hover-box-new">
											<a class="hover-new" href="#"> <img
												src="../assets/images/shopping/share.png">
											</a>
										</div>
										<div class="hover-box-cart">
											<a class="hover-cart"
												href="product-cart-write-ok.product?productId=${product.id}">
												<img src="../assets/images/shopping/carthovar.png"
												alt="장바구니 추가">
											</a>
										</div>
										<div class="hover-box-heart">
											<a class="hover-heart" href="#"> <img
												src="../assets/images/shopping/like.png">
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<button class="slider-btn next">&#10095;</button>
			</div>
		</div>
		<div id="content-frame">
			<div class="recommendation-section-cat">
				<div class="all-and-header">
					<div class="section-header-container">
						<div class="section-header">
							<img src="../assets/images/shopping/caticon.png" alt="고양이 헬스+">
							<span>성장기별 추천 아이템이에요!</span>
						</div>
						<div class="category-buttons">
							<button data-category="고양이 퍼피" class="category-button active">퍼피</button>
							<button data-category="고양이 어덜트" class="category-button">어덜트</button>
							<button data-category="고양이 시니어" class="category-button">시니어</button>
						</div>
					</div>
					<a href="#" class="view-all">전체보기</a>
				</div>

				<div class="slider-container-cat">
					<button class="slider-btn prev">&#10094;</button>
					<div class="slider">
						<c:forEach var="product" items="${products}">
							<c:if
								test="${product.productCategoryName == '고양이' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
								<div class="product" data-category="고양이 ${product.productAge}">
									<div class="product-image-wrap">
										<img src="../assets/images/product/${product.productImage}"
											alt="${product.productName}">
										<div class="hover-box">
											<div class="hover-box-new">
												<a class="hover-new" href="#"> <img
													src="../assets/images/shopping/share.png"></a>
											</div>
											<div class="hover-box-cart">
												<a class="hover-cart"
													href="product-cart-write-ok.product?productId=${product.id}">
													<img src="../assets/images/shopping/carthovar.png"
													alt="장바구니 추가">
												</a>
											</div>
											<div class="hover-box-heart">
												<a class="hover-heart" href="#"> <img
													src="../assets/images/shopping/like.png"></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div id="content-frame">
					<div class="recommendation-section-bird">
						<div class="all-and-header">
							<div class="section-header-container">
								<div class="section-header">
									<img src="../assets/images/shopping/bridicon.png" alt="새 헬스+">
									<span>성장기별 추천 아이템이에요!</span>
								</div>
								<div class="category-buttons">
									<button data-category="새 퍼피" class="category-button active">퍼피</button>
									<button data-category="새 어덜트" class="category-button">어덜트</button>
									<button data-category="새 시니어" class="category-button">시니어</button>
								</div>
							</div>
							<a href="#" class="view-all">전체보기</a>
						</div>

						<div class="slider-container-bird">
							<button class="slider-btn prev">&#10094;</button>
							<div class="slider">
								<c:forEach var="product" items="${products}">
									<c:if
										test="${product.productCategoryName == '새' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
										<div class="product" data-category="새 ${product.productAge}">
											<div class="product-image-wrap">
												<img src="../assets/images/product/${product.productImage}"
													alt="${product.productName}">
												<div class="hover-box">
													<div class="hover-box-new">
														<a class="hover-new" href="#"> <img
															src="../assets/images/shopping/share.png"></a>
													</div>
													<div class="hover-box-cart">
														<a class="hover-cart"
															href="product-cart-write-ok.product?productId=${product.id}">
															<img src="../assets/images/shopping/carthovar.png"
															alt="장바구니 추가">
														</a>
													</div>
													<div class="hover-box-heart">
														<a class="hover-heart" href="#"> <img
															src="../assets/images/shopping/like.png"></a>
													</div>
												</div>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<button class="slider-btn next">&#10095;</button>
						</div>
					</div>
					<div id="content-frame">
						<div class="recommendation-section-fish">
							<div class="all-and-header">
								<div class="section-header-container">
									<div class="section-header">
										<img src="../assets/images/shopping/fishicon.png"
											alt="물고기 헬스+"> <span>성장기별 추천 아이템이에요!</span>
									</div>
									<div class="category-buttons">
										<button data-category="물고기 퍼피" class="category-button active">퍼피</button>
										<button data-category="물고기 어덜트" class="category-button">어덜트</button>
										<button data-category="물고기 시니어" class="category-button">시니어</button>
									</div>
								</div>
								<a href="#" class="view-all">전체보기</a>
							</div>

							<div class="slider-container-fish">
								<button class="slider-btn prev">&#10094;</button>
								<div class="slider">
									<c:forEach var="product" items="${products}">
										<c:if
											test="${product.productCategoryName == '물고기' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
											<div class="product"
												data-category="물고기 ${product.productAge}">
												<div class="product-image-wrap">
													<img src="../assets/images/product/${product.productImage}"
														alt="${product.productName}">
													<div class="hover-box">
														<div class="hover-box-new">
															<a class="hover-new" href="#"> <img
																src="../assets/images/shopping/share.png"></a>
														</div>
														<div class="hover-box-cart">
															<a class="hover-cart" href="#"> <img
																src="../assets/images/shopping/carthovar.png"></a>
														</div>
														<div class="hover-box-heart">
															<a class="hover-heart" href="#"> <img
																src="../assets/images/shopping/like.png"></a>
														</div>
													</div>
												</div>
											</div>
										</c:if>
									</c:forEach>
								</div>
								<button class="slider-btn next">&#10095;</button>
							</div>
						</div>
					</div>
					<section class="health-banners-container">
						<div class="health-banners">
							<img src="../cart/img/banners.png" alt="헬스배너들">
						</div>
					</section>
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
									<p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해
										책임을 지지 않습니다.</p>
									<p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
								</div>

								<div class="footer-section legal3">
									<p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
								</div>
							</div>
						</div>
					</footer>
</body>
<script src="../assets/js/product/health-main.js">
</script>
<script>
//DOMContentLoaded 이벤트를 사용하면 DOM이 준비된 후에만 JavaScript를 실행할 수 있어, 코드가 예기치 않게 동작하는 것을 방지합니다.
document.addEventListener('DOMContentLoaded', () => {
    const categoryElement = document.getElementsByName('productCategoryName')[0];
    const categoryButtons = document.querySelectorAll('.category-button');
    const products = document.querySelectorAll('.product');
    filterProducts(['강아지 퍼피', '고양이 퍼피', '새 퍼피', '물고기 퍼피']);


    if (categoryElement) {
        categoryElement.addEventListener('click', (e) => {
            const animalCategory = e.target.value;
            filterProducts([animalCategory]);
        });
    } 

    categoryButtons.forEach((button) => {
        button.addEventListener('click', (e) => {
            const animalCategory = e.target.getAttribute('data-category');
            filterProducts([animalCategory]);
        });
    });

    function filterProducts(animalCategory) {
        products.forEach((product) => {
            const productCategory = product.getAttribute('data-category');

            if(animalCategory.includes(productCategory)){
            	product.style.display = 'block';
            }else {
            	product.style.display = 'none';
            }
        });
    }
});

</script>

</html>