<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문관리</title>
<link rel="stylesheet" href="../assets/css/order/orderList.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
</head>
<body>
  <div id="frame">
    <div class="menu-wrap">
      <img class="menu-icon" src="../assets/images/product/menu.png" alt="메뉴">
      <span>주문관리</span>

      <div id="menu-frame">
        <div class="menu-header">
          <div class="welcome">seller님 환영합니다!</div>
          <button class="logout">로그아웃</button>
        </div>
        <ul>
          <li>
            <p>공지사항 관리</p>
            <div>
              <p>공지사항 조회</p>
              <p>공지사항 신규등록</p>
              <p>공지사항 수정</p>
            </div>
          </li>
          <li>
            <p>배너 관리</p>
            <div>
              <p>배너조회</p>
              <p>배너 신규등록</p>
              <p>배너 수정</p>
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
              <p>쿠폰 수정</p>
            </div>
          </li>
        </ul>
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
          <option value="배송 후">배송 후</option>
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
            <th>이미지</th>
            <th>상품명</th>
            <th>판매가</th>
            <th>개수</th>
            <th>총가격</th>
            <th>재고</th>
            <th>등록일</th>
            <th>관리</th>
          </tr>
        </thead>
      <tbody>
        <tr>
          <td>27</td>
          <td>
            <div class="image"></div>
          </td>
          <td>
            <span>강아지 매트 고양이</span>
          </td>
          <td>19,900원</td>
          <td>1</td>
          <td>19,900</td>
          <td>330</td>
          <td>2024-09-23</td>
          <td>
            <button class="details-button">상세</button>
          </td>
        </tr>
        <tr>
          <td>26</td>
          <td>
            <div class="image"></div>
          </td>
          <td>
            <span>강아지 사료</span>
          </td>
          <td>19,900원</td>
          <td>2</td>
          <td>39,800</td>
          <td>330</td>
          <td>2024-09-23</td>
          <td>
            <button class="details-button">상세</button>
          </td>
        </tr>
        <tr>
          <td>25</td>
          <td>
            <div class="image"></div>
          </td>
          <td>
            <span>강아지 사료</span>
            </div>
          </td>
          <td>19,900원</td>
          <td>사료</td>
          <td>판매중</td>
          <td>330</td>
          <td>2024-09-23</td>
          <td>
            <button class="details-button">상세</button>
          </td>
          <tr>
            <td>24</td>
            <td>
              <div class="image"></div>
            </td>
            <td>
              <span>강아지 사료</span>
              </div>
            </td>
            <td>19,900원</td>
            <td>사료</td>
            <td>판매중</td>
            <td>330</td>
            <td>2024-09-23</td>
            <td>
              <button class="details-button">상세</button>
            </td>
          </tr>
        </tbody>
      </table>
    </section>

    <div class="form-frame">
      <div class="detail-frame">
        <div class="detail-container">
          <h2 class="detail-title">주문 상세</h2>
          <button class="close-btn">닫기</button>
        </div>
      </div>
      <div class="inputs">
        <div class="info-input">
          <span>주문번호</span><div class="info"><span>125816</span></div>
        </div>
        <div class="info-input">
          <span>이름</span><div class="info"><span>이*아</span></div>
        </div>
        <div class="info-input">
          <span>이메일</span><div class="info"><span>ah_****@naver.com</span></div>
        </div>
        <div class="info-input">
          <span>성별</span><div class="info"><span>여</span></div>
        </div>
        <div class="info-input"> 
          <span>지역</span><div class="info"><span>수원시</span></div>
        </div>
        <div class="info-input"> 
          <span>주문상태</span><div class="info"><span>주문대기</span></div>
        </div>
      </div>
    </div>
    <div class="popup-bg"></div>
</body>
<script src="../assets/js/order/orderList.js"></script>
</html>