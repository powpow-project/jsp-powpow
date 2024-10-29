<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/admin/admin-coupon-write.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>쿠폰 신규등록</title>
</head>
<body>
    <form action="admin-coupon-write-ok.admin" method="post" id="frame">
		<div class="menu-wrap">
			<img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
			<span>쿠폰 관리</span>
			<div id="menu-frame">
				<div class="menu-header">
					<div class="welcome">admin님 환영합니다!</div>
					<button class="logout">로그아웃</button>
				</div>
				<ul>
					<li>
						<p>공지사항 관리</p>
						<div>
							<p>공지사항 조회</p>
							<p>공지사항 신규등록</p>
						</div>
					</li>
					<li>
						<p>배너 관리</p>
						<div>
							<p>배너조회</p>
							<p>배너 신규등록</p>
						</div>
					</li>
					<li>
						<p>회원 관리</p>
						<div>
							<p>일반회원 정보조회</p>
							<p>판매자회원 정보조회</p>
						</div>
					</li>
					<li>
						<p>쿠폰 관리</p>
						<div>
							<p>쿠폰조회</p>
							<p>쿠폰 신규등록</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="division-line"></div>

		<div class="title">
			<h1 class="h1">쿠폰 신규등록</h1>
		</div>

		<div class="container">
			<form id="coupon-form">
				<div class="box1">
					<label class="label" for="event-title">쿠폰 이름</label> <input
						type="text" id="event-title" placeholder="ex) 쿠폰이벤트 기획전 -1"
						required />
				</div>

				<div class="box1">
					<label class="label" for="coupon-code">쿠폰 코드</label> <input
						type="text" id="coupon-code"
						placeholder="쿠폰 번호 16자리를 입력해 주세요. ex) 1111-1111-1111-1111"
						maxlength="20" required />
				</div>

				<div class="box1">
					<label class="label" for="event-period">이벤트 기간 (쿠폰 유효기간)</label> 
						<input type="date" id="start-date" name="start-date" />
						<span>~</span>
						<input type="date" id="end-date" name="end-date" />
				</div>

				<div class="box1">
					<label class="label" for="event-category">이벤트 카테고리</label> <select
						id="event-category" required>
					    <option value="category4">헬스+</option>
						<option value="category1">강아지</option>
						<option value="category2">고양이</option>
						<option value="category3">새</option>
						<option value="category4">물고기</option>
					</select>
				</div>

				<div class="box1">
					<label class="label" for="details">상세 내용</label>
					<textarea id="details" rows="4" placeholder="내용을 입력해주세요. (500자 이내)"
						maxlength="500" required></textarea>
				</div>

				<div class="box1">
					<label class="label" for="coupon-quantity">쿠폰 수량제한</label> <input
						type="text" id="coupon-quantity" placeholder="ex) 1000"
						maxlength="1000" required />
				</div>

				<div class="discount-type">
					<label class="label" for="coupon-quantity">쿠폰 할인율</label>
					<div class="box3">
						<div class="box2">
							<label><input type="radio"
								name="discount" value="10" /> 10%</label> 
								<label> <input type="radio" name="discount" value="20" /> 20% </label> 
								<label> <input type="radio" name="discount" value="custom" />직접입력
							</label>
						</div>
						<input type="text" class="custom-discount" placeholder="ex) 7%" />
					</div>
				</div>

				<div class="button-group">
				    <button class="button-submit">등록</button>
				    <button class="button-edit">취소</button>
				</div>
			</form>
		</div>
	</form>

</body>
<script src="../assets/js/admin/admin-coupon-write.js"></script>
</html>
