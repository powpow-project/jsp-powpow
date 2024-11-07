<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 프로필</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-list.css">
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
							<li class="sub-menu"><a
								href="../community/community-main.community">홈</a></li>
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
	<div id="sub">
		<div class="main-sub h1">나의 정보</div>
		<span class="sub-sub"> <a href="./update.myhome"
			class="current-category h4">프로필</a>
			<p>|</p> <a href="./likes-list.myhome" class="h4">좋아요</a>
			<p>|</p> <a href="./notification.myhome" class="h4">알림설정</a>
			<p>|</p> <a href="./password-update.myhome" class="h4">비밀번호 변경</a>
		</span>
	</div>
	<div id="page-content">
		<div id="profile-edit">
			<div class="profile-box">
				<img class="default-profile-image"
					src="../assets/images/member/${member.memberImage}"> <span
					class="id"><c:out value="${member.memberNickname}" /></span> <a
					id="uploadButton" href="./update.myhome"><button>프로필
						수정하기</button></a> <br>
				<hr>
				<br>
				<!-- <a class="couponicon" href="#"><img  src="../assets/images/myhome/coupon.svg" alt="쿠폰"></a> -->
				<img class="popup-button" id="openModalButton"
					src="../assets/images/myhome/coupon.svg" alt="coupon">
				<!-- The Modal -->
				<div class="modal" id="myModal">
					<!-- Modal content -->
					<div class="modal-content">
						<button class="close-button" id="closeModalButton">&times;</button>
						<button class="switchto1">쿠폰함(4)</button>
						<button class="switchto2">사용내역</button>
						<div class="main-content">
							<div class="main">
								<input type="text" id="couponCode" placeholder="쿠폰 코드를 입력해주세요">
								<button class="add-coupon h6" onclick="addCoupon()">추가하기</button>
								<div class="coupon-container" id="couponContainer">
									<div class="coupon">
										<c:forEach var="admin" items="${adminCoupon}">
											<p>
												<c:out value="${adminCoupon.adminCouponCode}"></c:out>
											</p>
											<p>
												유효기간 :
												<c:out value="${adminCoupon.adminCouponDate}"></c:out>
												까지
											</p>
										</c:forEach>
									</div>
								</div>
							</div>
							<div class="main-content">
								<div class="coupon-container2">
									<div class="coupon">
										<c:forEach var="admin" items="${adminCoupon}">
											<p>
												<c:out value="${adminCoupon.adminCouponCode}"></c:out>
											</p>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="mycoupon" href="#">쿠폰</a> <span class="count-coupon">5</span>
			</div>
			<div class="edit-info">
				<div>
					<label class="edit-category1">닉네임</label>
					<span><c:out value="${member.memberNickname}"></c:out></span>
				</div>
				<div>
					<label class="edit-category2">아이디 (이메일)</label>
					<c:out value="${member.memberEmail}"></c:out>
				</div>
				<div>
					<label class="edit-category3">휴대폰번호</label>
					<c:out value="${member.memberPhone}"></c:out>
				</div>
				<div class="group-category4">
					<label class="edit-category4">주소</label>
					<div class="input-container">
						<c:out value="${member.memberAddress}"></c:out>
					</div>
				</div>
				<a class="unsubscribe-message" href="./delete-ok.myhome">*즉시탈퇴 >
					SMS 인증 후 POWPOW 탈퇴하기</a>
			</div>
		</div>
	</div>
	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3>고객센터 &gt;</h3>
				<p>
					<span class="highlight">0000-0000</span> <span>09:00~18:00</span>
				</p>
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
					<p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146,
						3층 4층</p>
					<p>contact@powpow.com | 사업자등록번호: 0000000</p>
					<p>통신판매업신고번호 제2024-서울강남-0000호</p>
				</div>

				<div class="footer-section legal2">
					<p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을
						지지 않습니다.</p>
					<p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
				</div>

				<div class="footer-section legal3">
					<p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
				</div>
			</div>
		</div>
	</footer>
</body>
<script src="../assets/js/myhome/myhome-list.js">
	
</script>
</html>