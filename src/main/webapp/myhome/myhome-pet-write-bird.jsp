<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이홈 반려새추가</title>
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
    #submit-button {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 67px;
        width: 89px;
        height: 42px;
        background-color: #1c4da0;
        border-radius: 20px;
        color: white;
        margin-left: 910px;
    }

    #mydog {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        margin: 0 auto;
    }

    .card {
        width: 270px;
        height: 430px;
        background-color: white;
        border: 1px solid #ccc;
        border-radius: 15px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    input[type="file"] {
        display: none;
    }

    .profile-pic {
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }

    .profile-pic img {
        width: 120px;
        height: 120px;
        border-radius: 50%;
    }

    .name {
        font-weight: bold;
        margin-bottom: 20px;
    }

    .edit-button {
        background-color: #1c4da0;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        width: 96px;
        height: 32px;
    }

    .pre-title {
        font-weight: bold;
    }

    .title {
        flex-direction: row;
        margin-left: 60px;
        font-weight: bold;
    }

    .title p {
        padding-top: 30px;
    }

    .input-wrap {
        margin-top: 30px;
        margin-left: 58px;
    }

    .input-wrap input {
        border-radius: 20px;
        height: 30px;
        padding-left: 26px;
        margin-top: 20px;
    }

    .input {
        width: 285px;
    }

    .option {
        display: flex;
        margin: 0 auto;
    }

    .option p {
        margin-top: 25px;
    }

    #mydog button {
        padding: 10px 15px;
        background-color: #1c4da0;
        color: white;
        border: none;
        border-radius: 20px;
        cursor: pointer;
    }

    .message {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-left: 400px;
    }

    .weight input {
        width: 285px;
        flex-direction: row;
    }

    .birthday {
        width: 285px;
        padding-right: 26px;
    }

    /* footer */

    footer {
        width: 100%;
        /* 부모 요소의 너비를 100%로 설정 */
        padding: 20px;
        /* 패딩 추가 */
        background-color: #f9f9f9;
        /* 배경색 */
        font-family: Arial, sans-serif;
        /* 폰트 스타일 */
        margin-top: 214px;
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
                            <li class="sub-menu"><a href="./myhome-list.jsp">나의 정보</a></li>
                            <li class="sub-menu"><a href="./myhome-pet-list.jsp">반려동물 정보</a></li>
                            <li class="sub-menu"><a href="./myhome-shipping-list.jsp">나의 쇼핑</a></li>
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
    <a href="./pet-write-ok.myhome?petKind=bird"><button id="submit-button" onClick="alert('수정이 완료되었습니다.')">완료</button></a>
    <div id="mydog">
        <div class="card">
            <div class="profile-pic" id="profilePic">
                <img id="profileImage" src="../assets/images/myhome/default-bird.svg" alt="Profile Picture">
            </div>
            <div class="name">도도</div>
            <input type="file" id="imageUpload" accept="image/*">
            <button class="edit-button" onclick="document.getElementById('imageUpload').click();">이미지 편집</button>
        </div>
        <div class="title h5">
            <span class="pre-title">기본사항*</span>
            <p>이름</p>
            <p>성별</p>
            <p>품종</p>
            <p>생일</p>
            <p>몸무게(kg)</p>
            <p>동물병원</p>
        </div>
        <div class="input-wrap">
            <input class="input" type="text" placeholder="도도">
            <label class="option">
                <input type="radio" name="gender" value="female">
                <p>여아</p>
                <input type="radio" name="gender" value="male">
                <p>남아</p>
            </label>
            <input class="input" type="text" placeholder="예) 앵무새">
            <p><input class="birthday" type="month"></p>
            <label class="weight"><input type="number"></label>
            <p><input class="input" type="text" placeholder="병원명"></p>
        </div>
    </div>
    <p class="message h7">*아래 내용(몸무게, 중성화)을 사실과 다르게 기재한 경우, 약관에 따라 서비스 이용이 거부될 수 있습니다. </p>
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
    // When the user selects a file, this function will update the profile picture
    document.getElementById('imageUpload').addEventListener('change', function (event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('profileImage').src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
    });
</script>

</html>