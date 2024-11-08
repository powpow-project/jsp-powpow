<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 배송상태</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-shipping-list.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>

	<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div id="sub">
		<div class="main-sub h1">주문 배송 목록</div>
	</div>

	<div id="delivery-status">
		<div class="profile-box">
			<img class="face" src="../assets/images/myhome/default-profile.png"
				alt="사람 프로필사진"></img>
			<p>찹쌀징어</p>
			<br>
			<hr>
			<br> <img class="popup-button" id="openModalButton"
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
			<p>쿠폰</p>
			<p>5</p>
		</div>


		<div id="status-container">
			<div class="status-wrap">
				<div class="status">
					<button>입금대기</button>
					<span>></span>
					<button>결제완료</button>
					<span>></span>
					<button>배송준비</button>
					<span>></span>
					<button>배송중</button>
					<span>></span>
					<button>배송완료</button>
					<span>></span>
					<button>구매확정</button>
				</div>
				<div class="count-status">
					<span>0</span> <span>0</span> <span>0</span> <span>0</span> <span>0</span>
					<span>0</span>
				</div>
			</div>
			<!-- 			<template id="product-template">
				<div class="product-item">
					<img src="" alt=""> <span></span>
				</div>
			</template> -->
			<div id="order-container">
				<c:if test="${empty orderProducts}">
					<div id="empty-message" class="ordered-product">
						<span>아직 주문한 상품이 없어요</span>
					</div>
				</c:if>
				<c:if test="${not empty orderProducts}">
					<c:forEach var="order" items="${orderProducts}">
						<form action="/powpow/order/delete-ok.order" method="post">
							<h1>주문 상품 : <c:out value="${order.productName}"></c:out></h1>
							<div>
								<img src="/powpow/assets/images/product/${order.productImage}" />
							</div>
							<h1>주문 수량 : <c:out value="${order.productCount}"></c:out></h1>
							<input type="hidden" name="productId" value="${order.productId}">
							<input type="hidden" name="buyerId" value="${order.memberId}">
							<input type="hidden" name="productCount" value="${order.productCount}">
							<input type="hidden" name="orderId" value="${order.id}">
							<button>주문 취소</button>
						</form>
					</c:forEach>
					<div id="empty-message" class="ordered-product">
						<span>아직 주문한 상품이 없어요</span>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>
<script src="../assets/js/myhome/myhome-shipping-list.js"></script>
</html>