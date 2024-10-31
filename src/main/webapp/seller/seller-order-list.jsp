
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문관리</title>
<link rel="stylesheet" href="../assets/css/order/order-seller-list.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
</head>
<body>
	<div id="frame">
		<div class="menu-wrap">
			<img class="menu-icon" src="../assets/images/product/menu.png"
				alt="메뉴"> <span>주문관리</span>

			<div id="menu-frame">
				<div class="menu-header">
					<div class="welcome">seller님 환영합니다!</div>
					<button class="logout">로그아웃</button>
				</div>
				<div class="menu-form">
					<ul>
						<li>
							<p>상품 관리</p>
							<div>
								<a href="../seller/seller-list.seller" style="color: white;"><p>상품
										조회</p></a> <a href="../seller/seller-write.seller"
									style="color: white;"><p>상품 등록</p></a>
							</div>
						</li>
						<li>
							<p>주문 관리</p>
							<div>
								<a href="../seller/seller-order-list.seller"
									style="color: white;"><p>주문조회</p></a>
							</div>
						</li>
						<li>
							<p>정산 관리</p>
							<div>
								<a href="#" style="color: white;"><p>정산내역조회</p></a>
							</div>
						</li>
						<li>
							<p>판매자 관리</p>
							<div>
								<a href="#" style="color: white;"><p>판매자정보 관리</p></a> <a
									href="#" style="color: white;"><p>사업자정보 관리</p></a>
							</div>
						</li>
						<li>
							<p>매출 관리</p>
							<div>
								<a href="../seller/seller-revenue-list.jsp"
									style="color: white;"><p>매출 조회</p></a>
							</div>
						</li>
					</ul>
				</div>
			</div>


		</div>
		<div class="division-line"></div>

		<div class="title">
			<h1 class="h1">주문조회</h1>
		</div>
		<section class="notice-search">
			<div class="search-bar">
				<input type="text" class="search" placeholder="주문번호를 입력하세요">
				<input type="text" class="search" placeholder="주문자 이름을 입력하세요">
				<select name="search">
					<option value="배송 전">배송 전</option>
					<option value="배송 중">배송 중</option>
					<option value="배송 후">배송완료</option>
					<option value="주문취소">주문취소</option>
				</select>
			</div>
			<div class="buttons">
				<button class="search-btn">검색</button>
				<button class="reset-btn">초기화</button>
			</div>
		</section>

		<section class="notice-list">
			<table>
				<thead>
					<tr>
						<th>No</th>
						<th>상품명</th>
						<th>판매가</th>
						<th>개수</th>
						<th>총가격</th>
						<th>상태</th>
						<th>등록일</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="orderList" items="${orderListForSeller}"
						varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td><c:out value="${orderList.productName}" /></td>
							<td><c:out value="${orderList.productPrice}" /></td>
							<td><c:out value="${orderList.productCount}" /></td>
							<td><c:out value="${orderList.totalPrice}" /></td>
							<td><c:out value="배송 전,배송 후,배송완료,주문취소" /></td>
							<td><c:out value="${orderList.orderDate.substring(0, 16)}" /></td>
							<td>
								<button class="details-button">상세</button>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</section>

		<c:forEach var="orderList" items="${orderListForSeller}">
			<div class="form-frame">
				<div class="detail-frame">
					<div class="detail-container">
						<h2 class="detail-title">주문 상세</h2>
						<button class="close-btn">닫기</button>
					</div>
				</div>
				<div class="inputs">
					<div class="info-input">
						<span>주문번호</span>
						<div class="info">
							<span><c:out value="${orderList.orderNumber}" /></span>
						</div>
					</div>
					<div class="info-input">
						<span>이름</span>
						<div class="info">
							<span><c:out value="${orderList.memberNickname}" /></span>
						</div>
					</div>
					<div class="info-input">
						<span>이메일</span>
						<div class="info">
							<span><c:out value="${orderList.memberEmail}" /></span>
						</div>
					</div>
					<div class="info-input">
						<span>전화번호</span>
						<div class="info">
							<span><c:out value="${orderList.memberPhone}" /></span>
						</div>
					</div>
					<div class="info-input">
						<span>지역</span>
						<div class="info">
							<span><c:out value="${orderList.memberAddress}" /></span>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<div class="popup-bg"></div>
</body>
<script src="../assets/js/order/order-seller-list.js">

</script>
</html>