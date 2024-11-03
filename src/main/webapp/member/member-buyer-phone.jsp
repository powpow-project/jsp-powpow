<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-phone.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
   <div class="phone-main">
	<div class="input">
      <div class="logo-box">
        <a href="../index.jsp">
          <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
        </a>
      </div>
      
       <div>

          <p id="text">휴대폰 번호로<br>본인확인을 진행해주세요!</p>

        <div class="input-container">
           <form action="buyer-phone.member?sms=true">
               <input type="hidden" name="sms" value="true">
               <c:if test="${param.sms}"><input class="inputbutton" type="number" name="phone" value="${param.phone}" placeholder="휴대폰 번호 입력 ('-'제외 11자리 입력)"></c:if>
               <c:if test="${!param.sms}"><input class="inputbutton" type="number" name="phone" placeholder="휴대폰 번호 입력 ('-'제외 11자리 입력)"></c:if>
               <button type="button" class="auth-button" id="request-auth">인증요청</button>
           </form>
        </div>
        <div class="auth-number-container" id="authNumberContainer">
          <div class="input-container">
          <input class="inputbutton" type="text" name="authNumber" placeholder="인증번호 6자리 입력">
          <button class="auth-button confirm-button">확인</button>
             <script>
                globalThis.isAuthentication = false;
                const confirmSubmitButton = document.querySelector(".confirm-button");
                const authenticationInput = document.querySelector("input[name='authNumber']");
                let authenticationCode = `${code}`;
                console.log(authenticationCode)
                
                confirmSubmitButton.addEventListener("click", () => {
                   if(!(authenticationInput.value == authenticationCode)){
                      globalThis.isAuthentication = false;
                      return alert("인증번호를 확인해주세요.")
                   }else{
                      globalThis.isAuthentication = true;
                      confirmSubmitButton.style.display = "none";
                      console.log(globalThis.isAuthentication)
                      return alert("인증이 확인되었습니다.")
                   }
                })
             </script>       
           <p id="phone-result"></p>
            </div>
   		</div>
      </div>
     </div>
     <form id="authentication-form" action="buyer-join.member" method="post">
      <input type="hidden" name="phone" value="${param.phone}">
      <button type="button" class="login-button">다음</button>
    </form>
	</div>
  <script src="../assets/js/jQuery.js"></script>
  <script src="../assets/js/member/member-buyer-phone.js"></script>
</body>
</html>