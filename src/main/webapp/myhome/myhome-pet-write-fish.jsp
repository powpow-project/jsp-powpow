<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이홈 반려어추가</title>
<link rel="stylesheet"
	href="../assets/css/myhome/myhome-pet-write-fish.css">
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<style type="text/css">
#profilePic {
	background-image: url('../assets/images/myhome/default-fish.svg');
}
</style>
<body>
			<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	<form action="pet-write-ok.myhome?petKind=fish" method="post"
		id="frame" enctype="multipart/form-data">
		<button id="submit-button" type="button">완료</button>
		<div id="mydog">
			<div class="card">
				<div class="profile-pic" id="profilePic"></div>
				<div class="name">이름</div>
				<input type="file" id="imageUpload" name="petImage"> <label
					for="imageUpload">
					<h1 id="edit-button" class="edit-button h6">이미지 편집</h1>
				</label>
			</div>
			<div class="title h5">
				<span class="pre-title">기본사항*</span> <label for="petName">이름</label>
				<label for="petBreed">품종</label> <label for="petBirth">생일</label> 
				<label for="petWeight">몸무게(kg)</label> 
				<label for="petVet">동물병원</label> 
				<label for="petGender">성별</label>
			</div>
			<div class="input-wrap">
				<input class="input" id="petName" type="text" name="petName"
					placeholder="도리">
				<p>
					<input class="input" name="petBreed" type="text"
						placeholder="예) 금붕어">
				</p>
				<p>
					<input name="petBirth" class="birthday" type="date">
				</p>
				<label class="weight"> <input name="petWeight" type="number">
				</label>
				<p>
					<input class="input" name="petVet" type="text" placeholder="병원명">
				</p>
				<label class="gender"> 
					<input type="radio" name="petGender" value="female">
						<p>여아</p> 
					<input type="radio" name="petGender" value="male">
						<p>남아</p>
				</label>
			</div>
		</div>
		<p class="message h7">*아래 내용을 사실과 다르게 기재한 경우, 약관에 따라 서비스 이용이 거부될 수
			있습니다.</p>
	</form>
			<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-pet-write-fish.js">
	
</script>
</html>