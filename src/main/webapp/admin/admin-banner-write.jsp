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
    <form id="frame">
        <div class="menu-wrap">
            <img class="menu-icon" src="../assets/images/admin/menu.png" alt="메뉴">
            <span>배너 관리</span>
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
            <h1 class="h1">배너 신규등록</h1>
        </div>

        <div id="container">
            <form id="banner-form">
                
                <!-- 배너명 -->
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

                <!-- 배너 타입 -->
                <div class="form-row">
                    <label for="banner-type">배너 타입</label>
                    <select id="banner-type" name="banner-type">
                        <option value="image">이미지</option>
                        <option value="text">텍스트</option>
                        <option value="video">비디오</option>
                    </select>
                </div>

                <!-- 배너 링크 -->
                <div class="form-row">
                    <label for="banner-link">배너 링크</label>
                    <input
                        type="url"
                        id="banner-link"
                        name="banner-link"
                        placeholder="배너 클릭 시 이동할 URL"
                    />
                </div>

                <!-- 배너 이미지 -->
                <div class="form-row">
                    <label for="banner-image">배너 이미지</label>
                    <div class="file-upload-group">
                        <input
                            type="file"
                            id="banner-image"
                            name="banner-image"
                            accept=".jpg, .png, .gif"
                            required
                        />
                    </div>
                </div>

                <!-- 기간 -->
                <div class="form-row">
                    <label for="unlimited">기간</label>
                    <div class="input-group">
                        <input type="radio" id="unlimited" name="duration" value="unlimited" />
                        <label for="unlimited">무제한</label>
                        <input type="date" id="start-date" name="start-date" />
                        <span>~</span>
                        <input type="date" id="end-date" name="end-date" />
                    </div>
                </div>

                <!-- 사용 여부 -->
                <div class="form-row">
                    <label>사용 여부</label>
                    <div class="radio-group">
                        <input type="radio" id="use" name="use-status" value="use" required />
                        <label for="use">사용함</label>
                        <input type="radio" id="no-use" name="use-status" value="no-use" />
                        <label for="no-use">사용 안함</label>
                    </div>
                </div>
            </form>
        </div>

        <div class="change-buttons">
            <button class="button-submit">등록</button>
            <button class="button-edit">취소</button>
        </div>
    </form>

    <script src="../assets/js/admin/admin-banner-write.js"></script>
</body>
</html>
