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
		<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
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
				<img class="popup-button" id="openButton"
					src="../assets/images/myhome/coupon.svg" alt="coupon">
				<!-- The Modal -->
				<div class="modal" id="myCoupon">
					<!-- Modal content -->
					<div class="modal-content">
						<button class="close-button" id="closeCouponButton">&times;</button>
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
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-list.js">
</script>
</html>