<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 추가된 반려동물 없음</title>
<link rel="stylesheet" href="../assets/css/myhome/myhome-no-pet.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
			<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div id="sub">
		<div class="main-sub h1">반려동물</div>
	</div>

	<div id="no-pet-wrapper">
		<p class="no-pet h4">반려동물이 없습니다.</p>
		<p class="no-pet h4">프로필을 등록해주세요.</p>
		<a rel="stylesheet" href="./pet-kind.myhome"><button class="h5">등록하기</button></a>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-no-pet.js">
</script>
</html>