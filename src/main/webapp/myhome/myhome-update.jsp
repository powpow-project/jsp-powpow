<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이홈 프로필 수정</title>
<link rel="stylesheet" href="../assets/css/main/main-index.css">
<link rel="stylesheet" href="../assets/css/myhome/myhome-update.css">
<link rel="shortcut icon" href="../assets/images/favicon.ico">
</head>
<style type="text/css">
/* #profilePic {
	background-image: url('../assets/images/member/none_profile.png');
} */
</style>
<body>
		<!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="sub">
		<div class="main-sub h1">나의 정보</div>
		<span class="sub-sub"> 
		<a href="./list.myhome" class="current-category h4">프로필</a>
			<p>|</p> <a href="./likes-list.myhome" class="h4">좋아요</a>
			<p>|</p> <a href="./notification.myhome" class="h4">알림설정</a>
			<p>|</p> <a href="./password-update.myhome" class="h4">비밀번호 변경</a>
		</span>
	</div>
	<div id="page-content">
		<button type="button" class="complete">완료</button>
		<form action="./update-ok.myhome" method="post" enctype="multipart/form-data" id="frame">
			<div id="profile-edit">
				<div class="profile-box">
				<div class="profile-pic default-profile-image" id="profilePic">
					<img id="profileImage" name="profile" src="../assets/images/member/${member.memberImage}">
				</div>
					<%-- <img class="default-profile-image"
						src="../assets/images/member/${member.memberImage}" alt="프로필 사진"> --%>
					<span class="id">
					<c:out value="${member.memberNickname}" /></span>
					<br>
					<hr>
					<br>
					<div class="imageupload-button">
						<button type="button" id="uploadButton">이미지 편집</button>
						<input type="file" id="fileInput" name="profile" style="display: none;" accept="images/*">
					</div>
				</div>
				<div class="edit-info">
					<div>
					<div>
						<label class="edit-category0">이름</label> 
						<input name="name" value="${member.memberName}" class="edit-member" type="text"/>
					</div>
					</div>
					<div>
						<label class="edit-category1">닉네임</label> 
						<input 
							name="nickname"
							value="${member.memberNickname}"
							class="edit-member" type="text"
						/>
					</div>
					<div>
						<label class="edit-category2">아이디 (이메일)</label>
						<span class="email"><c:out value="${member.memberEmail}"></c:out></span>
					</div>
					<div>
						<label class="edit-category3">휴대폰번호</label> 
						<input
							name="phone"
							value="${member.memberPhone}"
							class="edit-member" type="text"
						/>
					</div>
					<div class="group-category4">
						<label class="edit-category4">주소</label>
						<div class="input-container">
							<input class="inputbutton" type="text" name="address" id="sample6_postcode" placeholder="우편번호"/>
							<p id="adress-result"></p>
							<input class="inputbutton" type="text" name="address" id="sample6_address" placeholder="기본주소" value="${member.memberAddress}"/>
							<input class="inputbutton" type="text" name="address" id="sample6_detailAddress" placeholder="상세주소"> 
							<p id="detail-adress-result"></p>
							<button class="auth-button" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">우편번호</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	
	
<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../assets/js/myhome/myhome-update.js"></script>
</html>