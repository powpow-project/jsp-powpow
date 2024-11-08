<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 탈퇴</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-delete-ok.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div id="unsubscribe-container">
		<p class="unsubscribe-text h2">회원탈퇴 안내</p>
		<p class="h5">회원탈퇴를 신청 하기 전에 안내 사항을 꼭 확인해주세요.</p>
		<div id="unsubscribe-box">
			<p class="h6 gray400">
				포포 반려동물 용품점 탈퇴안내 <br> 회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고
				미흡했나 봅니다. <br>불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록
				노력하겠습니다.
			</p>
			<br>
			<ol>
				<p>■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.</p>
				<br>
				<li class="gray400">회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 <br>전자상거래
					등에서의 소비자 보호에 관한 법률에 의거한 고객정보 보호 정책에 따라 관리 됩니다.
				</li>
				<li class="gray400">탈퇴 시 회원님께서 보유하셨던 마일리지는 삭제 됩니다.</li>
			</ol>
		</div>
		<a href="./list.myhome"><button class="back">이전으로</button></a>
		<button class="confirm" id="openPopupButton">탈퇴</button>
		<div class="modal" id="deletePop">
			<div class="modal-content">
				<button class="close-button" id="closePopupButton">&times;</button>
				<div>
					<img src="../assets/images/myhome/bin.svg"> 
					<span class="h2">정말 탈퇴하시겠어요?</span> 
					<span class="h4">탈퇴 버튼 선택 시, 계정은<br>삭제되며 복구되지않습니다.</span>
				</div>
				<a href="./delete.myhome"><button class="last-confirm1 h5">탈퇴</button></a>
				<a href="./delete-ok.myhome"><button class="last-confirm2 h5">취소</button></a>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-delete-ok.js"></script>
</html>