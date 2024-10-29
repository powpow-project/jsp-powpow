<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/seller/seller-revenue-list.css">
  <link rel="stylesheet" href="../assets/css/index.css">
  <link rel="icon" href="../assets/images/favicon.ico">	
  <title>매출관리</title>
</head>
<body>
  <div id="frame">
    <div class="menu-wrap">
      <img class="menu-icon" src="../assets/images/product/menu.png" alt="메뉴">
      <span>매출관리</span>
      
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
      <h1 class="h1">매출조회</h1>
    </div>
    <section class="notice-search">
      <div class="input-group">
        <input type="date" id="start-date" name="start-date" />
        <span>~</span>
        <input type="date" id="end-date" name="end-date" />
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
              <th>날짜별</th>
              <th>주문수량</th>
              <th>주문금액</th>
              <th>취소수량</th>
              <th>취소금액</th>
              <th>총 판매금액</th>
            </tr>
          </thead>
        <tbody>
          <tr class="tr-border">
            <td>합계</td>
            <td><c:out value="${totalOrderCount}" /></td>
            <td><c:out value="${totalOrderPrice}" /></td>
            <td><c:out value="${totalCancleCount}" /></td>
            <td><c:out value="${totalCanclePrice}" /></td>
            <td><c:out value="${totalSales}" /></td>
          </tr>
          <tr>
            <td><c:out value="날짜" /></td>
        	<c:forEach var="orderList" items="${orderListForSeller}">
            	<td><c:out value="${orderList.orderTotalCount}" /></td>
            	<td><c:out value="${orderList.orderTotalPrice}" data-ordertotalprice="${orderList.orderTotalPrice}"/></td>
         	</c:forEach>
         	<c:forEach var="cancleList" items="${cancleListForSeller}">
            	<td><c:out value="${cancleList.cancleTotalCount}" /></td>
            	<td><c:out value="${cancleList.cancleTotalPrice}" /></td>
            	<td><c:out value="${orderList.orderTotalPrice - cancleList.cancleTotalPrice}" /></td>
        	</c:forEach>
          </tr>
          </tbody>
        </table>
      </section>
    </div>
</body>
<script src="../assets/js/seller/seller-revenue-list.js"></script>
</html>