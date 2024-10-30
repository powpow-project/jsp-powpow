<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/admin/admin-coupon-update.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="icon" href="../assets/images/favicon.ico">
    <title>쿠폰 수정</title>
</head>
<body>
    <form action="admin-coupon-update-ok.admin" method="POST" id="frame">

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
            <h1 class="h1">쿠폰 수정</h1>
        </div>

        <div class="container">
            <input type="hidden" name="id" value="${adminCoupon.id}" />

            <div class="box1">
                <label class="label" for="event-title">쿠폰 이름</label> 
                <input type="text" id="event-title" name="adminCouponTitle" placeholder="ex) 쿠폰이벤트 기획전 -1" required value="${adminCoupon.adminCouponTitle}" />
            </div>

            <div class="box1">
                <label class="label" for="coupon-code">쿠폰 코드</label> 
                <input type="text" id="coupon-code" name="adminCouponCode" placeholder="쿠폰 번호 16자리를 입력해 주세요. '-'제외" maxlength="16" required value="${adminCoupon.adminCouponCode}" />
            </div>

            <div class="box1">
                <label class="label" for="event-period">이벤트 기간 (쿠폰 유효기간)</label> 
                <input type="date" id="start-date" name="adminCouponStart" required />
                <span>~</span> 
                <input type="date" id="end-date" name="adminCouponEnd" required />
            </div>

            <div class="box1">
                <label class="label" for="event-category">이벤트 카테고리</label>
                <select id="event-category" name="adminCouponType" required>
                    <option value="category1" ${adminCoupon.adminCouponType == 'category1' ? 'selected' : ''}>헬스+</option>
                    <option value="category2" ${adminCoupon.adminCouponType == 'category2' ? 'selected' : ''}>강아지</option>
                    <option value="category3" ${adminCoupon.adminCouponType == 'category3' ? 'selected' : ''}>고양이</option>
                    <option value="category4" ${adminCoupon.adminCouponType == 'category4' ? 'selected' : ''}>새</option>
                    <option value="category5" ${adminCoupon.adminCouponType == 'category5' ? 'selected' : ''}>물고기</option>
                </select>
            </div>

            <div class="box1">
                <label class="label" for="details">상세 내용</label>
                <textarea id="details" name="adminCouponContent" rows="4" placeholder="내용을 입력해주세요. (500자 이내)" maxlength="500" required>${adminCoupon.adminCouponContent}</textarea>
            </div>

            <div class="box1">
                <label class="label" for="coupon-quantity">쿠폰 수량제한</label> 
                <input type="number" id="coupon-quantity" name="adminCouponQuantity" placeholder="ex) 1000" required min="1" value="${adminCoupon.adminCouponQuantity}" />
            </div>

			<div class="discount-type">
			    <label class="label">쿠폰 할인율</label>
			    <div class="box3">
			        <div class="box2">
			            <label><input type="radio" name="adminCouponDiscountRate" value="10" ${adminCoupon.adminCouponDiscountRate == 10 ? 'checked' : ''} /> 10%</label> 
			            <label><input type="radio" name="adminCouponDiscountRate" value="20" ${adminCoupon.adminCouponDiscountRate == 20 ? 'checked' : ''} /> 20% </label> 
			            <div>
			                <label><input type="radio" name="adminCouponDiscountRate" 
			                value="custom" ${adminCoupon.adminCouponDiscountRate != 10 && adminCoupon.adminCouponDiscountRate != 20 ? 'checked' : ''} />직접입력</label>
			                <input type="number" class="custom-discount" name="adminCouponDiscountRateCustom" 
			                placeholder="ex) 7" min="0" max="100" value="${adminCoupon.adminCouponDiscountRate}" />
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
    <script>
        const startdateInput = document.querySelector("#start-date");
        let startDate = `${adminCoupon.adminCouponStart}`.split(" ")[0];
        startdateInput.value = startDate; 

        const endDateInput = document.querySelector("#end-date");
        let endDate = `${adminCoupon.adminCouponEnd}`.split(" ")[0];
        endDateInput.value = endDate;
    </script>
    <script src="../assets/js/admin/admin-coupon-update.js"></script>
    
</html>
