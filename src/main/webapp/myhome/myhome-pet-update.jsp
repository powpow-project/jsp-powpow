<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>반려정보 수정</title>
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="stylesheet" href="../assets/css/myhome/myhome-pet-update.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<div class="sub h1">
		<p>반려동물 수정</p>
	</div>
	<a href="./pet-update.myhome?petId=${pet.id}"><button type="button" id="edit-button" onclick="location.href='./pet-list.myhome'">수정완료</button></a>
 
		<div id="mydog">
		<form action="pet-write-ok.myhome" method="post" id="frame" enctype="multipart/form-data">
			<%-- 	<div class="card">
					<img class="star" src="../assets/images/myhome/star.svg"
						data-filled-src="../assets/images/myhome/star-select.svg"
						alt="선택된 동물">
							<div class="profile-pic" id="profilePic">
									<img id="profileImage" src="../assets/images/myhome/${pet.petImage}" alt="Profile Picture">
							</div>
							<div class="name">
									<c:out value="${pet.petName}" />
							</div>
					<div class="button-group">
						<a href="./pet-update.myhome?petId=${pet.id}"><button class="edit-button">편집</button></a>
						<a href="./pet-delete-ok.myhome?petId=${pet.id}"><button class="edit-button">삭제</button></a>
					</div>
				</div> --%>
				<div id="mydog">
			<div class="card">
				<div class="profile-pic" id="profilePic"></div>
				<div class="name"><c:out value="${pet.petName}" /></div>
				<input type="file" id="imageUpload" name="petImage" value="${pet.petImage}"> 
				<label for="imageUpload">
					<h1 id="image-edit-button" class="image-edit-button h6">이미지 편집</h1>
				</label>
			</div>
			<div class="title h5">
				<label for="petName">이름</label>
				<label for="petGender">성별</label> 
				<label for="petBreed">품종</label> 
				<label for="petBirth">생일</label> 
				<label for="petWeight">몸무게(kg)</label> 
				<label for="petNeuter">중성화</label> 
				<label for="petVet">동물병원</label>
			</div>
			<div class="input-wrap">
				<input class="input" id="petName" type="text" name="petName" value="${pet.petName}"> <label class="option"> 
				<input type="radio" name="petGender" value="female">
					<p>여아</p> 
				<input type="radio" name="petGender" value="male">
					<p>남아</p>
				<%-- 	<c:if test="${false petNeuture}"><span>남아</span></c:if>
					<c:if test="${true petNeuture}"><span>여아</span></c:if> --%>
				</label> <input class="input" name="petBreed" type="text" value="${pet.petBreed}">
				<p>
					<input name="petBirth" class="birthday" type="date" value="${pet.petBirth}">
				</p>
				<label class="weight"><input name="petWeight" type="number" value="${pet.petWeight}"></label>
				<label class="option"> <input name="petNeuter" type="radio" value="yes">
					<p>했어요</p> 
				<input type="radio" name="petNeuter" value="no">
					<p>안했어요</p>
				</label>
				<p>
					<input class="input" name="petVet" type="text" value="${pet.petVet}">
				</p>
			</div>
		</div>
	</form>
		</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="../assets/js/myhome/myhome-pet-list.js">
</script>
</html>