<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-login.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body> 
<c:if test="${not empty param.login}">
	<%-- ${empty param.login} = false 그래서 not 을 붙여서 true 가 되게.--%>
	<script>
	alert("아이디 또는 비밀번호를 확인해주세요")
	</script>
</c:if>
    <div class="login-main">
      <div class="logo-box">
        <a href="../index.jsp">
          <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
        </a>
      </div>
      <div>
        <div class="tap">
          <button class="member-btn">회원</button>
          <button class="seller-btn">판매자</button>
        </div>
        <div class="main">
          <div class="main-content member">
          <form action="login-ok.member" method="post">
            <div id="idFind" class="input">
            	<div class="input-box">
	              <input class="inputbutton1" type="text" name="buyerEmail" placeholder="회원 아이디(이메일)를 입력해주세요">
	              <p id="id-result"></p>
				</div>
	              <input class="inputbutton" type="password" name="buyerPassword" placeholder="회원 비밀번호를 입력해주세요">
	              <p id="password-result"></p>

            <button class="login-button">로그인</button>
          </div>
          </form>
          
          <div class="box4">
            <div class="box3">
              <div class="savebox">
                <label for="saveEmail">
                  <input type="checkbox" name="saveEmail" id="saveEmail" />
                  <span class="checkmark"></span>
                </label>
                <p class="id-save">아이디 저장</p>
              </div>
              <form action="join-choice.member" method="post">
            	 <button class="forgot" name="action" value="find">아이디 혹은 비밀번호를 잊어버리셨나요?</button>
              </form>
            </div>
          </div>
          <div class="text-box">
            <p class="text">계정이 없으신가요?</p>
            <p class="text1">|</p>
            <form action="join-choice.member" method="post">
           	 <button class="text" name="action" value="join">회원가입</button>
            </form>
          </div>
          <p class="text2">Or continue with</p>
          <div class="simple-login-box">
            <img class="simple-login" src="../assets/images/member/kakao.svg" alt="카카오">
            <img class="simple-login" src="../assets/images/member/naver.svg" alt="네이버">
            <img class="simple-login" src="../assets/images/member/google.svg" alt="구글">
          </div>
        </div>

		
        
          <div class="main-content seller" style="display: none;">
            <div id="idFind" class="input">
          	  <div class="input-box">
	              <input class="inputbutton1" type="id" name="sellerEmail" placeholder="판매자 아이디(이메일)를 입력해주세요">
	              <p id="id-result"></p>
              </div>
              <input class="inputbutton" type="password" name="sellerPassword" placeholder="판매자 비밀번호를 입력해주세요">
              <p id="password-result"></p>
    
            <button type="button" class="login-button">로그인</button>
          </div>
          <div class="box4">
            <div class="box3">
              <div class="savebox">
                <label for="saveEmail2">
                  <input type="checkbox" name="saveEmail" id="saveEmail2" />
                  <span class="checkmark2"></span>
                </label>
                <p class="id-save">아이디 저장</p>
              </div>
              <form action="join-choice.member" method="post">
            	 <button class="forgot" name="action" value="find">아이디 혹은 비밀번호를 잊어버리셨나요?</button>
              </form>
            </div>
          </div>
          <div class="text-box">
            <p class="text">계정이 없으신가요?</p>
            <p class="text1">|</p>
            <form action="join-choice.member" method="post">
           	 <button class="text" name="action" value="join">회원가입</button>
            </form>
          </div>
          </div>
          </div>
          <div class="bottom-box">
            <p class="bottom-text">이용약관</p>
            <p class="bottom-text1">|</p>
            <p class="bottom-text">개인정보처리방침</p>
            <p class="bottom-text1">|</p>
            <p class="bottom-text">책임의 한계와 법적고지</p>
            <p class="bottom-text1">|</p>
            <p class="bottom-text">회원정보 고객센터</p>
          </div>
        </div>
      </div>
   <script src="../assets/js/member/member-login.js"></script>
</body>
</html>