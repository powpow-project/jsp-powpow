<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <form action="admin-coupon-write-ok.admin" method="POST" id="frame">
        
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
						<p>
							<a href="../admin/admin-list.admin" style="color: white;">공지사항 관리</a>
						</p>
						<div>
							<p>
								<a href="../admin/admin-list.admin" >공지사항 조회</a>
							</p>
							<p>
								<a href="../admin/admin-write.admin">공지사항 신규등록</a>
							</p>
						</div>
					</li>
					<li>
						<p>
							<a
								href="../admin/admin-banner-list.admin" style="color: white;">배너 관리</a>
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
            <h1 class="h1">쿠폰 신규등록</h1>
        </div>

        <div class="container">
        
            <div class="box1">
                <label class="label" for="event-title">쿠폰 이름</label> 
                <input type="text" id="event-title" name="adminCouponTitle" placeholder="ex) 쿠폰이벤트 기획전 -1" required />
            </div>

            <div class="box1">
                <label class="label" for="coupon-code">쿠폰 코드</label> 
                <input type="text" id="coupon-code" name="adminCouponCode" placeholder="쿠폰 번호 16자리를 입력해 주세요. '-'제외" maxlength="16" required />
            </div>

            <div class="box1">
                <label class="label" for="event-period">이벤트 기간 (쿠폰 유효기간)</label> 
                <input type="date" id="start-date" name="adminCouponStart" />
                <span>~</span>
                <input type="date" id="end-date" name="adminCouponEnd" />
            </div>

            <div class="box1">
                <label class="label" for="event-category">이벤트 카테고리</label> 
                <select id="event-category" name="adminCouponType" required>
                    <option value="category4">헬스+</option>
                    <option value="category1">강아지</option>
                    <option value="category2">고양이</option>
                    <option value="category3">새</option>
                    <option value="category4">물고기</option>
                </select>
            </div>

            <div class="box1">
                <label class="label" for="details">상세 내용</label>
                <textarea id="details" name="adminCouponContent" rows="4" placeholder="내용을 입력해주세요. (500자 이내)" maxlength="500" required></textarea>
            </div>

			<div class="box1">
			    <label class="label" for="coupon-quantity">쿠폰 수량제한</label> 
			    <input type="number" id="coupon-quantity" name="adminCouponQuantity" placeholder="ex) 1000" required min="1" />
			</div>
			
			<div class="discount-type">
			    <label class="label" name="coupon-quantity">쿠폰 할인율</label>
			    <div class="box3">
			        <div class="box2">
			            <label><input type="radio" name="adminCouponDiscountRate" value="10" /> 10%</label> 
			            <label><input type="radio" name="adminCouponDiscountRate" value="20" /> 20% </label> 
						<div>
						    <label><input type="radio" name="adminCouponDiscountRate" value="custom" />직접입력</label>
						    <input type="number" class="custom-discount" name="adminCouponDiscountRateCustom" placeholder="ex) 7" min="0" max="100" required />
						</div>
			        </div>
                </div>
            </div>
        </div>

        <div class="change-buttons">
              <button class="button-submit">완료</button>
              <button class="button-edit" onclick="cancelPost()">취소</button>
        </div>
    </form>

</body>
		<script src="../assets/js/admin/admin-coupon-write.js"></script>
</html>
