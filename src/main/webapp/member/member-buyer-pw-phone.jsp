<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-pw-phone.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>

<div class="change-passwrod-main">
        <!-- 로고 누르면 메인으로 이동 -->
        <div class="logo-box">
          <a href="../index.jsp">
            <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
          </a>
        </div>

        <div class="input">
        <div class="box2">
          <div class="box1">
            <img id="check" src="../assets/images/member/smallcheck.svg" alt="">
            <p class="text">계정에 등록된 휴대폰 번호로 인증번호를 발송하였습니다.</p>
          </div>
          <div class="box1">
            <img id="check" src="../assets/images/member/smallcheck.svg" alt="">
            <p class="text">휴대폰으로 전송된 인증번호와 새 비밀번호를 입력해주세요.</p>
          </div>
		</div>
           <div>
            <div class="text-box">
              <p id="text">인증번호</p>
            </div>
              <input class="inputbutton" type="text" name="confirm" placeholder="인증번호">
          </div>       
          
          <div>
            <div class="text-box">
              <p id="text">새로운 비밀번호</p>
            </div>
            <div class="input-container">
              <input class="inputbutton" type="password" name="password" placeholder="새로운 비밀번호">
              <div class="mark"></div>
            <div class="input-container">
              <input class="inputbutton1" type="password" name="passwordConfirm" placeholder="새로운 비밀번호 확인">
            </div>
          </div>
        </div>
        <a href="http://localhost:9000/powpow/login/password-change-complete.jsp">
          <button class="login-button">확인</button>
        </a>
      </div>
  <script src="../assets/js/jQuery.js"></script>
  <script src="../assets/js/member/member-buyer-pw-phone.js"></script>
</body>
</html>




