<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/product/health-main.css">
<link rel="icon" href="/powpow/assets/images/favicon.ico">
<title>헬스+쇼핑</title>
</head>

<body>
	<c:if test="${param.cart}">
		<script>
			alert("장바구니에 추가 되었습니다. 이 자식아!😎")
		</script>
	</c:if>
	<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	   
	<!-- 배너 섹션 -->
	<section class="health-banner-container">
		<div class="health-banner">
			<c:forEach var="banner" items="${banners}">
				<img src="../assets/images/admin/${banner.adminBannerImage}"alt="헬스 배너">
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
					<div class="category-buttons dog-category-buttons">
						<button data-category="강아지 퍼피" class="category-button">퍼피</button>
						<button data-category="강아지 어덜트" class="category-button">어덜트</button>
						<button data-category="강아지 시니어" class="category-button">시니어</button>
					</div>
				</div>
				<a href="#" class="view-all">전체보기</a>
			</div>

			<div class="slider-container-dog swiper-container dog-swiper">
			    <div class="swiper-button-next"></div>
      			<div class="swiper-button-prev"></div>
				<div class="slider swiper-wrapper dogs-swiper-warpper">
	
				<c:forEach var="product" items="${products}">
						<c:if test="${product.productCategoryName == '강아지' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
							<div class="product swiper-slide dog-items" data-category="강아지 ${product.productAge}">
								<div class="product-image-wrap">
									<img src="../assets/images/product/${product.productImage}"alt="${product.productName}">
									<div class="hover-box">
										<div class="hover-box-new">
											<a class="hover-new" href="#"> <img src="../assets/images/shopping/share.png"></a>
										</div>
										<div class="hover-box-cart">
											<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
												<img src="../assets/images/shopping/carthovar.png" alt="장바구니 추가">
											</a>
										</div>
										<div class="hover-box-heart">
											<a class="hover-heart" href="product-like-ok.product?productId=${product.id}"><img src="../assets/images/shopping/like.png"></a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach> 
		
				</div>
			</div>
		</div>
		<div class="recommendation-section-cat">
			<div class="all-and-header">
				<div class="section-header-container">
					<div class="section-header">
						<img src="../assets/images/shopping/caticon.png" alt="고양이 헬스+">
						<span>성장기별 추천 아이템이에요!</span>
					</div>
					<div class="category-buttons cat-category-buttons">
						<button data-category="고양이 퍼피" class="category-button">퍼피</button>
						<button data-category="고양이 어덜트" class="category-button">어덜트</button>
						<button data-category="고양이 시니어" class="category-button">시니어</button>
					</div>
				</div>
				<a href="#" class="view-all">전체보기</a>
			</div>

			<div class="slider-container-cat swiper-container cat-swiper">
			    <div class="swiper-button-next"></div>
      			<div class="swiper-button-prev"></div>
				<div class="slider swiper-wrapper cats-swiper-warpper">
	
				<c:forEach var="product" items="${products}">
						<c:if test="${product.productCategoryName == '고양이' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
							<div class="product swiper-slide cat-items" data-category="고양이 ${product.productAge}">
								<div class="product-image-wrap">
									<img src="../assets/images/product/${product.productImage}"alt="${product.productName}">
									<div class="hover-box">
										<div class="hover-box-new">
											<a class="hover-new" href="#"> <img src="../assets/images/shopping/share.png"></a>
										</div>
										<div class="hover-box-cart">
											<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
												<img src="../assets/images/shopping/carthovar.png" alt="장바구니 추가">
											</a>
										</div>
										<div class="hover-box-heart">
											<a class="hover-heart" href="product-like-ok.product?productId=${product.id}"><img src="../assets/images/shopping/like.png"></a>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach> 
		
				</div>
			</div>
		</div>
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
						<c:if test="${product.productCategoryName == '새' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
							<div class="product" data-category="새 ${product.productAge}">
								<div class="product-image-wrap">
									<img src="../assets/images/product/${product.productImage}"alt="${product.productName}">
									<div class="hover-box">
										<div class="hover-box-new">
											<a class="hover-new" href="#"> <img src="../assets/images/shopping/share.png"></a>
										</div>
										<div class="hover-box-cart">
											<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
												<img src="../assets/images/shopping/carthovar.png"alt="장바구니 추가">
											</a>
										</div>
										<div class="hover-box-heart">
											<a class="hover-heart" href="#"> <img src="../assets/images/shopping/like.png"></a>
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
		<div class="recommendation-section-fish">
			<div class="all-and-header">
				<div class="section-header-container">
					<div class="section-header">
						<img src="../assets/images/shopping/fishicon.png" alt="물고기 헬스+">
						<span>성장기별 추천 아이템이에요!</span>
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
						<c:if test="${product.productCategoryName == '물고기' && (product.productAge == '퍼피' || product.productAge == '어덜트' || product.productAge == '시니어')}">
							<div class="product" data-category="물고기 ${product.productAge}">
								<div class="product-image-wrap">
									<img src="../assets/images/product/${product.productImage}"alt="${product.productName}">
									<div class="hover-box">
										<div class="hover-box-new">
											<a class="hover-new" href="#"> <img src="../assets/images/shopping/share.png"></a>
										</div>
										<div class="hover-box-cart">
											<a class="hover-cart" href="#"> <img src="../assets/images/shopping/carthovar.png"></a>
										</div>
										<div class="hover-box-heart">
											<a class="hover-heart" href="#"> <img src="../assets/images/shopping/like.png"></a>
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
			<c:forEach var="banner" items="${banners}">
				<img src="../assets/images/product/${banner.adminBannerImage}"alt="헬스 배너">
			</c:forEach>
		</div>
	</section>
	
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/product/health-main.js"></script>
</html>








