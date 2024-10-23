<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="../assets/css/product/product-list.css">
  <link rel="stylesheet" href="../assets/css/index.css">
  <link rel="icon" href="../assets/images/favicon.ico">
<title>상품관리</title>
</head>
<body>
 <div id="frame">
  <div class="menu-wrap">
    <img class="menu-icon" src="../assets/images/product/menu.png" alt="메뉴">
    <span class="h4">상품관리</span>
    
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
	            <p>상품 조회</p>
	            <p>상품 등록</p>
	            <p>상품 수정</p>
	          </div>
	        </li>
	        <li>
	          <p>주문 관리</p>
	          <div>
	            <p>주문조회</p>
	          </div>
	        </li>
	        <li>
	          <p>정산 관리</p>
	          <div>
	            <p>정산내역조회</p>
	          </div>
	        </li>
	        <li>
	          <p>판매자 관리</p>
	          <div>
	            <p>판매자정보 관리</p>
	            <p>사업자정보 관리</p>
	          </div>
	        </li>
	        <li>
	          <p>매출 관리</p>
	          <div>
	            <p>매출 조회</p>
	          </div>
	        </li>
	      </ul>
	    </div>
	</div>
    
  </div>
  <div class="division-line"></div>

  <div class="title">
    <h1 class="h1">상품조회</h1>
  </div>
  <section class="notice-search">
    <div class="search-bar">
      <input type="text" class="search" placeholder="상품명/상품번호를 입력하세요">
    </div>
    <div class="buttons">
      <button class="search-btn">검색</button>
      <button class="reset-btn">초기화</button>
      <button class="new-add-btn" onclick="location.href='seller-write.seller'">상품등록</button>
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
          <th>분류</th>
          <th>상태</th>
          <th>재고</th>
          <th>등록일</th>
          <th>관리</th>
      </tr>
     </thead>
		<tbody>
        <c:forEach var="product" items="${products}" varStatus="status">
        <tr>
          <td>${status.index + 1}</td>  <!-- 행 번호 출력 -->
          <td>
              <div class="image"><img src="../assets/images/product/${product.productImage}" alt="이미지"></div>
          </td>
          <td><c:out value="${product.productName}" /></td>
          <td><c:out value="${product.productPrice}원" /></td>
          <td><c:out value="${product.productType}" /></td>
          <td><c:out value="판매중 or 상태" /></td>
          <td><c:out value="${product.productStock}" /></td>
          <td><c:out value="${product.productDate}" /></td>
          <td>
            <div class="change-buttons">
                <button class="edit-btn" onclick="location.href='update.seller?id=${product.id}'">수정</button>
                <button class="delete-btn" >삭제</button>
            </div>
          </td>
         </tr>
       </c:forEach> 
     </tbody>
     </table>
    </section>
	
    <div class="pop-up">
      <p>삭제하시겠습니까?</p>
      <div class="check-buttons">
        <button class="delete-btn" onclick="location.href='delete-ok.seller?id=${product.id}'">확인</button>
        <button class="cancel-btn">취소</button>
      </div>
    </div>
    <div class="popup-bg"></div>
  </div>
</body>
<script src="../assets/js/product/product-list.js">
</script>
</html>