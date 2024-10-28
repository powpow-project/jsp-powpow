<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="stylesheet" href="../assets/css/community/community-others-post.css">
  <link rel="stylesheet" href="../assets/css/community/header.css">
  <link rel="stylesheet" href="../assets/css/community/index.css">
  <link rel="stylesheet" href="../assets/css/community/footer.css">
  <title>othersPost</title>
</head>
<body>

  
  <div class="othersPost-wrapper">
    <div class="header-container">
      <div id="header-wrap">
        <div id="border">
                <div id="nav">
                  <div class="left">
                      <img src="../assets/images/powpow-logo.png" alt="로고">
                  </div>
                  <div class="right">
                    <div class="icons">
                      <a href="#"><img src="../assets/images/search-icon.jpg" alt="검색"></a>
                      <a href="#"><img src="../assets/images/truck-icon.jpg" alt="배송"></a>
                      <a href="#"><img src="../assets/images/shopping-cart-icon.jpg" alt="카트"></a>
                    </div>
                    <div class="sector"></div>           
                      <div class="login"><a href="#">로그인</a></div>
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
    <div class="othersPost-header">
      <div class="header"></div>
    </div>


    <div class="othersPost-post-area">
      <div class="othersPost-post">
        <div class="othersPost-post-wrapper">
          <div class="othersPost-image-wrapper">
            <!-- 이미지까지의 래퍼 -->
            <div class="othersPost-profile-wrapper">
              <div class="othersPost-profile">
                <img src="../assets/images/community/smallprofileimage.png" alt="프로필 이미지">
                <p class="member-id">아이디</p>
              </div>
              <div class="follow-buttons">
                <button class="follow-button">팔로우</button>
                <button class="following-button">팔로잉</button>
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
              
            </div>
              
              <div class="post-content-detail">
                <p>게시물에 적은 본문 내용이 여기에 적힙니다.</p>
                <p># 태그를 이용해서 연관 검색어에 걸리도록 작성가능합니다.</p>
                <p>아무거나 적어주세요.</p>
                <p>당신의 반려동물에 관한건 뭐든지요.</p>
                <p>사진은 필참이기에 게시글만 올라올 가능성은 없습니다.</p>
                <p>아름다운 말만 적어주세요.</p>
              </div>
          </div>
        </div>
      </div>
      <div class="post-comments-wrapper">
        <div class="post-comments">
          <div class="comment-number">
            <p>댓글</p>
            <p>0</p>
          </div>
          <!-- 댓글 작성  -->
          <div class="post-comment-writing">
            <img src="../assets/images/community/smallprofileimage.png" alt="댓글 작성칸 작은 프로필이미지">
            <div class="post-comment-writer-wrapper">
              <form action = "서블릿주소" class="post-comment-writer" method="post">
                <input class="h7" type="text" name="comment" placeholder="댓글을 작성해 주세요."></input>
                <button type="button" class="h7">완료</button>
              </form>
            </div>
          </div>
        </div>
       
        <div class="no-comment-section"></div>

        <div class="post-comment-none">
          <p>등록된 댓글이 없습니다</p>
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

  //팔로우 버튼 구현 로직

 const followButton = document.querySelector(".follow-button");

 followButton.addEventListener("click", (e) => {
if(e.target.className === "follow-button") {
 e.target.className = "following-button";
 e.target.style.display = "flex";
 e.target.innerText = "팔로잉";
}else{
 e.target.className = "follow-button";
 e.target.innerText = "팔로우";
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


//댓글 버튼
const form = document.querySelector(".post-comment-writer");
const comment = document.querySelector(".post-comment-writer input");
const commentSubmitButton = document.querySelector(".post-comment-writer button");

commentSubmitButton.addEventListener("click", () => {
  if(!comment.value){
    return alert("댓글을 입력하세요");
  }
  form.submit();
})



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

  function buttonEvent() {
      alert("해당 게시물이 성공적으로 삭제되었습니다.")
    };



 
</script>

</html>