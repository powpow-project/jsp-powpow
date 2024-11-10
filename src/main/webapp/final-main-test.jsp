<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>powpow</title>
<link rel="stylesheet" href="/powpow/assets/css/main/main-index.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="assets/css/main/final-main-test.css" />
<link rel="shortcut icon" href="assets/images/favicon.ico" />
</head>
<body>
   <div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="/powpow/assets/images/test/new-logo-blue.png" alt="로고" />
						</div>
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

					<div class="menu-container">
						<ul class="menu-wrap h4">
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
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="/powpow/myhome/list.myhome">나의정보</a></li>
								<li class="sub-menu"><a href="/powpow/myhome/pet-list.myhome">반려동물정보</a></li>
								<li class="sub-menu"><a href="/powpow/myhome/shipping-list.myhome">나의쇼핑</a></li>
								<li class="sub-menu"><a href="/powpow/community/read.community">내게시글</a></li>
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
  
    <div class="slider">
       <div class="slides">
          <div class="slide">
             <img class="main-banner" src="assets/images/test/final-banner1.png" alt="메인배너">
           </div>
          <div class="slide">
             <img class="main-banner" src="assets/images/test/final-banner2.png" alt="메인배너">
           </div>
          <div class="slide">
             <img class="main-banner" src="assets/images/test/final-banner3.png" alt="메인배너">
           </div>
       </div>
    
       <div class="navigation">
         <span class="dot" onclick="currentSlide(1)"></span>
         <span class="dot" onclick="currentSlide(2)"></span>
         <span class="dot" onclick="currentSlide(3)"></span>
       </div>
   </div>
  

  <div id="main-frame">

    <div class="text-wrap">
      <p>Creating Pawsitive Change Together</p>
      <p>당신의 마음이 머무는 반려공간</p>
    </div>
    
    <div id="main-content">
      <!-- 사진버튼 -->
      <div class="button-icons" >
         <button class="icon-wrap" onclick="location.href='/powpow/product/product-dog.product?productCategoryName=강아지'">
            <img class="icon" src="assets/images/test/111.jpg" alt="강아지버튼1">
            <div class="more-show1">DOG ALL →</div>
         </button>
         <button class="icon-wrap" onclick="location.href='/powpow/product/product-cat.product?productCategoryName=고양이'">
            <img class="icon" src="assets/images/test/222.jpg" alt="고양이버튼2">
            <div class="more-show2">CAT ALL →</div>
         </button>
         <button class="icon-wrap" onclick="location.href='/powpow/product/product-dog.product?productCategoryName=강아지'">
            <img class="icon" src="assets/images/test/333.jpg" alt="강아지버튼3">
            <div class="more-show3">DOG ALL →</div>
         </button>
         <button class="icon-wrap" onclick="location.href='/powpow/product/product-cat.product?productCategoryName=고양이'">
            <img class="icon" src="assets/images/test/444.jpg" alt="강아지버튼4">
            <div class="more-show4">CAT ALL →</div>
         </button>
      </div>
         <!-- 핫한 상품 이미지 -->
      <div class="hot-product">
        <div><h2>반려동물을 위한 똑똑한 소비습관</h2></div>
        <div class="hot-images">
          <div class="image-and-cart">
            <div class="hot-image">
              <img src="assets/images/test/hot-product.png" alt="핫">
              <div class="coupon">+15% 쿠폰</div>
            </div>
            <div class="cart">
              <img src="assets/images/test/cart.png" alt="장바구니">
              <p>담기</p>
            </div>
          </div>

          <div class="image-and-cart">
            <div class="hot-image">
              <img src="assets/images/test/hot-product2.png" alt="핫">
              <div class="coupon">일일특가</div>
            </div>
            <div class="cart">
              <img src="assets/images/test/cart.png" alt="장바구니">
              <p>담기</p>
            </div>
          </div>
        </div>
      </div>
      <!-- 상품 나열 -->
      <div id="product-container">
        <div class="products-wrap">
          <p class="more"><a href="/powpow/product/product-health-main.product?productCategoryName=헬스+">+ 더보기</a></p>
          <div class="products">
            <div class="product-card">
              <img class="card-image" src="assets/images/test/10.png" alt="상품이미지"> 
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/9.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/8.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/7.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/6.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
          </div>
        </div>
      

        <div class="products-wrap">
          <div class="products">
            <div class="product-card">
              <img class="card-image" src="assets/images/test/5.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/4.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/3.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/2.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/1.png" alt="상품이미지">
              <div class="card-text-wrap">
                <p>피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <!-- 헬스배너 -->
      <div class="health-banner">
        <div class="health-link">
          <div class="health-text">
            <h2>POWPOW 헬스 +</h2>
            <p class="banner-content">우리 반려동물에게 필요한 의학정보 알아봐요!</p>
            <button onclick="location.href='/powpow/product/product-health-main.product?productCategoryName=헬스+'" class="health-direction">
              <p>헬스+ 이동하기</p>
              <img src="assets/images/test/direction.png" alt="화살표">
            </button>
          </div>
        </div>
        
        <div class="health-banner-image">
          <img src="assets/images/test/health-banner4.png" alt="헬스배너">
          <div class="health-banner-text">
            <p class="white-text">plastic free plate</p>
            <p class="black-text">outdoor activity</p>
          </div>
        </div>
    
      </div>
      
      <!-- 커뮤니티 -->
      <div class="recommend-section">
        <div class="community-plusmore">
           <h2>이런 게시물은 어때요?</h2>
           <span class="comunity-more"><a href="/powpow/community/community-main.community">+ 더보기</a></span>
        </div>
        <div class="recommend-container">
          
          <!-- 큰 박스 -->
          <div class="large-post">
            <div class="post-image">
              <img src="assets/images/test/big-community.png" alt="커뮤니티">
            </div>
          </div>

          <!-- 2층작은 박스 -->
            <div class="small-wrap">
              <div class="small-post">
                <div class="post">
                  <img class="post-image" src="assets/images/test/post2.png" alt="포스트">
                  <div class="profile-info">
                    <img
                      class="profile-image"
                      src="assets/images/test/profile-image.png"
                      alt="Profile Image"
                    />
                    <span class="user-id">user_id_1</span>
                  </div>
                </div>
                <div class="post">
                  <img class="post-image" src="assets/images/test/post3.png" alt="포스트">
                  <div class="profile-info">
                    <img
                      class="profile-image"
                      src="assets/images/test/profile-image.png"
                      alt="Profile Image"
                    />
                    <span class="user-id">user_id_2</span>
                  </div>
                </div>
                <div class="post">
                  <img class="post-image" src="assets/images/test/post4.png" alt="포스트">
                  <div class="profile-info">
                    <img
                      class="profile-image"
                      src="assets/images/test/profile-image.png"
                      alt="Profile Image"
                    />
                    <span class="user-id">user_id_3</span>
                  </div>
                </div>
              
                <div class="post">
                  <img class="post-image" src="assets/images/test/post5.png" alt="포스트">
                  <div class="profile-info">
                    <img
                      class="profile-image"
                      src="assets/images/test/profile-image.png"
                      alt="Profile Image"
                    />
                    <span class="user-id">user_id_4</span>
                  </div>
                </div>
              </div>
            
              <!-- 1층 작은박스 -->
          <div class="small-wrap">
            <div class="small-post">
              <div class="post">
                <img class="post-image" src="assets/images/test/post6.png" alt="포스트">
                <div class="profile-info">
                  <img
                    class="profile-image"
                    src="assets/images/test/profile-image.png"
                    alt="Profile Image"
                  />
                  <span class="user-id">user_id_5</span>
                </div>
              </div>
              <div class="post">
                <img class="post-image" src="assets/images/test/post7.png" alt="포스트">
                <div class="profile-info">
                  <img
                    class="profile-image"
                    src="assets/images/test/profile-image.png"
                    alt="Profile Image"
                  />
                  <span class="user-id">user_id_6</span>
                </div>
              </div>
              <div class="post">
                <img class="post-image" src="assets/images/test/post8.png" alt="포스트">
                <div class="profile-info">
                  <img
                    class="profile-image"
                    src="assets/images/test/profile-image.png"
                    alt="Profile Image"
                  />
                  <span class="user-id">user_id_7</span>
                </div>
              </div>
            
              <div class="post">
                <img class="post-image" src="assets/images/test/post9.png" alt="포스트">
                <div class="profile-info">
                  <img
                    class="profile-image"
                    src="assets/images/test/profile-image.png"
                    alt="Profile Image"
                  />
                  <span class="user-id">user_id_8</span>
                </div>
              </div>
            </div>
            </div>
          </div>
      </div>
         
      <div class="donation-wrap">
            <div class="donation">
               <div class="donation-letter">
                  <span class="h4">포포 이용자들이 이만큼 기부했어요!</span><br />
                  <span class="money">30,993,000 원</span><br /> 
                  <span class="h6"> 포포에서 산 제품의 금액 중 5%는 기부, 후원금으로 산정됩니다</span>
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
   </div>
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

