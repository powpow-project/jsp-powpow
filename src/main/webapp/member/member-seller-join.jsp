<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-seller-join.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
<form action="seller-join-ok.member" method="post">
<div class="saller-main">
    <div class="logo-box">
      <a href="../index.jsp">
        <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
      </a>
    </div>
    
    <div class="input">
      <div>
        <div class="text-box">
          <p id="text">아이디</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="email" name="sellerEmail" id="email" placeholder="아이디(이메일)">
          <button class="auth-button" id="email-check">확인</button>
          <p class="result" id="email-result"></p>
        </div>
      </div>
      
      <div>
        <div class="text-box">
          <p id="text">비밀번호</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="password" name="sellerPassword" placeholder="비밀번호">
          <div class="mark"></div>
          <p class="result" id="password-result"></p>
        </div>
      </div>

      <div>
        <div class="text-box">
          <p id="text">비밀번호 확인</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
         <input class="inputbutton" type="password" name="passwordConfirm" id="passwordConfirm" placeholder="비밀번호 확인">
        <p class="result" id="passwordConfirm-result"></p>
        </div>
      </div>
      <div>
        <div class="text-box">
          <p id="text">이름</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="name" placeholder="이름">
        <p id="name-result"></p>
      </div>
      <div>
        <div class="text-box">
          <p id="text">휴대전화 번호</p>
          <p id="text" class="red">*</p>
        </div>
            <input class="inputbutton" type="string" name="phone" placeholder="">
      </div>
      <div class="line"></div>
      <div>
        <div class="text-box">
          <p id="text">사업자 인증번호</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="number" name="number" id="number" placeholder="'-'없이 입력">
          <button class="auth-button">인증</button>
          <p class="result" id="number-result"></p>
        </div>
      </div>
      <div>
        <div class="text-box">
          <p id="text">대표자명</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="kingname">
        <p id="kingname-result"></p>
      </div>
      <div>
        <div class="text-box">
          <p id="text">업체명</p>
          <p id="text" class="red">*</p>
        </div>
        <input class="inputbutton" type="text" name="companyname">
        <p id="companyname-result"></p>
      </div>
      <div class="line"></div>
      </div>

      <div class="text-box1">
        <p id="text1">약관 및 개인정보수집 동의</p>
        <p id="text1" class="red">*</p>
      </div>

      <div class="agree-box">
             <input type="hidden" name="sms" value="1" />
            <input type="hidden" name="emailcheck" value="1" />

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
        <button type="button" class="login-button">회원가입</button>
  </div>
  <script src="../assets/js/jQuery.js"></script>
  <script src="../assets/js/member/member-seller-join.js"></script>
</form>
</body>

</html>