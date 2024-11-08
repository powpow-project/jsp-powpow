<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 좋아요</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-likes.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
<!-- 헤더 -->
<jsp:include page="../header.jsp"></jsp:include>
	<div id="sub">
		<div class="main-sub h1">나의 정보</div>
		<span class="sub-sub"> <a href="./list.myhome" class="h4">프로필</a>
			<p>|</p> <a href="./likes-list.myhome" class="current-category h4">좋아요</a>
			<p>|</p> <a href="./notification.myhome" class="h4">알림설정</a>
			<p>|</p> <a href="./password-update.myhome" class="h4">비밀번호 변경</a>
		</span>
	</div>
	<div id="likes">
		<div class="likes-shopping h4">
			<span>쇼핑</span>
			<div class="likesimage">
				<a href="#"><img src="../assets/images/myhome/shoppinglike1.png"
					alt="쇼핑좋아요"></a> <a href="#"><img
					src="../assets/images/myhome/shoppinglike2.png" alt="쇼핑좋아요"></a>
				<a href="#"><img src="../assets/images/myhome/shoppinglike3.png"
					alt="쇼핑좋아요"></a> <a href="#"><img
					src="../assets/images/myhome/shoppinglike4.png" alt="쇼핑좋아요"></a>
			</div>
		</div>
		<div class="likes-community h4">
			<span>커뮤니티</span>
			<div class="likesimage">
				<a href="#"><img
					src="../assets/images/myhome/communitylike1.png" alt="커뮤좋아요"></a>
				<a href="#"><img
					src="../assets/images/myhome/communitylike2.png" alt="커뮤좋아요"></a>
				<a href="#"><img
					src="../assets/images/myhome/communitylike3.png" alt="커뮤좋아요"></a>
				<a href="#"><img
					src="../assets/images/myhome/communitylike4.png" alt="커뮤좋아요"></a>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-likes.js">
</script>
</html>