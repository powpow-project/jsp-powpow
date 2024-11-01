<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/product/product-detail.css">
  <link rel="stylesheet" href="../assets/css/main/main-index.css">
  <link rel="shortcut icon" href="../assets/images/favicon.ico"/>
  <title>쇼핑상세페이지</title>
</head>
<body>
  <div class="body-container">
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
								<a href="./shipping-list.myhome"> <img src="../assets/images/truck-icon.jpg" alt="배송" /> </a> 
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
							<li class="menu"><a href="./community/community-main.community">커뮤니티</a></li>
							<li class="menu"><a href="./list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a href="./product/product-dog.product">강아지</a></li>
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
    <div class="body-wrap">
      <div class="product-info-left">
        <img id= main-img src="./images/not-found.png">
        <div class="sub-img-wrap">
          <img src="./images/not-found.png">
          <img src="./images/not-found.png">
          <img src="./images/not-found.png">
        </div>
          <div class="info-seller">
            <p class="h6">상품코드 : 51563545 | 원산지 : 상품설명 참조</p>
            <button>포포></button>
          </div>
      </div>
      <div class="product-info-right">
        <p id="star">☆☆☆☆☆ | 301 + ></p>
        <div class="icons-wrap">
          <img src="./images/heart2.png">
          <img src="./images/share.png">
        </div>
        <p class="product-name h2">오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 간식,69g (유통기한 2025-02-25까지)</p>
        <p class="coupon h3">쿠폰 적용가</p>
        <div class="product-price-wrap">
          <p class="percent h2">10%</p> <p class="real-price h2">4,050원</p> <p class="price h4 gray500">4500원</p>
        </div>
      <div class="price-check">
        <div class="tag-wrap">
          <p class="tag1 h5">배송정보</p>
          <p class="tag2 h5">결제혜택</p>
          <p class="tag3 h5">카드혜택</p>
        </div>
          <div class="info-wrap">
            <div class="delivery-info">
              <p>cj대한통운</p>
              <p>2500원 (30,000원 이상 무료)</p>
              <p>10/01(화) 도착예정</p>
            </div>
            <div class="sector"></div>
            <div class="info-middle h6">
              <p>토스페이 3만원 이상 결제 시 최대 2만원 즉시할인</p>
              <p>네이버페이 2,000원 포인트 적립</p>
            </div>
              <p>무이자 할부 안내</p>
            </div>
        </div>
          <div class="product-box">
            <p class="h4">오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 간식,69g (유통기한 2025-02-25까지)</p>
            <div class="box-bottom">
              <div class="quantity-control">
                <span><button class="btn-minus">-</button></span>
                <input id="result1" value="1" class="quantity-input">
                <span><button class="btn-plus">+</button></span>
              </div>
                      <p class="h6 gray500">남은 수량:32개</p> <p class="h4">4,050원</p>
            </div>
          </div>
          <div class="button-container h5">
            <button class="check-button">장바구니</button>
            <button class="payment-button">바로구매</button>
          </div>
      </div>
    </div>
    
     <p class="together h4">함께보면 좋은 상품</p>
     <div class="button-wrap">
      <p>1/2</p><button>&lt;</button><button> &gt;</button>
    </div>
    <div class="product-wrap">
    
      <div class="product">
        <div class="product-image-wrap">
         <img src="./images/not-found.png">
         <div class="hover-box">
           <div class=hover-box-new>
             <a class="hover-new" href="#">
               <img src="./images/new.png">
             </a>
           </div>
           <div class=hover-box-cart>
             <a class="hover-cart" href="#">
               <img src="./images/cart.png">
             </a>
           </div>
           <div class=hover-box-heart>
             <a class="hover-heart" href="#">
               <img src="./images/heart.png">
             </a>
           </div>
         </div>
        </div>
        <div class="product-info">
          <p id="product-name">아카나 독 레시피, 2kg</p>
          <p id="product-price">25,200원</p>
          <div class="product-star">
            <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
          </div>
        </div>
      </div>
      <div class="product">
       <div class="product-image-wrap">
        <img src="./images/not-found.png">
        <div class="hover-box">
          <div class=hover-box-new>
            <a class="hover-new" href="#">
              <img src="./images/new.png">
            </a>
          </div>
          <div class=hover-box-cart>
            <a class="hover-cart" href="#">
              <img src="./images/cart.png">
            </a>
          </div>
          <div class=hover-box-heart>
            <a class="hover-heart" href="#">
              <img src="./images/heart.png">
            </a>
          </div>
        </div>
       </div>
       <div class="product-info">
         <p id="product-name">아카나 독 레시피, 2kg</p>
         <p id="product-price">25,200원</p>
         <div class="product-star">
           <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
         </div>
       </div>
     </div>
     <div class="product">
       <div class="product-image-wrap">
        <img src="./images/not-found.png">
        <div class="hover-box">
          <div class=hover-box-new>
            <a class="hover-new" href="#">
              <img src="./images/new.png">
            </a>
          </div>
          <div class=hover-box-cart>
            <a class="hover-cart" href="#">
              <img src="./images/cart.png">
            </a>
          </div>
          <div class=hover-box-heart>
            <a class="hover-heart" href="#">
              <img src="./images/heart.png">
            </a>
          </div>
        </div>
       </div>
       <div class="product-info">
         <p id="product-name">아카나 독 레시피, 2kg</p>
         <p id="product-price">25,200원</p>
         <div class="product-star">
           <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
         </div>
       </div>
     </div>
     <div class="product">
       <div class="product-image-wrap">
        <img src="./images/not-found.png">
        <div class="hover-box">
          <div class=hover-box-new>
            <a class="hover-new" href="#">
              <img src="./images/new.png">
            </a>
          </div>
          <div class=hover-box-cart>
            <a class="hover-cart" href="#">
              <img src="./images/cart.png">
            </a>
          </div>
          <div class=hover-box-heart>
            <a class="hover-heart" href="#">
              <img src="./images/heart.png">
            </a>
          </div>
        </div>
       </div>
       <div class="product-info">
         <p id="product-name">아카나 독 레시피, 2kg</p>
         <p id="product-price">25,200원</p>
         <div class="product-star">
           <p id="product-star">★★★★★</p><p id="product-star-count">(25)</p>
         </div>
       </div>
     </div>
     </div>
     <div class="container3">
    <div class="info-wrap">
      <div class="tab-wrap">
        <a class="info-btn" href="javascript:showInfo()">상품정보</a>
        <a class="review-btn" href="javascript:showReveiw()">상품평</a>
        <a class="delivery-btn" href="javascript:showDelivery()">주문/배송안내</a>
        <a calss="change-btn" href="javascript:showChange()">교환/반품안내</a>
      </div>
      <div class="container btn1">
        <table class="product-info2">
            <tr>
                <th colspan="2">필수 표기정보</th>
            </tr>
            <tr>
                <td>제품명</td>
                <td>컨텐츠참조</td>
            </tr>
            <tr>
                <td>생산자 및 소재지</td>
                <td>컨텐츠참조</td>
            </tr>
            <tr>
                <td>포장단위별 내용물의 용량(중량), 수량</td>
                <td>210g X 24개</td>
            </tr>
            <tr>
                <td>영양성분</td>
                <td>컨텐츠참조</td>
            </tr>
            <tr>
                <td>소비자 안전을 위한 주의사항</td>
                <td>컨텐츠참조</td>
            </tr>
            <tr>
                <td>유전자변형식품에 해당하는 경우의 표시</td>
                <td>해당없음</td>
            </tr>
            <tr>
                <td>수입식품 문구</td>
                <td>해당없음</td>
            </tr>
            <tr>
                <td>소비자상담 관련 전화번호</td>
                <td>루쏘고객센터 1577-7011</td>
            </tr>
            <tr>
                <td>제조연월일, 소비기한 또는 품질유지기한</td>
                <td>소비기한 : 2025년 01월 21일 이거나 그 이후인 상품</td>
            </tr>
        </table>
    </div>
      <div class="notice-wrap review-wrap btn2">
       <div class="reveiw-title">
         <p>전체 상품평(301건)</p> <p id="product-star">★★★★★5/5</p>
       </div>
       <div class="sector"></div>
       <div class="product-detail">
        <div class="user-info-wrap">
          <div class="user-info">
            <p id="product-star">★★★★★</p> <p>ita******</p>
          </div>
          <img src="./images/not-found.png">
        </div>
        <div class="product-review">
          <p class="p1">오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 69g</p>
          <p class="p2">2024-09-28 작성</p>
          <p class="p3">1+1이라 다이어트용으로 10개 주문햇어요.원플원이라 20개 잘받앗네요.개당 가격은 비싸지만 원플원이라 그나마 괞네요.맛잇다고해서 한달 먹을꺼주문햇네요.유통기한은 10월24일까지라 3주 입니다.원플원이라 딱 10개 주문하면 무료배송에 20개 와서 하루에 하나씩 먹으면 유통기한 전까지 먹을수 잇어요.다이어트용으로 좋아요.그리고 냉장보관 입니다.냉동보관이 아닙니다.냉동보관시 식감이 떨어질수 잇어요.진공포장이라 김치냉장고에 보관하면 좀더 오래먹을수 잇을꺼 같아요.먹어보고 맛잇으면 또 주문할께요.전자렌지나 에어프라이어에 짧은시간에 돌려서 먹을수 잇으니 간편합니다. </p>
        </div>
       </div>
       <div class="sector"></div>
      <div class="product-detail">
        <div class="user-info-wrap">
          <div class="user-info">
            <p id="product-star">★★★★★</p> <p>ita******</p>
          </div>
          <img src="./images/not-found.png">
        </div>
        <div class="product-review">
          <p class="p1">오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 69g</p>
          <p class="p2">2024-09-28 작성</p>
          <p class="p3">1+1이라 다이어트용으로 10개 주문햇어요.원플원이라 20개 잘받앗네요.개당 가격은 비싸지만 원플원이라 그나마 괞네요.맛잇다고해서 한달 먹을꺼주문햇네요.유통기한은 10월24일까지라 3주 입니다.원플원이라 딱 10개 주문하면 무료배송에 20개 와서 하루에 하나씩 먹으면 유통기한 전까지 먹을수 잇어요.다이어트용으로 좋아요.그리고 냉장보관 입니다.냉동보관이 아닙니다.냉동보관시 식감이 떨어질수 잇어요.진공포장이라 김치냉장고에 보관하면 좀더 오래먹을수 잇을꺼 같아요.먹어보고 맛잇으면 또 주문할께요.전자렌지나 에어프라이어에 짧은시간에 돌려서 먹을수 잇으니 간편합니다. </p>
        </div>
       </div>
       <div class="sector"></div>
       <div class="product-detail">
        <div class="user-info-wrap">
          <div class="user-info">
            <p id="product-star">★★★★★</p> <p>ita******</p>
          </div>
          <img src="./images/not-found.png">
        </div>
        <div class="product-review">
          <p class="p1">오쥬 바이 로우즈 독 치킨가슴살&호박 파우치 강아지 69g</p>
          <p class="p2">2024-09-28 작성</p>
          <p class="p3">1+1이라 다이어트용으로 10개 주문햇어요.원플원이라 20개 잘받앗네요.개당 가격은 비싸지만 원플원이라 그나마 괞네요.맛잇다고해서 한달 먹을꺼주문햇네요.유통기한은 10월24일까지라 3주 입니다.원플원이라 딱 10개 주문하면 무료배송에 20개 와서 하루에 하나씩 먹으면 유통기한 전까지 먹을수 잇어요.다이어트용으로 좋아요.그리고 냉장보관 입니다.냉동보관이 아닙니다.냉동보관시 식감이 떨어질수 잇어요.진공포장이라 김치냉장고에 보관하면 좀더 오래먹을수 잇을꺼 같아요.먹어보고 맛잇으면 또 주문할께요.전자렌지나 에어프라이어에 짧은시간에 돌려서 먹을수 잇으니 간편합니다. </p>
        </div>
       </div>
      </div>
      <div class="btn3">
        <div class="btn3-info">
          <p class="h6">배송지역</p>
          <ul>
            <li>전국</li>
            <li>일부 도서, 산간 지역은 배송불가하거나 배송기간이 길어질 수 있으며, 추가 배송비가 발생할 수 있습니다.</li>
          </ul>
        </div>
        <div class="btn3-info">
          <p class="h6">배송비</p>
          <ul>
            <li>3만원 이상 구매 시 전 상품(냉장 배송 포함) 무료배송</li>
            <li>3만원 미만 주문 시 상온제품은 2,500원 / 냉장냉동제품은 3,500원의 배송비가 부과됩니다.</li>
            <li>단, 3만원 미만이라도 일부 상품은 무료배송 될 수 있으니 자세한 내용은 상품 개별 페이지를 확인해주시기 바랍니다.</li>
          </ul>
        </div>
        <div class="btn3-info">
          <p class="h6">업체(제휴) 배송 제품</p>
          <ul>
          <li>업체배송 제품의 배송비는 업체별 배송정책에 따라 달라질 수 있습니다. 상품 개별 페이지에 배송비를 확인해 주시기 바랍니다.</li>
          <li>※ 각각의 주문 건에 대해 수령지가 일치할 경우 합포장 되어 배송될 수 있으며, 이로 인한 배송료 환불은 불가 합니다.</li>
          <li>※ 주문건에 대한 별도 포장을 원하시는 경우, 수령인명 (혹은 주소지)를 약간 다르게 표기하셔야 합니다.</li>
              </ul>
        </div>
      <div class="btn3-info">
        <p class="h6">배송기간</p>
        <ul>
          <li>밴드배송/쿨밴드배송/업체(제휴)배송 상품</li>
          <li>통상 입금 확인일 기준으로 2일~3일소요됩니다. (주말제외)</li>
        </ul>
      </div>
      <div class="btn3-info">
        <p class="h6">배송방식</p>
        <ul>
          <li>pow몰에서는 신선한 상품 유통을 위하여 상온, 냉장, 개별배송, 부분합배송, 합배송 등의 다양한 배송방식을 채택하고 있습니다.</li>
          <li>네이버페이로 주문/결제 시, ‘My 큐커 플랜’ 결제금액에 합산되지 않습니다.</li>
        </ul>
      </div>
      <p class="h6">주문 및 배송에 관한 자세한 상담이나 궁금하신 점이 있을 경우 고객센터의 FAQ나 1:1상담 게시판, 또는 고객센터 1588-3745를 통해서 안내 받으실 수 있습니다. </p>
      </div>
      <div class="btn4">
        <div class="btn4-info">
          <p class="h6">교환/반품이 가능한 경우</p>
          <ul>
            <li>제품 수령일 기준 30일 이내 (단, 구매자 단순변심 반품일 경우 수령 후 7일 이내) 반품이 가능합니다.</li>
            <li>제품 수령 후 제품이 주문 내용과 다른 경우, 제품이 고객님께 인도될 당시 상품이 멸실 또는 훼손된 경우, 구매자 단순 변심(단, 냉장/냉동식품 제외)의 경우 교환/반품이 가능합니다.</li>
            <li>전자상거래 등에서의 소비자보호에 관한 법률에 규정되어 있는 소비자 청약철회 가능범위에 해당되는 경우 교환/반품이 가능합니다.</li>
            <li>통신판매업자가 방문 판매 등에 관한 법률에서 규정하고 잇는 광고에 표시하여야 할 사항을 표시하지 아니한 경우 교환/반품이 가능합니다.</li>
          </ul>
        </div>
        <div class="btn4-info">
          <p class="h6">교환/반품이 불가능한 경우</p>
          <ul>
            <li>고객님의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우</li>
            <li>고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 감소한 경우</li>
            <li>시간이 경과되어 재판매가 곤란할 정도로 상품의 가치가 상실된 경우(냉장, 냉동 제품 등)</li>
            <li>고객 주문 확인 후 상품제작에 들어가는 주문제작 상품(횟감 등)</li>
            <li>기타 전자상거래 등에서의 소비자 보호에 관한 법률이 정하는 소비자 청약철회 제한에 해당되는 경우</li>
          </ul>
        </div>
        <p>제품을 교환/반품 하실 때의 배송비 비용에 대한 안내입니다.</p>
        <div class="btn4-info">
          <p class="h6">※ powpow몰 부담</p>
          <ul>
          <li>상품하자 등의 문제로 교환/반품을 하실 경우 고객상담실로 직접 교환/반품 접수 후 도착한 택배사를 통해 인도하여 주시면 해당상품을 재발송 혹은 주문취소 처리해 드리겠습니다.</li>
              </ul>
        </div>
      <div class="btn4-info">
        <p class="h6">※ 고객님 부담</p>
        <ul>
          <li>단순 고객 변심에 의한 교환/반품인 경우 고객님께서 반품관련 왕복배송비를 부담하셔야 합니다.</li>
          <li>네이버페이 결제 후, 반품 신청시에 자동수거가 불가합니다.</li>
        </ul>
      </div>
      <div class="btn4-info">
        <p class="h6">유의사항</p>
        <ul>
          <li>반품 접수 절차 없이 임의로 반송할 경우, 반품 내용을 확인할 수 없으므로 환불이 지연되거나 환불이 되지 않을 수 있습니다. 그러므로 반드시 절차에 따라 교환 및 반품하여 주시기 바랍니다.</li>
          <li>고객 변심 등의 귀책사유 접수 후 반품 접수일로부터 7영업일 이내에 반품배송비를 입금하지 않는 경우 반품접수 철회됩니다.</li>
          <li>(단, 반품배송비 입금 및 반품처리 완료 후 고객센터로 연락시 3영업일 이내 환불 접수 진행)</li>
        </ul>
      </div>
      </div>
    </div>
    
    </div>
      <div class="banner-bottom">
        <img src="./images/ad-banner.png">
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
              <button class="email-button">이메일 문의</button>
          </div>
          <div class="footer-section">
              <ul>
                  <li><a href="#">회사소개</a></li>
                  <li><a href="#">채용정보</a></li>
                  <li><a href="#">이용약관</a></li>
                  <li><a href="#">개인정보 처리방침</a></li>
                  <li><a href="#">공지사항</a></li>
                  <li><a href="#">안전거래센터</a></li>
              </ul>
          </div>
          <div class="footer-section">
              <ul>
                  <li><a href="#">입점신청</a></li>
                  <li><a href="#">제휴/광고 문의</a></li>
                  <li><a href="#">POWPOW 신고센터</a></li>
                  <li><a href="#">파트너 개인정보 처리방침</a></li>
                  <li><a href="#">상품권 소개</a></li>
                  <li><a href="#">고객의 소리</a></li>
              </ul>
          </div>
          <div class="footer">
              <div class="footer-section legal">
                  <p>(주)포포 | 공동 제작 류재은 이진아 김태혁 문세연 신민철 이소연 최도윤 | 서울 강남구 테헤란로 146, 3층 4층</p>
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
  </div>
  
