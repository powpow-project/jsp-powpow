<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 비밀번호 변경</title>
<link rel="stylesheet"
	href="../assets/css/myhome/myhome-password-update.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
			<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div id="sub">
		<div class="main-sub h1">나의 정보</div>
		<span class="sub-sub"> <a href="./list.myhome" class="h4">프로필</a>
			<p>|</p> <a href="./likes-list.myhome" class="h4">좋아요</a>
			<p>|</p> <a href="./notification.myhome" class="h4">알림설정</a>
			<p>|</p> <a href="./password-update.myhome"
			class="current-category h4">비밀번호 변경</a>
		</span>
	</div>

	<div id="password-wrap">
		<form id="password-update-form" action="./password-update-ok.myhome">
			<div class="current-password">
				<p class="password-edit h6">
					현재 비밀번호<span class="sub-red">*</span>
				</p>
				<input type="password" placeholder="사용 중인 비밀번호를 입력해주세요" />
			</div>
			<div class="new-password">
				<p class="password-edit h6">
					새로운 비밀번호<span class="sub-red">*</span>
				</p>
				<input type="password" name="newPassword" placeholder="새로운 비밀번호를 입력해주세요" />
				<p class="h6 gray500">*영문, 숫자와 특수문자를 포함해 8자 이상으로 만들어주세요.</p>
			</div>
			<div class="check-password">
				<p class="password-edit h6">
					새로운 비밀번호 확인<span class="sub-red">*</span>
				</p>
				<input type="password" placeholder="다시 새로운 비밀번호를 입력해주세요" />
			</div>
		</form>
		<a>
			<button class="h6 submit-button">완료</button>
		</a>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-password-update.js">
</script>
</html>