<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/not-found.css">
  <link rel="stylesheet" href="assets/css/index.css">
  <link rel="icon" href="assets/images/favicon.ico">
  <title>페이지를 찾을 수 없습니다</title>
</head>
<body>
  <div id="frame">
    <div id="content">
      <img class="logo" src="../assets/images/powpow-logo.png" alt="포포로고">
      <img class="not-found" src="../assets/images/not-found.png" alt="노 페이지">
      <button class="home-button" onclick="goToHome();">홈으로 가기</button>
    </div>
  </div>
</body>
<script>
	function goToHome() {
		window.location.href = '../index.jsp';
	}
</script>
</html>