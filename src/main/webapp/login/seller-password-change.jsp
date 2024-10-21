<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/seller-password-change.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>

<div class="change-passwrod-main">
        <!-- 로고 누르면 메인으로 이동 -->
        <div class="logo-box">
          <a href="http://127.0.0.1:5500/powpow-login/main.html">
            <img id="logo" src="../assets/images/login/logo.png" alt="로고" />
          </a>
        </div>
        <p class="new">새로운 비밀번호를 설정해주세요.</p>
        <div class="input">
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
        </div>
        <a href="http://localhost:9000/powpow/login/password-change-complete.jsp">
          <button class="login-button">확인</button>
        </a>
      </div>
        <img alt="" src="../assets/images/login/eye-on.svg">
 		<img alt="" src="../assets/images/login/eye-off.svg">
  
</body>

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

</script>
</html>




