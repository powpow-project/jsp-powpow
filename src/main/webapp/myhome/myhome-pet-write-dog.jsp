<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이홈 반려견추가</title>
    <link rel="stylesheet" href="../assets/css/myhome/myhome-pet-write-dog.css">
    <link rel="stylesheet" href="../assets/css/main/main-index.css">
    <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<style type="text/css">
#profilePic {
	background-image: url('../assets/images/myhome/default-dog.svg');
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
                            <li class="sub-menu"><a href="./list.myhome">나의 정보</a></li>
                            <li class="sub-menu"><a href="./pet-list.myhome">반려동물 정보</a></li>
                            <li class="sub-menu"><a href="./shipping-list.myhome">나의 쇼핑</a></li>
                            <li class="sub-menu"><a href="#">내 게시글</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <form action="pet-write-ok.myhome?petKind=dog" method="post" id="frame" enctype="multipart/form-data">
		<button id="submit-button" type="button">완료</button>
    	<div id="mydog">
    		<div class="card">
        		<div class="profile-pic" id="profilePic"></div>
				<div class="name">이름</div>
				<input type="file" id="imageUpload" name="petImage"> 
				<label for="imageUpload">
					<h1 id="edit-button" class="edit-button h6">이미지 편집</h1>
				</label>
			</div>
        <div class="title h5">
            <span class="pre-title">기본사항*</span>
            <label for="petName">이름</label>
			<label for="petGender">성별</label>
			<label for="petBreed">품종</label>
			<label for="petBirth">생일</label>
			<label for="petWeight">몸무게(kg)</label>
			<label for="petNeuter">중성화</label>
			<label for="petVet">동물병원</label>
        </div>
        <div class="input-wrap">
       		<input class="input" id="petName" type="text" name="petName" placeholder="포포"> 
				<label class="option"> 
					<input type="radio" name="petGender" value="female">
						<p>여아</p> 
					<input type="radio" name="petGender" value="male">
						<p>남아</p>
				</label> 
			<input class="input" name="petBreed" type="text" placeholder="예) 시츄">
			<p>
				<input name="petBirth" class="birthday" type="date">
			</p>
			<label class="weight"><input name="petWeight" type="number"></label> 
			<label class="option">
				<input name="petNeuter" type="radio" value="yes"><p>했어요</p> 
				<input type="radio" name="petNeuter" value="no"><p>안했어요</p>
			</label> 
			<p>
				<input class="input" name="petVet" type="text" placeholder="병원명">
			</p>
        </div>
    </div>
    <p class="message h7">*아래 내용(몸무게, 중성화)을 사실과 다르게 기재한 경우, 약관에 따라 서비스 이용이 거부될 수 있습니다. </p>
  </form>
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
<script src="../assets/js/myhome/myhome-pet-write-dog.js">
</script>
</html>