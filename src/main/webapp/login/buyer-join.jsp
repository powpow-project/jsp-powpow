<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/buyer-join.css"/>
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
          <p id="text">닉네임</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="email" name="email" placeholder="별명">
          <button class="auth-button">확인</button>
        </div>
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


      <div>
        <div class="text-box">
          <p id="text">주소</p>
          <p id="text" class="red">*</p>
        </div>
        <div class="input-container">
          <input class="inputbutton" type="number" name="number" placeholder="우편번호">
          <input class="inputbutton1" type="text" name="name" placeholder="기본주소">
          <input class="inputbutton1" type="text" name="name" placeholder="상세주소">
          <button class="auth-button">우편번호</button>
        </div>
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
      <a href="http://localhost:9000/powpow/buyer-join-complete.jsp">
        <button class="login-button">회원가입</button>
      </a>
  </div>
</body>
<script src="../jQuery.js"></script>
<script>
	const mark = document.querySelector(".mark");
	mark.addEventListener("click", () => {
		const input = document.querySelector("input[name='password']");
		const inputConfirm = document.querySelector("input[name='passwordConfirm']");
		
		if(input.type === "password"){
			input.setAttribute("type", "text");
			inputConfirm.setAttribute("type", "text");
			mark.style.backgroundImage = "url('../assets/images/login/eye-on.svg')";
		}else{
			input.setAttribute("type", "password");
			inputConfirm.setAttribute("type", "password");
			mark.style.backgroundImage = "url('../assets/images/login/eye-off.svg')";
		}
	})

    // 전체동의 로직 만들기
    NodeList.prototype.map = Array.prototype.map;

    const allagree = document.querySelector(".allagree")
    const agree1s = document.querySelectorAll(".agree1")


    $(".allagree").on("click", (e) => {
      $(".agree1").prop("checked", e.target.checked);
    })

    $(".agree1").on("click", (e) => {
      $(".allagree").prop("checked", $(".agree1").filter(":checked").length === 4);
    })

</script>
</html>