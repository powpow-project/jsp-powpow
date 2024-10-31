<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-join-complete.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
<div class="completion-main">
    <div class="logo-box">
      <a href="../index.jsp">
        <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
      </a>
    </div>
    <div class="box">
      <img  id="check" src="../assets/images/member/complete-check.svg" alt="체크">
    
      <p class="text">POWPOW 회원가입이 완료되었습니다.</p>
      <p  class="text1">로그인하시면 더욱 다양한 서비스를 제공받으실 수 있습니다.</p>
      <form action="login.member" method="post">
      	<button class="next-button">로그인</button>
      </form>
    </div>
  </div>
</body>
</html>