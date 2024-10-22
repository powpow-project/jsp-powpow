<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이홈 프로필</title>
  <link rel="stylesheet" href="../assets/css/index.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico">
  <style>
  @keyframes fade_up {
    0% {
      opacity: 0;
      transform: translateY(10%);
    }

    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  body {
    font-family: 'SpoqaHanSansNeo-Regular';
  }

    .header-container {
      display: flex;
      flex-direction: column;
      width: 100%;
    }

    #header-wrap {
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 1440px;
      height: 151px;
      margin: 0 auto;
    }

    #header-wrap #border {
      display: flex;
      flex-direction: column;
      margin: 0 auto;
    }

    #header-wrap #nav {
      position: relative;
      display: flex;
      width: 1440px;
      margin: 0 auto;
      /* 헤더 윗공간 조절 */
      margin-top: 20px;
      justify-content: space-between;
      align-items: end;
      margin-bottom: 15px;
    }

    #header-wrap #nav .sector {
      position: absolute;
      line-height: 20px;
      margin-left: 10px;
      /* border: 1px solid #818181; */
      background-color: #818181;
      height: 55px;
      width: 0.1px;
      top: 34px;
      right: 96px;
    }

    #header-wrap #nav .left {
      width: 236px;
      height: 60px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    #header-wrap #nav .left img {
      width: 236px;
      height: 60px;
    }

    #header-wrap #nav .right {
      display: flex;
      gap: 26px;
      align-items: end;
      padding-top: 44px;
    }

    #header-wrap #nav .right .icons {
      display: flex;
      gap: 26px;
    }

    #header-wrap #nav .right .icons img {
      display: flex;
      width: 30px;
      height: 30px;
    }

    #header-wrap #nav .right .login {
      display: flex;
      font-size: 16px;
      margin-left: 26px;
    }

    #header-wrap #nav .right .login a {
      display: flex;
      width: 100%;
      height: 100%;
      text-align: center;
      justify-content: center;
      text-decoration-line: none;
      color: black;
      padding-right: 31px;
    }

    /* 메뉴부분 */

    .menu-container {
      display: flex;
      flex-direction: column;
      flex: 1;
      z-index: 10;
    }

    #sector {
      display: flex;
      width: 100%;
      height: 0.1px;
      background-color: #818181;
      z-index: 50;
    }

    .menu-wrap {
      display: flex;
      height: 50px;
      font-weight: bold;
      border-top: solid #818181 0.1px;
      border-bottom: solid #818181 0.1px;
    }

    .menu-wrap .menu {
      display: flex;
      align-items: center;
      width: 150px;
      height: 50px;
    }

    .menu-wrap .menu a:hover {
      color: #FFC303;
    }

    .sub-menu-wrap {
      display: flex;
    }

    .sub-menu-wrap ul {
      overflow: hidden;
      height: 0;
    }

    .sub-menu-wrap .sub-menu {
      width: 150px;
      height: 50px;
      display: flex;
      align-items: center;
      text-align: center;
    }

    .sub-menu-wrap .sub-menu a:hover {
      color: #FFC303;
    }


    /* profile */
    /* sub */
    #sub {
      display: flex;
      flex-direction: column;
      padding-top: 20px;
      width: 1440px;
      height: 96px;
      margin: 0 auto;
    }

    #sub .main-sub {
      font-weight: bold;
    }

    .sub-sub {
      display: flex;
      flex-direction: row;
      align-items: center;
      gap: 10px;
    }

    .sub-sub a:hover {
      color: #FFC303;
      font-size: bold;
    }


    .current-category {
      color: #ffc303;
      font-weight: bold;
      text-decoration: none;
    }

    .complete {
      color: #ffffff;
      background-color: #113f8a;
      text-align: center;
      font-family: 'SpoqaHanSansNeo-Regular';
      font-size: 16px;
      line-height: 24px;
      border-radius: 20px;
      min-width: 89px;
      min-height: 42px;
      margin-left: 1108px;
      border-style: none;
      cursor: pointer;
    }

    #page-content {
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    #profile-edit {
      display: flex;
      flex-direction: row;
      gap: 60px;
      margin-top: 26px;
    }

    .profile-box {
      display: flex;
      flex-direction: column;
      border: 1px solid #131313;
      height: 430px;
      width: 270px;
      border-radius: 20px;
      padding-top: 50px;
      box-sizing: border-box;
    }

    .default-profile-image {
      border-radius: 50%;
      padding: 0px 75px;
    }

    .id {
      font-size: 20px;
      font-weight: bold;
      columns: #131313;
      padding-top: 10px;
      padding-bottom: 10px;
      width: 270px;
      height: 24px;
      text-align: center;
    }

    .imageupload-button button {
      width: 96px;
      height: 32px;
      border-radius: 20px;
      align-self: center;
      background-color: #113f8a;
      color: white;
      border-style: none;
      font-size: 14px;
      line-height: 22px;
      font-weight: normal;
      margin-left: 87px;
      cursor: pointer;
      margin-top: 20px;
    }

    #profile-edit hr {
      width: 206px;
      margin: 0 auto;
      margin-top: 10px;
      color: #888888;
    }

    /* 쿠폰 팝업*/
    .popup-button img {
      border: none;
      cursor: pointer;
    }


    /* The Modal (background) */
    .modal {
      display: none;
      /* Hidden by default */
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      /* Black with opacity */
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Modal Content */
    .modal-content {
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      width: 700px;
      height: 700px;
      text-align: center;
      position: relative;
      animation: fadeIn 0.3s ease-in-out;
    }

    .modal-content input {
      width: 360px;
      height: 50px;
      border-radius: 20px;
      padding: 0 26px;
    }

    .modal-content button::after {
      border-radius: 20px;
      background-color: #113f8a;
      color: white;
      border: none;
    }

    .add-coupon {
      border-radius: 20px;
      border: none;
      background-color: #113f8a;
      color: #ffffff;
      width: 101px;
      height: 50px;
      margin-left: 10px;
    }

    /* Add animation for opening modal */
    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: scale(0.9);
      }

      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    /* Close Button */
    .close-button {
      position: absolute;
      top: 10px;
      right: 15px;
      background-color: transparent;
      border: none;
      font-size: 18px;
      cursor: pointer;
    }

    .mycoupon {
      font-size: 12px;
      line-height: 18px;
      margin: 0 auto;
      text-decoration-line: none;
    }

    .popup-button {
      width: 60PX;
      height: 60px;
      margin: 0 auto;
    }

    .count-coupon {
      font-size: 12px;
      line-height: 18px;
      margin: 0 auto;
      padding-top: 5px;
    }
    
    .switchto1, .switchto2 {
    background-color: #ffffff; /* Default background color */
    color: black; /* Default text color */
    border: none;
    padding: 10px;
    cursor: pointer;
}

