<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/buyer-phone.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
   <div class="phone-main">
	<div class="input">
      <div class="logo-box">
        <a href="../index.jsp">
          <img id="logo" src="../assets/images/login/logo.png" alt="로고" />
        </a>
      </div>
      
       <div>

          <p id="text">휴대폰 번호로<br>본인확인을 진행해주세요!</p>

        <div class="input-container">
            <input class="inputbutton" type="number" name="phone" placeholder="휴대폰 번호 입력 ('-'제외 11자리 입력)">
            <button class="auth-button" id="request-auth">인증요청</button>
        </div>
        <div class="auth-number-container" id="authNumberContainer">
          <div class="input-container">
          <input class="inputbutton" type="number" name="authNumber" placeholder="인증번호 6자리 입력">
          <button class="auth-button confirm-button">확인</button>
           <p id="phone-result"></p>
            </div>
   		</div>
      </div>
     </div>
      
      <button class="login-button">다음</button>
	</div>
  <script src="../jQuery.js"></script>
  <script src="../assets/js/login/buyer-phone.js"></script>
</body>
</html>