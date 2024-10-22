<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이홈 탈퇴</title>
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
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

    * {
        box-sizing: border-box;
    }

    body {
        display: flex;
        align-items: center;
        flex-direction: column;
    }

    /* 헤더 부분 */

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

    /* contents */

    #unsubscribe-container {
        display: block;
        margin-top: 100px;
    }

    .unsubscribe-text {
        font-weight: bold;
    }


    #unsubscribe-box {
        display: flex;
        flex-direction: column;
        border: solid 1px #828282;
        border-radius: 20px;
        margin: 0 auto;
        width: 954px;
        height: 212px;
        justify-content: center;
        padding-left: 30px;
        margin-top: 10px;
    }

    .back {
        background-color: #113f8a;
        color: #FFFFFF;
        border-radius: 20px;
        width: 90px;
        height: 36px;
        margin: 30px 0 0 380px;
    }

    .confirm {
        border: solid 1px #828282;
        background-color: #FFFFFF;
        border-radius: 20px;
        width: 90px;
        height: 36px;
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
      justify-content: center;
      flex-direction:column;
      background-color: #fff;
      border-radius: 10px;
      width: 416px;
      height: 656px;
      text-align: center;
      position: relative;
      animation: fadeIn 0.3s ease-in-out;
    }
    
    .modal-content img{
    	padding: 60px 110px;
    }
    
    .modal-content span:nth-child(1){
    	align-items:center;
    	padding: 10px 80px;
    }
    .modal-content span:nth-child(2){
    	align-items:center;
    	padding: 10px 80px;
    }
    
/* 	.last-confirm button{
		boder: none;
		background-color: #ffc303;
	} */
	
	.last-confirm1{
		margin-top:20px;
		border: none;
		background-color: #ffc303;
		border-radius: 20px;
		width: 245px;
		height: 58px;
	}
	.last-confirm2{
		margin-top:10px;
		border: solid 1px #828282;
		background-color: #ffffff;
		border-radius: 20px;
		width: 245px;
		height: 58px;
	}
	

    .modal-content button::after {
      border-radius: 20px;
      background-color: #113f8a;
      color: white;
      border: none;
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


    /* footer */

    footer {
        width: 100%;
        /* 부모 요소의 너비를 100%로 설정 */
        padding: 20px;
        /* 패딩 추가 */
        background-color: #f9f9f9;
        /* 배경색 */
        margin-top: 150px;
    }

    .footer-black {
        color: #000;
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
        color: #000000;
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
        color: #000000;
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
        color: #000;
        /* 점의 색상 */
        font-weight: bold;
        /* 점 굵게 */
        display: inline-block;
        /* 점을 인라인으로 표시 */
        width: 13px;
        /* 점과 텍스트 사이의 간격 조정 */
    }

    .button-container {
        display: flex;
        /* 버튼을 가로로 정렬 */
        gap: 10px;
        /* 버튼 사이 간격 */
        align-items: center;
        /* 버튼을 텍스트와 수직으로 정렬 *
    margin-top: 10px; /* 버튼 위쪽 마진 */
    }

    .kakao-button,
    .email-button {
        background-color: #FFFFFF;
        color: #000000;
        border: solid #E6E6E6;
        margin: 3px;
        margin-bottom: 10px;
        border-radius: 20px;
        cursor: pointer;
        padding: 5px 15px;
        /* 버튼 내부 여백 */
        font-size: 11px;
    }

    .kakao-button {
        width: 211px;
        height: 29px;
    }

    .email-button {
        width: 93px;
        height: 29px;
    }

    .footer-section {
        width: 100%;
        /* 부모 요소의 너비를 100%로 설정 */
        padding: 10px;
        /* 패딩 추가 */
        background-color: #f9f9f9;
        /* 배경색 */
        font-family: Arial, sans-serif;
        /* 폰트 스타일 */
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
    <div id="unsubscribe-container">
        <p class="unsubscribe-text h2">회원탈퇴 안내</p>
        <p class="h5">회원탈퇴를 신청 하기 전에 안내 사항을 꼭 확인해주세요. </p>
        <div id="unsubscribe-box">
            <p class="h6 gray400">
                포포 반려동물 용품점 탈퇴안내
                <br>
                회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.
                <br>불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.
            </p>
            <br>
            <ol>
                <p>■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.</p>
                <br>
                <li class="gray400">
                    회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 <br>전자상거래 등에서의 소비자 보호에 관한 법률에 의거한
                    고객정보 보호 정책에 따라 관리 됩니다.
                </li>
                <li class="gray400">
                    탈퇴 시 회원님께서 보유하셨던 마일리지는 삭제 됩니다.
                </li>
            </ol>
        </div>
        <a href="./profile.jsp"><button class="back">이전으로</button></a>
        <button class="confirm" id="openModalButton">탈퇴</button>
        <div class="modal" id="myModal">
        <div class="modal-content">
        	<button class="close-button" id="closeModalButton">&times;</button>
        	<div>
        		<img src="../assets/images/myhome/bin.svg">
        		<span class="h2">정말 탈퇴하시겠어요?</span>
        		<span class="h4">탈퇴 버튼 선택 시, 계정은<br>삭제되며 복구되지 않습니다.</span>
        	</div>
        		<a href="./unsubscribe-complete.jsp"><button class="last-confirm1 h5">탈퇴</button></a>
        		<a href="./unsubscribe.jsp"><button class="last-confirm2 h5">취소</button></a>
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
                    <p>contact@powpow.com | 사업자등록번호: <span class="highlight">사업자정보확인</span></p>
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
    
    // 쿠폰팝업

    // Get the modal and the button
	const modal = document.getElementById('myModal');
	const openButton = document.getElementById('openModalButton');
	const closeButton = document.getElementById('closeModalButton');

    // 초기 상태를 숨김으로 설정
	modal.style.display = "none"; // Hide the modal initially
    // When the user clicks the button, open the modal
    openButton.onclick = function () {
      modal.style.display = "flex"; // Show the modal
    }

    // When the user clicks on the close button, close the modal
    closeButton.onclick = function () {
      modal.style.display = "none"; // Hide the modal
    }

    // When the user clicks outside the modal content, close the modal
    window.onclick = function (event) {
      if (event.target == modal) {
        modal.style.display = "none"; // Hide the modal
      }
    }
</script>

</html>