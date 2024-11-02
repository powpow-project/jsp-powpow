<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../assets/css/admin/admin-banner-write.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="icon" href="../assets/images/favicon.ico">
    <title>배너 신규등록</title>
</head>
<body>
    <form action="admin-banner-write-ok.admin" method="POST" id="frame"
    enctype="multipart/form-data">
        
      <div class="menu-wrap">
			<img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
			<span>공지사항 관리</span>
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
							<a href="../admin/admin-coupon-list.admin" style="color: white;">쿠폰
								관리</a>
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
            <h1 class="h1">배너 신규등록</h1>
        </div>

        <div id="container">
            <div class="form-row">
                <label for="banner-name">배너명</label>
                <input
                    type="text"
                    id="banner-name"
                    name="banner-name"
                    placeholder="제목을 입력해주세요. (20자 이내)"
                    required
                />
            </div>

            <div class="form-row">
                <label for="banner-type">배너 타입</label>
                <select id="banner-type" name="banner-type">
                    <option value="image">이미지</option>
                    <option value="text">텍스트</option>
                    <option value="video">비디오</option>
                </select>
            </div>

            <div class="form-row">
                <label for="banner-link">배너 링크</label>
                <input
                    type="url"
                    id="banner-link"
                    name="banner-link"
                    placeholder="배너 클릭 시 이동할 URL"
                />
            </div>

            <div class="form-row">
                <label for="banner-image">배너 이미지</label>
                <div class="file-upload-group">
                    <input
                        type="file"
                        id="banner-image"
                        name="banner-image"
                        accept="image/*"
                        required
                    />
                </div>
            </div>

            <div class="form-row">
                <label for="unlimited">기간</label>
                <div class="input-group">
                    <input type="date" id="start-date" name="start-date" />
                    <span>~</span>
                    <input type="date" id="end-date" name="end-date" />
                </div>
            </div>

            <div class="form-row">
                <label>사용 여부</label>
                <div class="radio-group">
                    <input type="radio" id="use" name="use-status" value="use" required />
                    <label for="use">사용함</label>
                    <input type="radio" id="no-use" name="use-status" value="no-use" />
                    <label for="no-use">사용 안함</label>
                </div>
            </div>
        </div>

        <div class="change-buttons">
            <button class="button-submit">등록</button>
            <button class="button-edit">취소</button>
        </div>
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
<script src="../assets/js/admin/admin-banner-write.js"></script>
</html>