</body>
  <script>
     const mainMenus = document.querySelectorAll(".menu-wrap .menu");
    const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
    const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");

    // const noticeBtn = document.querySelector(".notice-btn");
    const reviewBtn = document.querySelector(".review-btn");
    const deliveryBtn = document.querySelector(".delivery-btn");
    const changeBtn = document.querySelector(".change-btn");
    const infoBtn = document.querySelector(".info-btn");
    
    const reiviewWrap = document.querySelector(".container3 .btn2");
    const deliveryWrap = document.querySelector(".container3 .btn3");
    const changeWrap = document.querySelector(".container3 .btn4");
    const infoWrap = document.querySelector(".container3 .btn1");

    let count = 0;
    mainMenus.forEach((menu) => {
  menu.addEventListener("mouseover", () => {
    subMenuUl.forEach((ul) => {
      ul.style.height = "250px";
      ul.style.backgroundColor="white";
    })
  })
  menu.addEventListener("mouseleave", () => {
    subMenuUl.forEach((ul) => {
      ul.style.height = "0";
      ul.style.backgroundColor="none"
    })
  })

})
subMenus.forEach((sub, i) => {
  sub.addEventListener("mouseover", () => {
    let mainIndex = Math.floor(i / 4);
    subMenuUl.forEach((ul) => {
      ul.style.height = "250px";
    })
  })

  sub.addEventListener("mouseleave", () => {
    let mainIndex = Math.floor(i / 4);
    subMenuUl.forEach((ul) => {
      ul.style.height = "0";
    })
  })
})

   // 첫 번째 수량 조절기
   const btnMinus1 = document.querySelector("#result1").previousElementSibling.querySelector(".btn-minus");
    const btnPlus1 = document.querySelector("#result1").nextElementSibling.querySelector(".btn-plus");
    const quantityInput1 = document.getElementById("result1");

    btnMinus1.addEventListener("click", function() {
        let currentValue = parseInt(quantityInput1.value);
        if (currentValue > 1) {
            quantityInput1.value = currentValue - 1;
        }
    });

    btnPlus1.addEventListener("click", function() {
        let currentValue = parseInt(quantityInput1.value);
        quantityInput1.value = currentValue + 1;
    });

    // 두 번째 수량 조절기
    const btnMinus2 = document.querySelector("#result2").previousElementSibling.querySelector(".btn-minus");
    const btnPlus2 = document.querySelector("#result2").nextElementSibling.querySelector(".btn-plus");
    const quantityInput2 = document.getElementById("result2");

    btnMinus2.addEventListener("click", function() {
        let currentValue = parseInt(quantityInput2.value);
        if (currentValue > 1) {
            quantityInput2.value = currentValue - 1;
        }
    });

    btnPlus2.addEventListener("click", function() {
        let currentValue = parseInt(quantityInput2.value);
        quantityInput2.value = currentValue + 1;
    });

    // 컨3
    // 클릭 이벤트
function showInfo(){
  reiviewWrap.style.display = "none";
  deliveryWrap.style.display = "none";
  changeWrap.style.display = "none";
  infoWrap.style.display = "flex";
}

function showReveiw(){
  reiviewWrap.style.display = "flex";
  deliveryWrap.style.display = "none";
  changeWrap.style.display = "none";
  infoWrap.style.display = "none";
}

function showDelivery(){
  reiviewWrap.style.display = "none";
  deliveryWrap.style.display = "flex";
  changeWrap.style.display = "none";
  infoWrap.style.display = "none";
}

function showChange(){
  reiviewWrap.style.display = "none";
  deliveryWrap.style.display = "none";
  changeWrap.style.display = "flex";
  infoWrap.style.display = "none";
}

  </script>
</html>