<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="../assets/css/community/header.css">
  <link rel="stylesheet" href="../assets/css/community/my-post.css">
  <link rel="stylesheet" href="../assets/css/community/index.css">
  <link rel="stylesheet" href="../assets/css/community/footer.css">
  <!-- Link Swiper's CSS -->

  <title>myPost</title>
</head>

<body>
  <div class="othersPost-wrapper">
  <div class="othersPost-wrapper">
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
    

    <div class="othersPost-post-area">
      <div class="othersPost-post">
        <div class="othersPost-post-wrapper">
          <div class="othersPost-image-wrapper">
            <!-- 이미지까지의 래퍼 -->
            <div class="othersPost-profile-wrapper">
              <div class="othersPost-profile">
                <img src="../assets/images/community/smallprofileimage.png" alt="프로필 이미지">
                <p class="member-id">내 아이디</p>
              </div>
            </div>
            <div class="othersPost-image-wrapper">
              <div class="othersPost-image">
                <!-- Swiper -->
                <div class="swiper mySwiper">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <img src="../assets/images/community/postedCat.png" alt="포스트 1">
                    </div>
                    <div class="swiper-slide">
                      <img src="../assets/images/community/postedCat2.png" alt="포스트 2">
                    </div>
                    <div class="swiper-slide">
                      <img src="../assets/images/community/postedCat3.png" alt="포스트 3">
                    </div>
                    <div class="swiper-slide">
                      <img src="../assets/images/community/postedCat4.png" alt="포스트 4">
                    </div>
                    <div class="swiper-slide">
                      <img src="../assets/images/community/postedCat5.png" alt="포스트 5">
                    </div>
                  </div>
                  <div class="swiper-button-next">
                    <img src="../assets/images/community/chevron-right.png" alt="우측 버튼">
                  </div>
                
                  <div class="swiper-button-prev">
                    <img src="../assets/images/community/chevron-left-icon.png" alt="좌측 버튼">
                  </div>
                </div>
                 
              </div>
                
            </div>

          </div>
          <!-- 게시글 내용 부분 -->
          <div class="othersPost-post-detail-wrapper">
            <div class="othersPost-post-detail">
              <div class="others-like">
                <img class="like-button enable" src="../assets/images/community/8666647-heart-icon-6.png" alt="좋아요버튼">
                <img class="liked-button disable" src="../assets/images/community/8666647-heart-icon-2-fill.png" alt="좋아요눌린버튼">
              </div>
              <p class="like-number">5</p>
              <div class="post-modify-buttons">
                <button class="post-modify-button">
                  <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="수정하기">
                  <div class="post-modify-box">
                    <a href="#" class="h7" id="delete-my-post">삭제하기</a>
                    <a href="#" class="h7" id="modify-my-post">수정하기</a>
                  </div>
                </button>
              </div>
            </div>
              <div class="post-content-detail">
                <p class="h6">게시물에 적은 본문 내용이 여기에 적힙니다.</p>
                <p class="h6"># 태그를 이용해서 연관 검색어에 걸리도록 작성가능합니다.</p>
                <p class="h6">아무거나 적어주세요.</p>
                <p class="h6">당신의 반려동물에 관한건 뭐든지요.</p>
                <p class="h6">사진은 필참이기에 게시글만 올라올 가능성은 없습니다.</p>
                <p class="h6">아름다운 말만 적어주세요.</p>
              </div>
          </div>
        </div>
      </div>
      <div class="post-comments-wrapper">
        <div class="post-comments">
          <div class="comment-number">
            <p>댓글</p>
            <p>4</p>
          </div>
          <!-- 댓글 작성  -->
          <div class="post-comment-writing">
            <img src="../assets/images/community/smallprofileimage.png" alt="댓글 작성칸 작은 프로필이미지">
            <div class="post-comment-writer-wrapper">
              <form action="#" class="post-comment-writer" method="post">
                <input class="h7" type="text" name="comment-write" placeholder="댓글을 작성해 주세요">
                <button class= "h7" id="post-comment-upload">완료</button>
              </form>
            </div>
          </div>
        </div>
        <div class="comment-list-wrapper">
          <div class="comment-list">
            <ul class="comments">
              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/smallprofileimage.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">내 아이디</p>
                      <p class="comment-content">이거는 내가쓴 댓글이에요.</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/profileimage5.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">고양이가 귀여워요</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src=../assets/images/community/profileimage3.png alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">캣타워인가요?</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/profileimage6.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">얼굴이 너무귀엽네요</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/profileimage2.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">얼굴이 너무귀엽네요</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/profileimage4.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">캣타워인가요?</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>

              <li>
                <div class="comment-wrapper">
                  <div class="comment">
                    <img class="profile-image" src="../assets/images/community/profileimage.png" alt="내 댓글 이미지">
                    <div class="comment-info">
                      <p class="comment-id">아이디</p>
                      <p class="comment-content">얼굴이 너무 귀엽네요.</p>
                    </div>
                  </div>
                  <button class="comment-modify-button">
                    <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="삭제하기">
                    <div class="modify-box">
                      <a href="#" class="h7" id="delete-post">삭제하기</a>
                    </div>
                  </button>
                </div>
              </li>


            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="comments-section"></div>

    <div class="user-likes-best-wrapper">
      <div class="user-likes-best">
        <p class="h4.black">유저들의 비슷한 공감 베스트</p>
      </div>
      <div class="user-likes-best-image">
        <ul>
          <li>
            <a href="#"><img src="../assets/images/community/userlike1.png" alt="공감베스트사진 1"></a>
          </li>

          <li>
            <a href="#"><img src="../assets/images/community/userlike2.png" alt="공감베스트사진 2"></a>
          </li>

          <li>
            <a href="#"><img src="../assets/images/community/userlike3.png" alt="공감베스트사진 3"></a>
          </li>

          <li>
            <a href="#"><img src="../assets/images/community/userlike4.png" alt="공감베스트사진 4"></a>
          </li>

          <li>
            <a href="#"><img src="../assets/images/community/userlike5.png" alt="공감베스트사진 5"></a>
          </li>

          <li>
            <a href="#"><img src="../assets/images/community/userlike6.png" alt="공감베스트사진 6"></a>
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
  var swiper = new Swiper(".mySwiper", {
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
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

  //댓글 삭제 박스 띄우기

    const commentUl = document.querySelector(".comments ul")
    const commentButtonList = document.querySelectorAll(".comments li");
    const modifyButtons = document.querySelectorAll(".comment-modify-button");
    const modifyBox = document.querySelectorAll(".modify-box")


    modifyButtons.forEach((button, i) => {
      button.addEventListener("click", (e) => {
        if(modifyBox[i].style.display === "none" || modifyBox[i].style.display === ""){
          modifyBox[i].style.display = "flex";
        }else {
          modifyBox[i].style.display = "none";
        }

      })
    })

  

  //댓글 삭제 기능 

  const ul = document.querySelector(".comments");
  const list = document.querySelectorAll(".comments li");
  const buttons = document.querySelectorAll(".modify-box");

  buttons.forEach((button, i) => {
    button.addEventListener("click", (e) => {
      console.log("현재 클릭한 버튼의 list", list[i])
      ul.removeChild(list[i])
    })
  })



  const postButton = document.querySelector(".post-modify-button");
  const postModifySelector = document.querySelector(".post-modify-box");

  postButton.addEventListener("click", () => {
    if(postModifySelector.style.display === "" || postModifySelector.style.display === "none") {
      postModifySelector.style.display = "flex";
    }else {
      postModifySelector.style.display = "none";
    }
  })



 

  //좋아요 버튼 토글하기

  const likeButton = document.querySelector(".like-button");
  const likedButton = document.querySelector(".liked-button");

  likeButton.addEventListener("click", () => {
      likedButton.className = "liked-button enable";
      likeButton.className = "like-button disable";
    
  })

  likedButton.addEventListener("click", () => {
      likedButton.className = "liked-button disable";
      likeButton.className = "like-button enable";
    
  })

</script>
</html>
