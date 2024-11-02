<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/community/index.css">
  <link rel="stylesheet" href="../assets/css/community/header.css">
  <link rel="stylesheet" href="../assets/css/community/community-main.css">
  <link rel="stylesheet" href="../assets/css/community/footer.css">
  <link rel="stylesheet" href="../assets/css/community/swiper1.css">

  <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <title>포포 커뮤니티 화면</title>
</head>
<body>
  <!-- 커뮤니티 전체 영역 -->
  <div id="community-wrap">
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

    <!-- 헤더 경계선 -->
    <div id="header-section"></div>
    
    <!-- 커뮤니티 광고 메인 배너 부분-->

    <div class="community-main-banner-wrapper">
      <a href="./community-others-posts.jsp">
        <div class="community-main-banner">
          <img src="../assets/images/community/community-main-banner.png" alt="커뮤니티 메인 배너 이미지">
        </div>
      </a>
      <div class="community-banner-content">
        <strong class="community-banner-title">우리 가족 토리와 함께한 여름날 해변가 나들이</strong>
        <p class="community-banner-small-title">더 많은 이야기를 읽고싶다면? 포포의 커뮤니티에서 찾아보세요</p>
        <div class="profile-wrapper">
          <div class="profile">
            <img src="../assets/images/community/profileimage.png" alt="프로필 이미지">
            <p class="member-id">아이디</p>
          </div>
        </div>
      </div>
     </div>

    <!-- 메인 배너 경계선 -->
    <div id="main-banner-section"></div>

    <!-- 게시물 작성하기 카테고리 -->

    <div class="community-main-post-wrapper">
        <div class="community-main-post">
            <p class="community-main-post-title">게시물 작성하기</p>
            <p class="community-main-post-small-title">지금 나만의 반려동물 일기를 작성해보세요!</p>
        </div>
        <div class="community-main-post-image-wrapper">
          <div class="community-main-post-image">
                   <a href="./community-add-post.jsp">
                      <div class="community-main-post-new-image-wrapper">
                      <div class="main-post-new-image-box">
                        <div class="main-post-new-image"><img src="../assets/images/community/plus.png" alt="추가하기 버튼"></div>
                        <p class="h6">내 게시물 추가하기 💛</p>
                      </div>
                      </div>
                    </a>
              
              
             <!-- Swiper -->

                <div #swiperRef="" class="swiper mySwiper swiper-wrapper1">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <img class="swiper1-img" src="../assets/images/community/communitycat1.png" alt="내 이미지">
                    </div>
                    <div class="swiper-slide">
                      <img class="swiper1-img" src="../assets/images/community/communitycat2.png" alt="내 이미지2">
                    </div>
                    <div class="swiper-slide">
                      <img class="swiper1-img" src="../assets/images/community/communitycat3.png" alt="내 이미지3">
                    </div>
                    <div class="swiper-slide">
                      <img class="swiper1-img" src="../assets/images/community/communitycat4.png" alt="내 이미지4">
                    </div>
                    <div class="swiper-slide">
                      <img class="swiper1-img" src="../assets/images/community/communitycat5.png" alt="내 이미지5">
                    </div>
                  </div>
                  <div class="swiper-button-next">
                    <img src="../assets/images/community/button-right.png" alt="우측 버튼">
                  </div>
                  <div class="swiper-button-prev">
                    <img src="../assets/images/community/button-left.png" alt="좌측 버튼">
                  </div>
                  <div class="swiper-pagination"></div>
                </div>
              
          

              
                
          
          
              
          </div>
           
        </div>
      
    </div>

    <!-- 게시물 구경하기 카테고리 -->

    <div class="community-main-others-post-wrapper">
      <div class="community-others-post">
        <p class="community-others-post-title">게시물 구경하기</p>
        <p class="community-others-post-small-title">지금 다른 사람들이 작성한 반려동물 일기를 구경해보세요!</p>
      </div>

      <div class="others-post-image-wrapper">
        
        
          <a href="./community-add-post.jsp" class="new-image">
            <button>
            <img src="../assets/images/community/plus.png" alt="플러스">
            <p>내 게시물 추가하기 🐾</p>
            </button>
          </a>

           <!-- Swiper slide 2-->

           <div class="swiper mySwiper2 swiper-wrapper2">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img" src="../assets/images/community/dog5.png" alt="내 이미지"> </a>
                <div class="profile-info">
                  <div class="profiles">
                    <img class="profile-image" src="../assets/images/community/profileimage.png" alt="프로필 이미지">
                    <p class="h5" id="id">아이디</p>
                  </div>
                  <div class="like-buttons">
                    <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                    <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                  </div>
                </div>
              
              </div>
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img"src="../assets/images/community/cat3.png" alt="내 이미지2"></a>
                  <div class="profile-info">
                    <div class="profiles">
                      <img class="profile-image" src="../assets/images/community/profileimage2.png" alt="프로필 이미지">
                      <p class="h5" id="id">아이디</p>
                    </div>
                    <div class="like-buttons">
                      <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                      <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                    </div>
                  </div>
                
              </div>
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img"src="../assets/images/community/dog6.png" alt="내 이미지3"></a>
                  <div class="profile-info">
                    <div class="profiles">
                      <img class="profile-image" src="../assets/images/community/profileimage3.png" alt="프로필 이미지">
                      <p class="h5" id="id">아이디</p>
                    </div>
                    <div class="like-buttons">
                      <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                      <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                    </div>
                  </div>
                
              </div>
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img"src="../assets/images/community/bird2.png" alt="내 이미지4"></a>
                  <div class="profile-info">
                    <div class="profiles">
                      <img class="profile-image" src="../assets/images/community/profileimage4.png" alt="프로필 이미지">
                      <p class="h5" id="id">아이디</p>
                    </div>
                    <div class="like-buttons">
                      <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                      <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                    </div>
                  </div>
                
              </div>
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img"src="../assets/images/community/fish2.png" alt="내 이미지5"></a>
                <div class="profile-info">
                  <div class="profiles">
                    <img class="profile-image" src="../assets/images/community/profileimage5.png" alt="프로필 이미지">
                    <p class="h5" id="id">아이디</p>
                  </div>
                  <div class="like-buttons">
                    <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                    <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <a href="./community-others-posts.jsp"><img class="swiper2-img"src="../assets/images/community/fish2.png" alt="내 이미지5"></a>
                <div class="profile-info">
                  <div class="profiles">
                    <img class="profile-image" src="../assets/images/community/profileimage6.png" alt="프로필 이미지">
                    <p class="h5" id="id">아이디</p>
                  </div>
                  <div class="like-buttons">
                    <img class="like-button enable" src="../assets/images/community/likebutton.png" alt="좋아요버튼">
                    <img class="liked-button disable" src="../assets/images/community/heart-icon-filled-yellow.png" alt="좋아요눌린버튼">
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-button-next">
              <img src="../assets/images/community/button-right.png" alt="우측 버튼">
            </div>
            <div class="swiper-button-prev">
              <img src="../assets/images/community/button-left.png" alt="좌측 버튼">
            </div>
            <div class="swiper-pagination"></div>
          </div>
            
          
      </div>
    </div>

    <!-- 포포 커뮤니티 이벤트 배너 -->

    <div class="community-event-banner-wrapper">
      <div class="community-event-banner">
        <img src="../assets/images/community/community-banner.png" alt="포포 커뮤니티 배너">
      </div>
    </div>

    <!-- 포포 커뮤니티 이벤트 섹션 -->

    <div class="community-event-banner-section"></div>

    <div class="community-main-recommend-post-wrapper">
      <div class="community-main-recommend-post">
        <p class="recommend-post-title">강아지와 함께한 놀이 모아봤어요🪀️</p>
        <ul>
          <li>
            <a href="./community-others-posts.jsp" class="recommend-post-image">
              <img src="../assets/images/community/Rectangle236.png" alt="추천 강아지 게시물 이미지">
              <div class="profile">
                <img src="../assets/images/community/profileimage.png" alt="프로필 이미지">
                <p class="member-id">아이디</p>
              </div>
            </a>
          </li>

          <li>
            <a href="./community-others-posts.jsp" class="recommend-post-image">
              <img src="../assets/images/community/communitydog.png" alt="추천 강아지 게시물 이미지">
              <div class="profile">
                <img src="../assets/images/community/profileimage2.png" alt="프로필2 이미지">
                <p class="member-id">아이디</p>
              </div>
            </a>
          </li>

          <li>
            <a href="./community-others-posts.jsp" class="recommend-post-image">
              <img src="../assets/images/community/communitybird.png" alt="추천 새 게시물 이미지">
              <div class="profile">
                <img src="../assets/images/community/profileimage3.png" alt="프로필3 이미지">
                <p class="member-id">아이디</p>
              </div>
            </a>
          </li>

          <li>
            <a href="./community-others-posts.jsp" class="recommend-post-image">
              <img src="../assets/images/community/communityfish.png" alt="추천 물고기 게시물 이미지">
              <div class="profile">
                <img src="../assets/images/community/profileimage4.png" alt="프로필3 이미지">
                <p class="member-id">아이디</p>
              </div>
            </a>
          </li>

        </ul>
      </div>
    </div>

    <footer>
      <div class="footer-container">
        <div class="footer-section">
          <h3>고객센터 &gt;</h3>
          <p><span class="highlight">0000-0000</span> <span>09:00~18:00</span></p>
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
            <p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146, 3층 4층</p>
            <p>contact@powpow.com | 사업자등록번호: 0000000</p>
            <p>통신판매업신고번호 제2024-서울강남-0000호</p>
          </div>
    
          <div class="footer-section legal2">
            <p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
            <p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
          </div>
    
          <div class="footer-section legal3">
            <p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
   
  </div>
