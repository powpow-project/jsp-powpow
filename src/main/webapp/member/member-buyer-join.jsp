<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-join.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>

<form action="buyer-join-ok.member" method="post">
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
	        <input class="inputbutton" type="email" id="email" name="email" placeholder="아이디(이메일)">
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
	        <input class="inputbutton" type="password" name="password" id="password" placeholder="비밀번호">      
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
          <p id="text">닉네임</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="name" id="name" name="name" placeholder="별명">
          <button class="auth-button" id="name-check">확인</button>
          <p class="result" id="name-result"></p>
        </div>
      </div>

      <div>
        <div class="text-box">
          <p id="text">휴대전화 번호</p>
          <p id="text" class="red">*</p>
        </div>
            <input class="inputbutton" type="string" name="phone" placeholder="">
      </div>


      <div>
      <div>
        <div class="text-box">
          <p id="text">주소</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="text" id="sample6_postcode" placeholder="우편번호">
          <p id="adress-result"></p>
          <input class="inputbutton1" type="text" name="address" id="sample6_address" placeholder="기본주소">
          <input class="inputbutton1" type="text" name="address" id="sample6_detailAddress" placeholder="상세주소">
          <p id="detail-adress-result"></p>
          <button class="auth-button" type="button" onclick="sample6_execDaumPostcode()">우편번호</button>
        </div>
      </div>

      <div class="line"></div>
      </div>
      
      <div>
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
       <p id="agree-result" style="color:red;"></p>
    </div>
     </div>

      
        <button type="submit" class="login-button">회원가입</button>
  </div>
  <script src="../assets/js/jQuery.js"></script>
  <script src="../assets/js/member/member-buyer-join.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  </form>
</body>
</html>