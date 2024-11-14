<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>powpow</title>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="assets/css/main/final-main-test.css" />
<link rel="shortcut icon" href="assets/images/favicon.ico" />
</head>
<body>
  
   <jsp:include page="header.jsp"></jsp:include>
  
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
    
    <div class="petsonal-text">
    	<h2>완벽한 집사가 되기 위해 참여해보세요</h2>
  	</div>
  	<div class="petsonal">
 		<img src="assets/images/test/mbti-banner.png" alt="펫스널">
 		<div class="personal-text">
   			<p style="font-size: 50px;">나 누구개? 너 누구냥?</p>
   			<p style="font-size: 30px;">우리 강아지/고양이는 무슨 생각을 하고 있을까?</p>
 		</div>
	</div>
    <div id="main-content">
      <!-- 사진버튼 -->
  		
         <!-- 핫한 상품 이미지 -->
      <div class="hot-product">
        <div><h2>POWPOW의 추천상품!</h2></div>
        <div class="hot-images">
          <div class="image-and-cart">
            <div class="hot-image">
              <img src="assets/images/test/hot-product.png" alt="핫">
              <div class="coupon">강아지 인기</div>
              <img class="heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">	
            </div>
            <div class="cart">
              <img src="assets/images/test/cart.png" alt="장바구니">
              <p>담기</p>
            </div>
          </div>

          <div class="image-and-cart">
            <div class="hot-image">
              <img src="assets/images/test/hot-product2.png" alt="핫">
              <div class="coupon">고양이 특가</div>
              <img class="heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
              <div class="card-text-wrap">
                <p class="product-name">피시포독 그레인프리 참치+스피니치 + 캐롯 85g</p>
                <b>9,900원</b>
              </div>
              <div class="card-cart">
                <img src="assets/images/test/cart.png" alt="장바구니">
                <p>담기</p>
              </div>
            </div>
            <div class="product-card">
              <img class="card-image" src="assets/images/test/9.png" alt="상품이미지">
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
              <img class="card-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
            <p class="white-text">사람들의 이야기를 둘러보아요</p>
            <p class="black-text">커뮤니티로 이동 ></p>
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
              <img class="post-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">	
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
                  <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                  <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                  <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                  <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
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
                <img class="posts-heart-icon" src="assets/images/test/white-heart-icon.png" alt="하트">
              </div>
            </div>
            </div>
          </div>
      </div>
         
      </div>
   </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>


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