.switchto1.active, .switchto2.active {
    background-color: #113f8a; /* Active background color */
    color: white; /* Active text color */
    border: none;
}

    .edit-info {
      display: flex;
      flex-direction: column;
      gap: 30px;
      margin-top: 26px;
    }

    .edit-category1 {
      font-size: 16px;
      line-height: 24px;
      font-weight: bold;
      padding-right: 87px;
    }

    .edit-category2 {
      font-size: 16px;
      line-height: 24px;
      font-weight: bold;
      padding-right: 28px;
    }

    .edit-category3 {
      font-size: 16px;
      line-height: 24px;
      font-weight: bold;
      padding-right: 57px;
    }

    .edit-category4 {
      font-size: 16px;
      line-height: 24px;
      font-weight: bold;
      padding-right: 102px;
    }

    .group-category4 {
      display: flex;
      flex-direction: row;
      gap: 3px;
    }

    .address {
      flex-direction: column;
    }

    .edit-member {
      font-size: 14px;
      line-height: 22px;
      border-radius: 20px;
      padding: 0 26px 0 26px;
      min-width: 283px;
      height: 28px;
      inline-size: auto;
      border: 0.5px solid #828282;
    }

    .input-container {
      position: relative;
      /* 자식 요소의 절대 위치 설정을 위한 상대 위치 */
      width: 275px;
      /* 입력 필드 너비 설정 */
    }

    .auth-button {
      position: absolute;
      /* 절대 위치 */
      right: 14px;
      /* 오른쪽으로 10px 떨어지게 */
      top: 15px;
      /* 수직 중앙 정렬 */
      transform: translateY(-50%);
      /* 수직 중앙 정렬을 위한 변환 */
      background-color: #ffffff;
      color: #C83F3F;
      /* 글자 색상 */
      border: none;
      /* 테두리 없음 */
      cursor: pointer;
      /* 커서 포인터 */
      font-size: 12px;
      line-height: 18px;
      font-weight: bold;
    }

    .inputbutton {
      background-color: #ffffff;
      width: 283px;
      height: 28px;
      border: 0.5px solid #828282;
      font-size: 14px;
      line-height: 22px;
      color: #828282;
      border-radius: 20px;
      box-sizing: border-box;
      padding: 0 26px;
      outline: none;
      margin-bottom: 30px;
    }

    .unsubscribe-message {
      font-size: 12px;
      line-height: 18px;
      text-decoration: none;
      color: #113f8a;
    }

    /* coupon */
    .switchto1 {
      margin-top: 20px;
      margin-bottom: 30px;
      margin-right: 10px;
      border-radius: 20px;
      border: solid 1px #828282;
      background-color: #ffffff;
      color: #131313;
      width: 200px;
      height: 44px;
    }

    .coupon-container {
      height: 500px;
      overflow-y: scroll;
      margin-top: 20px;
    }

    .coupon-container2 {
      height: 500px;
      overflow-y: scroll;
      margin-top: 70px;
    }

    .coupon:nth-child(1){
      background-color: #ff8331;
      margin-top: 20px;
      border-radius: 20px;
      width: 461px;
      height: 251px;
      margin: 0 auto;
      margin-top: 30px;
      font-size: 28px;
      line-height: 40px;
      font-weight: bold;
    }

    .coupon p:nth-child(1){
      color: #ffffff;
      padding-right: 250px;
      padding-top: 20px;
    }
    .coupon p:nth-child(2){
      color: #ffffff;
      padding-right: 100px;
      min-width: 278px;
      font-size: 20px;
      line-height: 30px;
    }
    
    .coupon:nth-child(2){
      background-color: #ff8331;
      margin-top: 20px;
      border-radius: 20px;
      width: 461px;
      height: 251px;
      margin: 0 auto;
      margin-top: 30px;
      font-size: 28px;
      line-height: 40px;
      font-weight: bold;
    }

    .coupon:nth-child(3){
      background-color: #ff8331;
      margin-top: 20px;
      border-radius: 20px;
      width: 461px;
      height: 251px;
      margin: 0 auto;
      margin-top: 30px;
      font-size: 28px;
      line-height: 40px;
      font-weight: bold;
    }

    .coupon:nth-child(4){
      background-color: #ff8331;
      margin-top: 20px;
      border-radius: 20px;
      width: 461px;
      height: 251px;
      margin: 0 auto;
      margin-top: 30px;
      font-size: 28px;
      line-height: 40px;
      font-weight: bold;
    }

    .switchto2 {
      border-radius: 20px;
      border: none;
      color: #131313;
      border: solid 1px #828282;
      width: 200px;
      height: 44px;
    }

    /* footer */

    footer {
      width: 100%;
      /* 부모 요소의 너비를 100%로 설정 */
      padding: 20px;
      /* 패딩 추가 */
      background-color: #f9f9f9;
      /* 배경색 */
      font-family: 'SpoqaHanSansNeo-Regular';
      /* 폰트 스타일 */
      margin-top: 150px;
    }

    .footer-black {
      color: #131313;
    }

    .footer-container {
      display: flex;
      justify-content: space-between;
      width: 1200px;
      margin: 0 auto;
      padding: 20px 0;
    }

    .footer-section {
      margin-bottom: 2px;
      /* 각 섹션 간의 간격 */
    }

    .footer-section h3 {
      font-size: 18px;
      margin-bottom: 15px;
    }

    .footer-section p {
      margin: 10px 0;
      /* 기본 여백 제거 */
      line-height: 1.2;
      /* 줄 간격 조정 */
      margin: 1px 0;
      white-space: normal;
      /* 줄바꿈 허용 */
      font-size: 11px;
    }

    .footer-section ul {
      list-style: none;
      /* 리스트 점 제거 */
      padding: 0;
      /* 기본 패딩 제거 */
      margin: 0;
      /* 기본 마진 제거 */
      line-height: 1.8;
      /* 줄 간격 설정 (1.8은 글자 크기의 180% 간격) */
    }

    .footer-section ul li {
      margin-bottom: 10px;
      /* 리스트 항목 간격 */
      font-size: 12px;
    }

    .footer-section ul li a {
      text-decoration: none;
      /* 링크 밑줄 제거 */
      color: #131313;
      /* 텍스트 색상 */
      font-size: 12px;
    }

    .contact-info {
      display: flex;
      /* Flexbox로 가로 정렬 */
      align-items: center;
      /* 수직 중앙 정렬 */
    }

    .highlight {
      color: #131313;
      /* 강조 색상 */
      font-weight: bold;
      /* 글자 두껍게 */
      font-size: 12px;
      /* 글자 크기 */
    }

    .custom-list {
      list-style-type: none;
      /* 기본 리스트 스타일 제거 */
    }

    .custom-list li::before {
      content: '•';
      /* 리스트 앞에 점 추가 */
      color: #131313;
      /* 점의 색상 */
      font-weight: bold;
      /* 점 굵게 */
      display: inline-block;
      /* 점을 인라인으로 표시 */
      width: 13px;
      /* 점과 텍스트 사이의 간격 조정 */
    }

    .footer-section {
      width: 100%;
      /* 부모 요소의 너비를 100%로 설정 */
      padding: 10px;
      /* 패딩 추가 */
      background-color: #f9f9f9;
      /* 배경색 */
    }

    .footer-section.legal p {
      margin: 0;
      /* 기본 여백 제거 */
      white-space: nowrap;
      /* 줄바꿈을 방지합니다. */
      overflow: visible;
      /* 텍스트가 부모 요소의 경계를 넘어가도 보이게 합니다. */
    }

    .legal p {
      font-size: 12px;
      color: #767676;
      line-height: 1.5;
    }
  </style>
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
    <button onClick="alert('수정이 완료되었습니다.')" class="complete">완료</button>
    <div id="profile-edit">
      <div class="profile-box">
        <img class="default-profile-image" src="../assets/images/myhome/default-profile.png" alt="기본 프로필 사진">
        <span class="id">찹쌀징어</span>
        <div class="imageupload-button">
          <button id="uploadButton">이미지 편집</button>
          <input type="file" id="fileInput" style="display: none;" accept="images/*">
        </div>
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
          <input class="edit-member" type="text" placeholder="찹쌀징어">
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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
  document.getElementById('uploadButton').addEventListener('click', function () {
    document.getElementById('fileInput').click();
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

  function sample6_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              var addr = ''; // 주소 변수

              // 선택한 주소 타입에 따라 주소 값을 가져온다.
              addr = data.userSelectedType === 'R' ? data.roadAddress : data.jibunAddress;

              // 우편번호와 주소 정보를 필드에 넣는다.
              document.getElementById('sample6_postcode').value = data.zonecode;
              document.getElementById("sample6_address").value = addr;
              document.getElementById("sample6_detailAddress").focus(); // 상세주소 필드로 이동
          }
      }).open();
  }


</script>

</html>