</body>

 <!-- Swiper JS -->
 <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

 <!-- Initialize Swiper -->
 <script>
   const swiper = new Swiper(".mySwiper", {
     slidesPerView: 4,
     slidesPerGroup: 1,
     spaceBetween: 10,
    
     navigation: {
       nextEl: ".swiper-button-next",
       prevEl: ".swiper-button-prev",
     }
   });

 </script>



<!-- Initialize Swiper -->
<script>
  const swiper2 = new Swiper(".mySwiper2", {
    slidesPerView: 5,
    slidesPerGroup: 1,
    spaceBetween: 10, 
   
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    }
  });

</script>


<script>
  const mainMenus = document.querySelectorAll(".menu-wrap .menu");
const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
const subMenuAll = document.querySelector(".sub-menu-wrap");
const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");

let count = 0;
let hoverTimeout; // 타임아웃을 저장할 변수

mainMenus.forEach((menu) => {
  menu.addEventListener("mouseover", () => {
    clearTimeout(hoverTimeout); // 기존에 설정된 타임아웃이 있으면 제거
    subMenuUl.forEach((ul) => {
      ul.style.height = "250px";
      ul.style.backgroundColor = "white";
    });
  });

  menu.addEventListener("mouseleave", () => {
    hoverTimeout = setTimeout(() => {
      subMenuUl.forEach((ul) => {
        ul.style.height = "0";
        ul.style.backgroundColor = "none";
      });
    }, 100); // 100ms 지연 후 메뉴를 닫음
  });
});

subMenus.forEach((sub, i) => {
  sub.addEventListener("mouseover", () => {
    clearTimeout(hoverTimeout); // 서브메뉴에서도 마우스 오버 시 타임아웃 제거
    subMenuUl.forEach((ul) => {
      ul.style.height = "250px";
    });
  });

  sub.addEventListener("mouseleave", () => {
    hoverTimeout = setTimeout(() => {
      subMenuUl.forEach((ul) => {
        ul.style.height = "0";
      });
    }, 100); // 100ms 지연 후 서브메뉴를 닫음
  });
});

 //좋아요 버튼 토글하기

 const likeButtons = document.querySelectorAll(".like-buttons");
  const likedButtons = document.querySelectorAll(".liked-button");

  console.log(likeButtons)
  likeButtons.forEach((like, i) => {
    likeButtons[i].addEventListener("click", () => {
      if(like.firstElementChild.className.includes("enable")){
        like.lastElementChild.className = "liked-button enable";
        like.firstElementChild.className = "like-button disable";

      }else{
        like.lastElementChild.className = "liked-button disable";
        like.firstElementChild.className = "like-button enable";
      }
    })
  })









</script>
</html>