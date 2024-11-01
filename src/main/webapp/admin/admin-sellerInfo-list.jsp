<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/admin/admin-sellerInfo-list.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="icon" href="../assets/images/favicon.ico">
    <title>회원 관리(판매자회원)</title>
</head>
<body>
	<form action="admin-sellerInfo-list.admin" method="POST" id="frame">

		<div class="menu-wrap">
			<img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
			<span>회원 관리</span>
			<div id="menu-frame">
				<div class="menu-header">
					<div class="welcome">admin님 환영합니다!</div>
					<button class="logout">로그아웃</button>
				</div>
				<ul>
					<li>
						<p>
							<a href="../admin/admin-list.admin" style="color: white;">공지사항
								관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-list.admin">공지사항 조회</a>
							</p>
							<p>
								<a href="../admin/admin-write.admin">공지사항 신규등록</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a href="../admin/admin-banner-list.admin" style="color: white;">배너
								관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-banner-list.admin">배너 조회</a>
							</p>
							<p>
								<a href="../admin/admin-banner-write.admin">배너 신규등록</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a href="../admin/admin-customerInfo-list.admin" style="color: white;">회원 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-customerInfo-list.admin">일반회원 정보조회</a>
							</p>
							<p>
								<a href="../admin/admin-sellerInfo-list.admin">판매자회원 정보조회</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a href="../admin/admin-coupon-list.admin" style="color: white;">쿠폰 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-coupon-list.admin">쿠폰 조회</a>
							</p>
							<p>
								<a href="../admin/admin-coupon-write.admin">쿠폰 신규등록</a>
							</p>
						</div>
					</li>
				</ul>
			</div>
		</div>


		<div class="division-line"></div>

		<div class="title">
			<h1 class="h1">판매자회원 정보조회</h1>
		</div>

		<div class="container">
			<div class="notice-search">
				<div class="search-row">
					<div class="search-bar">
						<label for="search">검색</label> <input type="text" class="search"
							placeholder="검색어를 입력해주세요" id="search-input" />
					</div>
					<div class="sms-receive">
						<label>SMS 수신여부</label> <input type="radio" id="sms-yes"
							name="sms" value="yes" /> 수신 <input type="radio" id="sms-no"
							name="sms" value="no" /> 수신거부
					</div>
				</div>
				<div class="search-row">
					<div class="search-period">
						<label for="start-date">기간</label> <input type="date"
							id="start-date" /> ~ <input type="date" id="end-date" />
					</div>
					<div class="email-receive">
						<label>메일 수신여부</label> <input type="radio" id="email-yes"
							name="email" value="yes" /> 수신 <input type="radio" id="email-no"
							name="email" value="no" /> 수신거부
					</div>
				</div>
				<div class="buttons">
					<button class="search-btn" id="search-btn">검색</button>
					<button type="button" class="reset-btn" onclick="location.reload();">초기화</button>
				</div>
			</div>
		</div>

		<section class="notice-list">
			<table>
				<thead>
					<tr>
						<th>No</th>
						<th>아이디(이메일)</th>
						<th>휴대폰</th>
						<th>사업자 등록번호</th>
						<th>대표자명</th>
						<th>업체명</th>
						<th>SMS 수신여부</th>
						<th>메일 수신여부</th>
					</tr>
				</thead>

				<tbody id="user-list">
					<c:forEach var="seller" items="${sellers}" varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${seller.sellerEmail}</td>
							<td>${seller.sellerPhone}</td>
				            <td>${seller.businessNumber}</td>
				            <td>${seller.businessRepresentativeName}</td>
				            <td>${seller.businessName}</td> 
							<td>수신</td>
							<td>수신</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</section>
	</form>

</body>

<script>
    const startdateInput = document.querySelector("#start-date");
    let startDate = `${adminBanner.adminBannerStart}`;
    startDate = startDate.split(" ")[0];
    startdateInput.value = startDate; 

    const endDateInput = document.querySelector("#end-date");
    let endDate = `${adminBanner.adminBannerEnd}`;
    endDate = endDate.split(" ")[0];
    endDateInput.value = endDate;
</script>

    <script src="../assets/js/admin/admin-sellerInfo-list.js"></script>
</html>