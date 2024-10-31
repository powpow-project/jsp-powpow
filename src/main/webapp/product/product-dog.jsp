<%@page import="com.app.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/product/product-dog.css">
  <link rel="stylesheet" href="../assets/css/main/main-index.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico"/>
  <title>쇼핑 메인</title>
</head>
<body>
		<div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="../assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"> <img src="../assets/images/search-icon.jpg" alt="검색" /></a> 
								<a href="#"> <img src="../assets/images/truck-icon.jpg" alt="배송" /> </a> 
								<a href="./product-cart-list.product"> <img src="../assets/images/shopping-cart-icon.jpg" alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="./member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="./product/main.product">스토어</a></li>
							<li class="menu"><a href="#">커뮤니티</a></li>
							<li class="menu"><a href="./list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a href="./product/product-dog.product?productCategoryName=강아지">강아지</a></li>
								<li class="sub-menu"><a href="./product/product-cat.product">고양이</a></li>
								<li class="sub-menu"><a href="./product/product-bird.product">새</a></li>
								<li class="sub-menu"><a href="./product/product-fish.product">물고기</a></li>
								<li class="sub-menu"><a href="./product/health-main.product">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./community/list.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="./myhome/list.myhome">나의 정보</a></li>
								<li class="sub-menu"><a href="./myhome/pet-list.myhome">반려동물 정보</a></li>
								<li class="sub-menu"><a href="./myhome/shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="./community/read.community">내 게시글</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
     <div class="body-container">
       <div class="body-wrap">
         <div class="sub-logo">
           <img src="../assets/images/shopping/Icon-Dog.jpg" alt="개">
           <p>강아지</p>
             </div>
             <div class="sub-logo-title-wrap">
          <div class="sub-logo-title">
            <ul>
              <li class="sub-logo-title-menu"><a class="h4" href="#" data-target="product-all-wrap">전체</a></li>
              <li class="sub-logo-title-menu"><div class="sector"></div></li>
              <li class="sub-logo-title-menu"><a class="h4" href="#" data-target="feed-wrap">사료/간식</a></li>
              <li class="sub-logo-title-menu"><div class="sector"></div></li>
              <li class="sub-logo-title-menu"><a class="h4" href="#" data-target="toiletries-wrap">배변용품</a></li>
              <li class="sub-logo-title-menu"><div class="sector"></div></li>
              <li class="sub-logo-title-menu"><a class="h4" href="#" data-target="toy-wrap">장난감</a></li>
              <li class="sub-logo-title-menu"><div class="sector"></div></li>
              <li class="sub-logo-title-menu"><a class="h4" href="#" data-target="bb-wrap">미용/목욕</a></li>
            </ul>
           </div>
           </div>
           <p class="entire-count">전체 <c:out value="${productCount}"/>개</p>
         
           <div class="product-wrap">
	           <div id="product-all-wrap">
	           	  <c:forEach var="product" items="${product}" varStatus="status">
	           	  <c:if test="${product.productCategoryName == '강아지'}">
	               			<div class="product" data-category="${product.productType}">
	                 				<div class="product-image-wrap">
	                  					<img src="../assets/images/product/${product.productImage}">
		                  				<div class="hover-box">
			                    			<div class=hover-box-new>
			                      				<a class="hover-new" href="#">
			                        				<img src="../assets/images/shopping/new.png">
			                      				</a>
			                    		   </div>
			                    			<div class=hover-box-cart>
			                      				<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
			                        				<img src="../assets/images/shopping/carthovar.png">
			                     				 </a>
			                    			</div>
			                    			<div class=hover-box-heart>
			                      				<a class="hover-heart" href="#">
			                        				<img src="../assets/images/shopping/heart.png">
			                     				</a>
			                    			</div>
		                  				</div>
	                 				</div>
	                 				<div class="product-info">
	                    				<p class="product-name">${product.productName}</p>
	                   					<div class="delivery-info">
	                      					<p id="product-start">오늘출발</p><p id="product-limit">오후 3시전 주문시</p><p id="product-free">(무료배송)</p>
	                   					</div>
	                   					<div class="product-star">
	                     					<p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
	                   					</div>
	                 				</div>
	               			</div>
	               			</c:if>
	   				  </c:forEach>
	          	 	</div>
	          	 	
           <div id="feed-wrap">
        		<c:forEach var="product" items="${product}" varStatus="status">
    		 			<c:if test="${product.productType == '사료/간식' && product.productCategoryName == '강아지'}">
               				<div class="product" data-category="${product.productType}">
                 				<div class="product-image-wrap">
                  					<img src="../assets/images/product/${product.productImage}">
                  					<div class="hover-box">
                    					<div class=hover-box-new>
                      						<a class="hover-new" href="#">
                        						<img src="../assets/images/shopping/new.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-cart>
                      						<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
                        						<img src="../assets/images/shopping/carthovar.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-heart>
                      						<a class="hover-heart" href="#">
                        						<img src="../assets/images/shopping/heart.png">
                      						</a>
                    					</div>
                  					</div>
                 				</div>
                 <div class="product-info">
                    <p class="product-name">${product.productName}</p>
                   <div class="delivery-info">
                      <p id="product-start">오늘출발</p><p id="product-limit">오후 3시전 주문시</p><p id="product-free">(무료배송)</p>
                   </div>
                   <div class="product-star">
                     <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
                   </div>
                 </div>
               </div>
            </c:if>
     </c:forEach>
     </div>
     
                <div id="toiletries-wrap">
        		<c:forEach var="product" items="${product}" varStatus="status">
    		 			<c:if test="${product.productType == '배변용품'}">
               				<div class="product" data-category="${product.productType}">
                 				<div class="product-image-wrap">
                  					<img src="../assets/images/product/${product.productImage}">
                  					<div class="hover-box">
                    					<div class=hover-box-new>
                      						<a class="hover-new" href="#">
                        						<img src="../assets/images/shopping/new.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-cart>
                      						<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
                        						<img src="../assets/images/shopping/carthovar.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-heart>
                      						<a class="hover-heart" href="#">
                        						<img src="../assets/images/shopping/heart.png">
                      						</a>
                    					</div>
                  					</div>
                 				</div>
                 <div class="product-info">
                    <p class="product-name">${product.productName}</p>
                   <div class="delivery-info">
                      <p id="product-start">오늘출발</p><p id="product-limit">오후 3시전 주문시</p><p id="product-free">(무료배송)</p>
                   </div>
                   <div class="product-star">
                     <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
                   </div>
                 </div>
               </div>
            </c:if>
     </c:forEach>
     </div>
     
                <div id="toy-wrap">
        		<c:forEach var="product" items="${product}" varStatus="status">
    		 			<c:if test="${product.productType == '장난감'}">
               				<div class="product" data-category="${product.productType}">
                 				<div class="product-image-wrap">
                  					<img src="../assets/images/product/${product.productImage}">
                  					<div class="hover-box">
                    					<div class=hover-box-new>
                      						<a class="hover-new" href="#">
                        						<img src="../assets/images/shopping/new.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-cart>
                      						<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
                        						<img src="../assets/images/shopping/carthovar.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-heart>
                      						<a class="hover-heart" href="#">
                        						<img src="../assets/images/shopping/heart.png">
                      						</a>
                    					</div>
                  					</div>
                 				</div>
                 <div class="product-info">
                    <p class="product-name">${product.productName}</p>
                   <div class="delivery-info">
                      <p id="product-start">오늘출발</p><p id="product-limit">오후 3시전 주문시</p><p id="product-free">(무료배송)</p>
                   </div>
                   <div class="product-star">
                     <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
                   </div>
                 </div>
               </div>
            </c:if>
     </c:forEach>
     </div>
     
                <div id="bb-wrap">
        		<c:forEach var="product" items="${product}" varStatus="status">
    		 			<c:if test="${product.productType == '미용/목욕'}">
               				<div class="product" data-category="${product.productType}">
                 				<div class="product-image-wrap">
                  					<img src="../assets/images/product/${product.productImage}">
                  					<div class="hover-box">
                    					<div class=hover-box-new>
                      						<a class="hover-new" href="#">
                        						<img src="../assets/images/shopping/new.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-cart>
                      						<a class="hover-cart" href="product-cart-write-ok.product?productId=${product.id}">
                        						<img src="../assets/images/shopping/carthovar.png">
                      						</a>
                    					</div>
                    					<div class=hover-box-heart>
                      						<a class="hover-heart" href="#">
                        						<img src="../assets/images/shopping/heart.png">
                      						</a>
                    					</div>
                  					</div>
                 				</div>
                 <div class="product-info">
                    <p class="product-name">${product.productName}</p>
                   <div class="delivery-info">
                      <p id="product-start">오늘출발</p><p id="product-limit">오후 3시전 주문시</p><p id="product-free">(무료배송)</p>
                   </div>
                   <div class="product-star">
                     <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
                   </div>
                 </div>
               </div>
            </c:if>
     </c:forEach>
     </div>
     

              <div>
              </div>
    		
            </div>
           <!--  여까지 -->
              <div class="all-sup-title">
                <div class="all-category-dropdown">
                  <ul>
                    <li class="all-category-item">
                      <p class="all-category-title">
                        인기상품순
                        <img class="all-toggle-icon" src="../assets/images/ep_arrow-down-bold.png" alt="Toggle Icon" />
                      </p>
                      <div class="all-sub-category" style="display: none;">
                        <p>판매 인기순</p>
                        <p>상품평 많은순</p>
                        <p>낮은 가격순</p>
                        <p>신규 등록순</p>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
       </div>
     </div>
	<footer>
        <div class="footer-container">
            <div class="footer-section">
                <h3>고객센터 &gt;</h3>
                <p><span class="highlight">0000-0000</span> <span>09:00~18:00</span></p>
                <ul class="custom-list">
                    <li>평일: 전체 문의 상담</li>
                    <li>토요일, 공휴일: 포포 배송 주문건 상담</li>
                    <li>일요일: 휴무</li>
                </ul>
                <button class="kakao-button">카톡 상담 (평일 09:00~18:00)</button>

            </div>

            <div class="footer-section">
                <ul>
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">채용정보</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">공지사항</a></li>
                    <li><a href="#">개인정보 처리방침</a></li>
                </ul>
            </div>

            <div class="footer-section">
                <ul>
                    <li><a href="#">배너신청</a></li>
                    <li><a href="#">쿠폰신청</a></li>
                    <li><a href="#">고객의 소리</a></li>
                    <li><a href="#">이메일 문의</a></li>
                    <li><a href="#">제휴/광고 문의</a></li>
                </ul>
            </div>

            <div class="footer">
                <div class="footer-section legal">
                    <p>(주)포포 | 공동 제작 류 재 준 | 서울 강남구 테헤란로 146, 3층 4층</p>
                    <p>contact@powpow.com | 사업자등록번호: <span class="highlight">사업자정보확인</span></p>
                    <p>통신판매업신고번호 제2024-서울강남-0000호</p>
                </div>

                <div class="footer-section legal2">
                    <p>(주)포포는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 책임을 지지 않습니다.</p>
                    <p>단, (주) 포포가 판매자로 등록 판매한 상품은 판매자로서 책임을 부담합니다.</p>
                </div>

                <div class="footer-section legal3">
                    <p>Copyright 2024. powpow, Co., Ltd. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="../assets/js/product/product-main.js"></script>

</html>