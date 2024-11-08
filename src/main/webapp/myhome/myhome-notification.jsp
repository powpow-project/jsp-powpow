<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 알림설정</title>
<link rel="stylesheet"
	href="../assets/css/myhome/myhome-notification.css">
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
			<p>|</p> <a href="./notification.myhome" class="current-category h4">알림설정</a>
			<p>|</p> <a href="./password-update.myhome" class="h4">비밀번호 변경</a>
		</span>
	</div>
	<div id="notification">
		<span class="not1">이벤트 및 혜택 알림</span> <span class="not2">특가, 쿠폰
			등 이벤트 정보를 빠르게 알려드릴게요</span>
		<div class="alarm-agree">
			<div class="toggle">
				<ul class="set-alarm">
					<li>
						<p>이메일 알림</p> 
						<input type="checkbox" id="toggle-checkbox1">
						<label for="toggle-checkbox1" class="toggle-label1"></label>
					</li>
					<li>
						<p>SMS 알림</p> <input type="checkbox" id="toggle-checkbox2">
						<label for="toggle-checkbox2" class="toggle-label2"></label>
					</li>
				</ul>
			</div>
		</div>
		<span class="agree-marketing">*알림 수신 동의와 함께 개인정보 마케팅 활용에 동의하시게
			됩니다.</span>
	</div>
		<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-notification.js">
</script>
<script type="text/javascript">

	const emailToggle = document.querySelector(".toggle-label1");
	const smsToggle = document.querySelector(".toggle-label2");
	const emailToggleInput = document.querySelector("#toggle-checkbox1");
	const smsToggleInput = document.querySelector("#toggle-checkbox2");
	 
	const notificationEmail = `${emailCheck}`;
	const notificationSms = `${smsCheck}`;
	console.log(notificationEmail)
	console.log(notificationSms)
	
	emailToggleInput.checked = Number(notificationEmail) ? true : false;
	smsToggleInput.checked = Number(notificationSms) ? true : false;
	
	emailToggle.addEventListener("click", () => {
		window.location.href = './notification-email-ok.myhome';
	})
	
	smsToggle.addEventListener("click", () => {
		window.location.href = './notification-sms-ok.myhome';
	})
	

</script>
</html>