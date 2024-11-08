<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 반려종류</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-pet-kind.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="pet-kind">
		<p class="h4">
			<img src="../assets/images/myhome/check.svg" alt="체크아이콘" />프로필에 추가할
			동물을 선택해주세요.
		</p>
		<div class="choose-pet-kind">
			<a rel="stylesheet" href="./pet-write-dog.myhome"><img
				src="../assets/images/myhome/mypage-dog.svg" alt="dog"></a> <a
				rel="stylesheet" href="./pet-write-cat.myhome"><img
				src="../assets/images/myhome/mypage-cat.svg" alt="cat"></a> <a
				rel="stylesheet" href="./pet-write-bird.myhome"><img
				src="../assets/images/myhome/mypage-bird.svg" alt="bird"></a> <a
				rel="stylesheet" href="./pet-write-fish.myhome"><img
				src="../assets/images/myhome/mypage-fish.svg" alt="fish"></a>
		</div>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-pet-kind.js">
</script>
</html>