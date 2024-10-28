<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/community/community-my-community.css">
  <link rel="stylesheet" href="../assets/css/community/index.css">
  <link rel="stylesheet" href="../assets/css/community/header.css">
  <link rel="stylesheet" href="../assets/css/community/footer.css">
  <title>myCommunity</title>
</head>
<body>

  
    <div class="myCommunity-wrapper">
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
      

      <div class="myCommunity">
        <div class="first-section"></div>
        <div class="myProfile-card-wrapper">
          <div class="myProfile-card">
            <div class="myProfile-card-image-wrapper">
              <div class="myProfile-card-image">
                <img src="../assets/images/community/biggerprofile.png" alt="마이 프로필이미지">
                <p class="h4">찹쌀징어</p>
              </div>
            </div>
            <div class="myProfile-line"></div>
            <div class="myProfile-button">
              <button><a href="#">게시물 추가</button>
            </div>
            <div class="myprofile-card-information-wrapper">
              <div class="myprofile-card-information">
                <div class="my-follow">
                  <p class="h6"><a href="#">게시물 8</a></p>
                  <button class="follower">
                    <p class="h6"><a href="#">팔로워 304</a></p>
                  </button>
                  <button class="following">
                    <p class="h6"><a href="#">팔로잉 40</a></p>
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="second-section"></div>
        <div class="my-post">
          <p class="h5">MY 게시물</p>
          <div class="my-post-list">
            <ul class="my-posts">
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic1.png" alt="고양이 사진1">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic2.png" alt="고양이 사진2">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic3.png" alt="고양이 사진3">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic4.png" alt="고양이 사진4">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic5.png" alt="고양이 사진5">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic6.png" alt="고양이 사진6">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic7.png" alt="고양이 사진7">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="my-posts-1">
                <div class="my-post-1">
                  <a href="#">
                    <img src="../assets/images/community/mywittenpic8.png" alt="고양이 사진8">
                  </a>
                  <div class="post-button">
                    <button>
                      <img src="../assets/images/community/entypo-dots-three-horizontal-white.png" alt="더보기">
                    </button>
                  </div>
                  <div class="modify-selector-wrap disable">
                    <div class="modify-selector-box">
                      <div class="first-button">
                        <button class="delete" type="button" onclick="buttonEvent();">삭제하기</button>
                      </div>
                      <div class="second-button">
                        <button class="modify">수정하기</button>
                      </div>
                    </div>
                  </div>
                </div>
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
        



        <div class="popup-area-follower disable">
          <div class="pop-up-follower">
            <img  class="popup-follower-close"  src="../assets/images/community/exit-icon30.png" alt="팝업 닫기">
            <div class="follower-popup">
              <div class="menu-follower">
                <p class="h7">나를 팔로우 한 사람들</p>
              </div>
              <div class="my-follower-list">
                <ul>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage5.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage3.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage2.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage4.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                  <li>
                    <div class="following1">
                      <img src="../assets/images/community/profileimage6.png" alt="프로필 사진">
                      <p class="h7">아이디</p>
                      <button class="following-button">팔로잉</button>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        
        <div class="popup-area-following disable">
          <img  class="popup-following-close"  src="../assets/images/community/exit-icon30.png" alt="팝업 닫기">
          <div class="following-popup">
            <div class="menu-following">
              <p class="h7">내가 팔로우 한 사람들</p>
            </div>
            <div class="my-following-list">
              <ul>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage2.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage3.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage4.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage5.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
                <li>
                  <div class="following1">
                    <img src="../assets/images/community/profileimage6.png" alt="프로필 사진">
                    <p class="h7">아이디</p>
                    <button class="following-button">팔로잉</button>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
              
    
      </div>
      </div>
    
    
    </div>
    <div class="frame"></div>

</body>


<script>
      //메인 메뉴


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


      //팔로워 버튼 누르면 팝업이 뜸!
      const followerButton = document.querySelector(".follower");
      const followerPopup = document.querySelector(".popup-area-follower");

      console.log(followerPopup);

      followerButton.addEventListener("click", () => {
        followerPopup.className = "popup-area-follower enable";
      })

      //엑스 버튼 누르면 사라짐!
      const followerClose = document.querySelector(".popup-follower-close");

      followerClose.addEventListener("click", () => {
        followerPopup.className = "popup-area-follower disable";
      })

      //팔로잉 버튼 누르면 팝업이 뜸!
      const followingButton = document.querySelector(".following");
      const followingPopup = document.querySelector(".popup-area-following");

      console.log(followingPopup);

      followingButton.addEventListener("click", () => {
        followingPopup.className = "popup-area-following enable";
      })

      //엑스 버튼 누르면 사라짐!
      const followingClose = document.querySelector(".popup-following-close");

      followingClose.addEventListener("click", () => {
        followingPopup.className = "popup-area-following disable";
      })

      //글 수정하기 버튼 팝업 뜨게하기
      //수정하기 활성화 로직 - 아이콘 버튼을 다시 누르면 수정하기 버튼은 사라짐

      const posts = document.querySelector(".my-posts")
      const postLists = document.querySelectorAll(".my-posts-1")
      const postIcons = document.querySelectorAll(".post-button");
      const postModifyButton = document.querySelectorAll(".modify-selector-wrap");

      console.log(postIcons)
      postIcons.forEach((icon, i) => {
        icon.addEventListener("click", () => {
          if(icon.nextElementSibling.className.includes("disable")){
            icon.nextElementSibling.className = "modify-selector-wrap enable";
          }else{
            icon.nextElementSibling.classList = "modify-selector-wrap disable";
          }
        })


        //글 삭제하기 버튼 
  
        const deleteButtons = document.querySelectorAll(".first-button");

        console.log(postLists[i])
  
        deleteButtons[i].addEventListener("click", () => {
          posts.removeChild(postLists[i]);
        }
            
      )


      })

      function buttonEvent() {
        alert("해당 게시물이 성공적으로 삭제되었습니다.")
      }





</script>

</html>