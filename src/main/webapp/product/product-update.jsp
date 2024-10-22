<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/product/product-write.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>상품관리</title>
</head>
<body>
	<form action="product-update-ok.product" method="post" id="frame">
		<div class="menu-wrap">
			<img src="../assets/images/product/menu.png" alt="메뉴"> <span class="h4">상품관리</span>
		</div>
		<div class="division-line"></div>

		<div class="title">
			<h1 class="h1">상품 수정</h1>
		</div>

		<div id="product-insert">
			<h3 class="title h3">상품 정보 수정</h3>
			<div class="info-wrap">
			<input type="hidden" name="id" value="${param.id}"/>
				<div class="list-wrap">
					<p class="h6">상품명</p>
					<input type="text" name="productName" value="${param.productName}" />
				</div>
				<div class="list-wrap">
					<p class="h6">상품가격</p>
					<input type="text" name="productPrice" placeholder="원(원)" value="${param.productPrice}"/>
				</div>
				<div class="list-wrap">
					<p class="h6">상품재고</p>
					<input type="text" name="productStock" placeholder="개" value="${param.productStock}"/>
				</div>
				<div class="list-wrap">
					<p class="h6">분류</p>
					<select name="productType">
						<option value="사료/간식">사료/간식</option>
						<option value="배변용품">배변용품</option>
						<option value="장난감">장난감</option>
						<option value="미용/목욕 ">미용/목욕</option>
					</select>
				</div>
				<div class="list-wrap">
					<p class="h6">상품간략설명</p>
					<textarea 
					type="text" 
					name="productExplain" 
					class="description"
					placeholder="내용을 설명해주세요."
					value="${param.productDetail}"
					 ></textarea>
				</div>
			</div>
			<div class="line">
				<hr />
			</div>
			<div class="shipping-wrap">
				<h3 class="title h3">배송정보 수정</h3>
				<div class="list-wrap">
					<p class="h6">배송비 종류</p>
					<div class="radio-wrap">
						<div class="radio">
							<input type="radio" name="shipping-pay" value="무료" /><span
								class="h6">무료</span>
						</div>
						<div class="radio">
							<input type="radio" name="shipping-pay" value="유료" /><span
								class="h6">유료</span>
						</div>
						<div class="radio">
							<input type="radio" name="shipping-pay" value="조건부 무료" checked /><span
								class="h6">조건부 무료</span>
						</div>
					</div>
				</div>
				<div class="list-wrap">
					<p class="h6">배송비 금액</p>
					<input type="text" placeholder="원(원)" />
				</div>
				<div class="list-wrap">
					<p class="h6">무료배송 금액</p>
					<input type="text" placeholder="원 이상 구매시 무료" />
				</div>
				<div class="list-wrap">
					<p class="h6">배송사 선택</p>
					<div class="radio-wrap">
						<div class="radio">
							<input type="radio" name="shipping-company" checked /><span
								class="h6">일반택배배송</span>
						</div>
						<div class="radio">
							<input type="radio" name="shipping-company" /><span class="h6">자체배송</span>
						</div>
					</div>
				</div>
				<div class="list-wrap">
					<p class="h6">착불 여부 선택</p>
					<div class="radio-wrap">
						<div class="radio">
							<input type="radio" name="shipping-paylater" checked /><span
								class="h6">선결제</span>
						</div>
						<div class="radio">
							<input type="radio" name="shipping-paylater" /><span class="h6">착불</span>
						</div>
					</div>
				</div>
				<div class="list-wrap">
					<p class="h6">택배사 선택</p>
					<div class="shipping">
						<select name="shipping">
							<option value="우체국 택배">우체국 택배</option>
							<option value="CJ 택배">CJ 택배</option>
							<option value="롯데 택배">롯데 택배</option>
							<option value="POW 택배">POW 택배</option>
							<option value="재은 택배">재은 택배</option>
						</select>
						<h6 class="explain h7">
							* 판매자가 직접 발송하는 일반택배 택배사를 선택하시면 됩니다.<br /> *’자체배송’ 선택시, 구매자에게는
							배송비 ‘무료’로 안내됩니다.<br /> ‘자체배송’ 설정 후 구매자에게 별도로 배송비를 요구하는 행위는 자제
							부탁드립니다.
						</h6>
					</div>
				</div>
			</div>
			<div class="line">
				<hr />
			</div>
			<div class="image-wrap">
				<h3 class="title h3">이미지 정보 수정</h3>
				<div class="image-content">
					<div class="main">
						<p class="h6">메인 이미지</p>
						<label for="main">
							<div class="main-image">
								<img src="../assets/images/product/plus.png" alt="#" />
							</div>
						</label> <input type="file" id="main" style="display: none" name="main" />
						<h6 class="h7">*등록 이미지 5M 이하/ jpg, png, git</h6>
					</div>
					<div class="sub-wrap">
						<div class="sub">
							<p class="h6">서브이미지1</p>
							<label for="sub1">
								<div class="sub-image">
									<img src="../assets/images/product/plus.png" alt="#" />
								</div>
							</label> <input type="file" id="sub1" style="display: none" name="sub" />
						</div>
						<div class="sub">
							<p class="h6">서브이미지2</p>
							<label for="sub2">
								<div class="sub-image">
									<img src="../assets/images/product/plus.png" alt="#" />
								</div>
							</label> <input type="file" id="sub2" style="display: none" name="sub" />
						</div>
						<div class="sub">
							<p class="h6">서브이미지3</p>
							<label for="sub3">
								<div class="sub-image">
									<img src="../assets/images/product/plus.png" alt="#" />
								</div>
							</label> <input type="file" id="sub3" style="display: none" name="sub" />
						</div>
					</div>
				</div>
			</div>
			<div class="button-wrap">
				<button class="register-btn h6" >수정완료</button>
				<button type="button" class="cancel-btn h6" onclick="goToList();">취소</button>
			</div>
		</div>
		</div>
	</form>
</body>
<script>
	function goToList() {
		window.location.href = "product-list.jsp"
	}
</script>
</html>