<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이홈 탈퇴</title>
      <link rel="stylesheet" href="../assets/css/myhome/myhome-delete-ok.css">
    <link rel="stylesheet" href="../assets/css/main/main-index.css">
    <link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
    <div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="../assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"> <img src="../assets/images/myhome/search_icon2.jpg" alt="검색" /></a> 
								<a href="./shipping-list.myhome"> <img src="../assets/images/myhome/truck_transport_icon2.jpg" alt="배송" /> </a> 
								<a href="../product-cart-list.product"> <img src="../assets/images/myhome/shopping_cart_icon2.jpg"alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="../member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="./product/main.product">스토어</a></li>
							<li class="menu"><a href="#">커뮤니티</a></li>
							<li class="menu"><a href="./list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a href="../product/product-dog.product">강아지</a></li>
								<li class="sub-menu"><a href="../product/product-cat.product">고양이</a></li>
								<li class="sub-menu"><a href="../product/product-bird.product">새</a></li>
								<li class="sub-menu"><a href="../product/product-fish.product">물고기</a></li>
								<li class="sub-menu"><a href="../product/health-main.product">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./community/list.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./list.myhome">나의 정보</a></li>
								<li class="sub-menu"><a href="./pet-list.myhome">반려동물 정보</a></li>
								<li class="sub-menu"><a href="./shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="./community/read.community">내 게시글</a></li>
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
        <a href="./list.myhome"><button class="back">이전으로</button></a>
        <button class="confirm" id="openModalButton">탈퇴</button>
        <div class="modal" id="myModal">
        <div class="modal-content">
        	<button class="close-button" id="closeModalButton">&times;</button>
        	<div>
        		<img src="../assets/images/myhome/bin.svg">
        		<span class="h2">정말 탈퇴하시겠어요?</span>
        		<span class="h4">탈퇴 버튼 선택 시, 계정은<br>삭제되며 복구되지 않습니다.</span>
        	</div>
        		<a href="./delete.myhome"><button class="last-confirm1 h5">탈퇴</button></a>
        		<a href="./delete-ok.myhome"><button class="last-confirm2 h5">취소</button></a>
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
<script src="../assets/js/myhome/myhome-delete-ok.js">
</script>

</html>