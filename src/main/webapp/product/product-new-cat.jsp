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
	<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class="body-container">
		<div class="body-wrap">
			<div class="sub-logo">
				<img src="../assets/images/shopping/icon-cat.svg" alt="고양이">
				<p>고양이</p>
			</div>
		<div class="sub-logo-title-wrap">
			<div class="sub-logo-title">
				<ul>
					<li class="sub-logo-title-menu sub-button active"><a class="h4" data-target="product-all-wrap">전체</a></li>
					<li class="sub-logo-title-menu"><div class="sector"></div></li>
					<li class="sub-logo-title-menu sub-button"><a class="h4" data-target="feed-wrap">사료/간식</a></li>
					<li class="sub-logo-title-menu"><div class="sector"></div></li>
					<li class="sub-logo-title-menu sub-button"><a class="h4" data-target="toiletries-wrap">배변용품</a></li>
					<li class="sub-logo-title-menu"><div class="sector"></div></li>
					<li class="sub-logo-title-menu sub-button"><a class="h4" data-target="toy-wrap">장난감</a></li>
					<li class="sub-logo-title-menu"><div class="sector"></div></li>
					<li class="sub-logo-title-menu sub-button"><a class="h4" data-target="bb-wrap">미용/목욕</a></li>
				</ul>
			</div>
		</div>
		
        <!-- 서브 메뉴 -->
		<div class="all-sup-title">
			<p class="entire-count h5">전체 <c:out value="${products.size()}"/>개</p>
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
			
		<div class="product-wrap">
			
		<div id="product-all-wrap" class="sub-content-wrap active">
			<c:forEach var="product" items="${products}">
				<div onclick="location.href='product-detail.product?productId=${product.id}'" class="product" data-category="${product.productType}">
                	<div class="product-image-wrap">
                  		<img src="../assets/images/product/${product.productImage}" />
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
							<p id="product-start">오늘출발</p>
							<p id="product-limit">오후 3시전 주문시</p>
							<p id="product-free">(무료배송)</p>
						</div>
						<div class="product-star">
							<p id="product-star">★★★★★</p>
							<p id="product-star-count">(25)</p>
							</div>
                		</div>
				</div>
			</c:forEach>
		</div>
          	 
          	 	
		<div id="feed-wrap" class="sub-content-wrap">
       	<c:forEach var="product" items="${products}" varStatus="status">
   		 			<c:if test="${product.productType == '사료/간식'}">
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

        <div id="toiletries-wrap" class="sub-content-wrap">
   		<c:forEach var="product" items="${products}" varStatus="status">
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

          <div id="toy-wrap" class="sub-content-wrap">
   		<c:forEach var="product" items="${products}" varStatus="status">
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
   
            <div id="bb-wrap" class="sub-content-wrap">
        		<c:forEach var="product" items="${products}" varStatus="status">
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
			</div>
	
		</div>
	</div>
     
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/product/product-main.js"></script>
</html>