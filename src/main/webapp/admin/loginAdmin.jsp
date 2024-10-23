<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/admin/loginAdmin.css">
<link rel="stylesheet" href="../assets/css/index.css">
<link rel="icon" href="../assets/images/favicon.ico">
<title>관리자어드민 로그인</title>

</head>
<body>
	<form action="loginAdmin-ok.admin" method="post" id="container">
		<img class="image" src="../assets/images/admin/powpow-logo.png" alt="powpow로고" />
		<div id="admin">관리자</div>

		<input type="text" name="adminEmail" placeholder="관리자 계정을 입력해주세요." required />
		<input type="password" name="adminPassword" placeholder="비밀번호를 입력해주세요."
			required />

		<button type="submit" id="button">로그인</button>
		<p>Or continue with</p>
		<p class="links">
			<a href="#">이용약관</a> | <a href="#">개인정보처리방침</a> | <a href="#">책임의
				한계와 법적고지</a> | <a href="#">회원정보 고객센터</a>
		</p>
	</form>
</body>
<script src="../assets/js/admin/loginAdmin.js">
</script>
</html>