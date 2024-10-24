<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/seller-join.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
<div class="saller-main">
    <div class="logo-box">
      <a href="http://127.0.0.1:5500/powpow-login/main.html">
        <img id="logo" src="../assets/images/login/logo.png" alt="로고" />
      </a>
    </div>
    <div class="input">
      <div>
        <div class="text-box">
          <p id="text">아이디</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="email" name="email" placeholder="아이디(이메일)">
          <button class="auth-button">확인</button>
        </div>
      </div>
      <div>
        <div class="text-box">
          <p id="text">비밀번호</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="password" name="password" placeholder="비밀번호">
          <div class="mark"></div>
        </div>
      </div>

      <div>
        <div class="text-box">
          <p id="text">비밀번호 확인</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
         <input class="inputbutton" type="password" name="passwordConfirm" placeholder="비밀번호 확인">
        </div>
      </div>
      <div>
        <div class="text-box">
          <p id="text">이름</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="name" placeholder="이름">
      </div>
      <div>
        <div class="text-box">
          <p id="text">휴대전화 번호</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="number" name="phone" placeholder="휴대폰 번호 입력 ('-'제외 11자리 입력)">
          <button class="auth-button">인증</button>
        </div>
      </div>
      <div class="line"></div>
      <div>
        <div class="text-box">
          <p id="text">사업자 인증번호</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="number" name="number" placeholder="'-'없이 입력">
          <button class="auth-button">인증</button>
        </div>
      </div>
      <div>
        <div class="text-box">
          <p id="text">대표자명</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="name">
      </div>
      <div>
        <div class="text-box">
          <p id="text">업체명</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="companyname">
      </div>
      <div class="line"></div>
      </div>

      <div class="text-box1">
        <p id="text1">약관 및 개인정보수집 동의</p>
        <p id="text1" class="red">*</p>
      </div>

      <div class="agree-box">

        <div class="agreeAll">
          <label>
            <input type="checkbox" name="allagree" class="allagree" />
            <span class="checkmark"></span>
          </label>
          <p class="text2">모두 동의합니다.</p>
        </div>

        <div class="line2"></div>

        <div class="agree">
          <label>
            <input type="checkbox" name="agree1" class="agree1" />
            <span class="checkmark"></span>
          </label>
          <div class="text-box2">
            <p class="text3">이용약관 동의 (필수)</p>
            <p class="text4">자세히보기</p>
          </div>
        </div>

        
        <div class="agree">
          <label>
            <input type="checkbox" name="agree2" class="agree1" />
            <span class="checkmark"></span>
          </label>
          <div class="text-box2">
            <p class="text3">이용약관 동의 (필수)</p>
            <p class="text4">자세히보기</p>
          </div>
        </div>

        
        <div class="agree">
          <label>
            <input type="checkbox" name="agree3" class="agree1" />
            <span class="checkmark"></span>
          </label>
          <div class="text-box2">
            <p class="text3">이용약관 동의 (필수)</p>
            <p class="text4">자세히보기</p>
          </div>
        </div>

        
        <div class="agree2">
          <label>
            <input type="checkbox" name="agree4" class="agree1" />
            <span class="checkmark"></span>
          </label>
          <div class="text-box2">
            <p class="text3">이용약관 동의 (필수)</p>
            <p class="text4">자세히보기</p>
          </div>
        </div>


      </div>
      <a href="http://localhost:9000/powpow/seller-join-complete.jsp">
        <button class="login-button">회원가입</button>
      </a>
  </div>
  <script src="../jQuery.js"></script>
  <script src="../assets/js/login/seller-join.js"></script>
</body>

</html>