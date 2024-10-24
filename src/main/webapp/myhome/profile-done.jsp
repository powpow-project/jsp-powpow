<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 프로필</title>
  <link rel="stylesheet" href="../assets/css/index.css">
  <link rel="stylesheet" href="../assets/css/myhome/profile.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
<div class="header-container">
    <div id="header-wrap">
      <div id="border">
        <div id="nav">
          <div class="left">
            <img src="../assets/images/myhome/logo.png" alt="로고">
          </div>
          <div class="right">
            <div class="icons">
              <a href="#"><img src="../assets/images/myhome/search_icon2.jpg" alt="검색"></a>
              <a href="#"><img src="../assets/images/myhome/truck_transport_icon2.jpg" alt="배송"></a>
              <a href="#"><img src="../assets/images/myhome/shopping_cart_icon2.jpg" alt="카트"></a>
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
              <li class="sub-menu"><a href="./profile.jsp">나의 정보</a></li>
              <li class="sub-menu"><a href="./no-pet.jsp">반려동물 정보</a></li>
              <li class="sub-menu"><a href="./shipping-status.jsp">나의 쇼핑</a></li>
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
  <div id="sub">
    <div class="main-sub h1">나의 정보</div>
    <span class="sub-sub">
      <a href="./profile.jsp" class="current-category h4">프로필</a>
      <p>|</p>
      <a href="./likes.jsp" class="h4">좋아요</a>
      <p>|</p>
      <a href="./notification.jsp" class="h4">알림설정</a>
      <p>|</p>
      <a href="./set-password.jsp" class="h4">비밀번호 변경</a>
      </span>
  </div>
  <div id="page-content">
    <div id="profile-edit">
      <div class="profile-box">
        <img class="default-profile-image" src="../assets/images/myhome/${member.memberImage}" alt="기본 프로필 사진">
        <span class="id" value="${member.memberName}"></span>
          <a href="./profile.jsp"><button id="uploadButton">프로필 수정하기</button></a>
        <br>
        <hr>
        <br>
        <!-- <a class="couponicon" href="#"><img  src="../assets/images/myhome/coupon.svg" alt="쿠폰"></a> -->
        <img class="popup-button" id="openModalButton" src="../assets/images/myhome/coupon.svg" alt="coupon">
        <!-- The Modal -->
        <div class="modal" id="myModal">
          <!-- Modal content -->
          <div class="modal-content">
            <button class="close-button" id="closeModalButton">&times;</button>
            <button class="switchto1">쿠폰함(4)</button>
            <button class="switchto2">사용내역</button>
            <div class="main-content">
              <div class="main">
              <input type="text" placeholder="쿠폰 코드를 입력해주세요">
              <button class="add-coupon h6">추가하기</button>
              <div class="coupon-container">
                <div class="coupon">
                  <p>추가된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>추가된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>추가된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>추가된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
              </div>
              </div>
              <div class="main-content">
              	 <div class="coupon-container2">
                <div class="coupon">
                  <p>사용된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>사용된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>사용된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
                <div class="coupon">
                  <p>사용된 쿠폰명</p>
                  <p>유효기간 : 2024-10-04 ~ 10-30 까지</p>
                </div>
              </div>
              </div>
            </div>
          </div>
        </div>
        <a class="mycoupon" href="#">쿠폰</a>
        <span class="count-coupon">5</span>
      </div>
      <div class="edit-info">
        <div>
          <label class="edit-category1">닉네임</label>
          <td><c:out value="${member.memberName}"></c:out></td>
        </div>
        <div>
          <label class="edit-category2">아이디 (이메일)</label>
          <input class="edit-member" type="email" placeholder="example@naver.com">
        </div>
        <div>
          <label class="edit-category3">휴대폰번호</label>
          <input class="edit-member" type="text" placeholder="휴대폰 번호를 입력해주세요">
        </div>
        <div class="group-category4">
          <label class="edit-category4">주소</label>
          <div class="input-container">
            <input class="inputbutton" type="text" name="address" id="sample6_postcode" placeholder="우편번호">
            <button class="auth-button" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">우편번호</button>
            <input class="inputbutton" type="text" name="address"  id="sample6_address" placeholder="기본주소">
            <input class="inputbutton" type="text" name="address" id="sample6_detailAddress" placeholder="상세주소">
          </div>
        </div>
        <a class="unsubscribe-message" href="./unsubscribe.jsp">*즉시탈퇴 > SMS 인증 후 POWPOW 탈퇴하기</a>
      </div>
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
</body>
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
  
//쿠폰팝업
//Get the modal and the button
const modal = document.getElementById('myModal');
const openButton = document.getElementById('openModalButton');
const closeButton = document.getElementById('closeModalButton');
const addButton = document.querySelector('.add-coupon');

//초기 상태를 숨김으로 설정
modal.style.display = "none"; // Hide the modal initially

//When the user clicks the button, open the modal
openButton.onclick = function () {
   modal.style.display = "flex"; // Show the modal
}

//When the user clicks on the close button, close the modal
closeButton.onclick = function () {
   modal.style.display = "none"; // Hide the modal
}

//When the user clicks outside the modal content, close the modal
window.onclick = function (event) {
   if (event.target == modal) {
       modal.style.display = "none"; // Hide the modal
   }
}

//Popup switch
const switch1 = document.querySelector(".switchto1");
const switch2 = document.querySelector(".switchto2");
const mainSections = document.querySelectorAll(".main-content > div"); // 모든 main-content div 선택

// 초기 상태 설정
mainSections[0].style.display = "block"; // 쿠폰함 보이기
mainSections[1].style.display = "none"; // 사용내역 숨기기
switch1.classList.add('active'); // 초기 상태에서 switch1 활성화

switch1.addEventListener("click", () => {
   mainSections[0].style.display = "block"; // 쿠폰함 보이기
   mainSections[1].style.display = "none"; // 사용내역 숨기기
   switch1.classList.add('active'); // switch1 활성화
   switch2.classList.remove('active'); // switch2 비활성화
})

switch2.addEventListener("click", () => {
   mainSections[0].style.display = "none"; // 쿠폰함 숨기기
   mainSections[1].style.display = "block"; // 사용내역 보이기
   switch2.classList.add('active'); // switch2 활성화
   switch1.classList.remove('active'); // switch1 비활성화
})
  addbutton.onclick = function () {
    modal.style.display = "File";
  }
</script>
</html>