<script>
 let slideIndex = 0;
 showSlides(slideIndex);
 autoSlides();

 function showSlides(n) {
   const slides = document.querySelectorAll(".slide");
   const dots = document.querySelectorAll(".dot");

   console.log(slides);  // 여기서 확인
   console.log(dots);    // 여기서 확인

   if (slides.length === 0 || dots.length === 0) {
     console.log("슬라이드나 도트 요소를 찾을 수 없습니다.");
     return;  // 요소가 없으면 함수 종료
   }

   if (n >= slides.length) {
     slideIndex = 0;
   }
   if (n < 0) {
     slideIndex = slides.length - 1;
   }

   // 모든 슬라이드를 숨김
   slides.forEach((slide) => {
     slide.style.display = "none";
   });

   // 모든 도트를 비활성화
   dots.forEach((dot) => {
     dot.classList.remove("active");
   });

   // 현재 슬라이드와 도트 표시
   slides[slideIndex].style.display = "block";
   dots[slideIndex].classList.add("active");
 }

 // 자동 슬라이드 기능
 function autoSlides() {
   showSlides(slideIndex += 1);
   setTimeout(autoSlides, 3000); // 3초 간격
 }

 // 도트 클릭으로 슬라이드 이동
 function currentSlide(n) {
   slideIndex = n - 1;
   showSlides(slideIndex);
 }


</script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="/powpow/assets/js/header.js"></script>
</html>