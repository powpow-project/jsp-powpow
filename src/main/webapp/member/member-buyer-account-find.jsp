<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-account-find.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>

 <div  class="find-main">
    <div class="logo-box">
      <a href="../index.jsp">
        <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
      </a>
    </div>
    <div>
      <div class="tap">
        <button class="id-btn">아이디 찾기</button>
        <button class="password-btn">비밀번호 찾기</button>
      </div>
	<form id="authentication-form" action="buyer-id-find-complete.member" method="post">
		<div class="main-content id" class="id">
          <div class="input">
            <div>
              <p>이름</p>
              <input class="inputbutton" type="text" name="name" placeholder="이름">
            </div>
			<div>
			    <p>휴대폰 번호</p>
				<input class="inputbutton" type="text" name="phone" placeholder="전화번호">
			</div>
          </div>
		      <button class="next-button">다음</button>
        </div>
	</form>

        <div class="main-content password" style="display: none;" class="password">
           <div class="input">
          	<div>
             <p>아이디</p>
             <input class="inputbutton" type="text" name="id" placeholder="아이디(이메일)">
           </div>
          </div>

          <p class="text2">비밀번호를 찾을 방법을 선택해 주세요!</p>

          <div class="raido-box">
            <label for="user_a">
              <input type="radio" name="user" id="user_a" value="A">
                <p class="text1">등록된 이메일</p>
  
            </label>
            <label for="user_b">
              <input type="radio" name="user" id="user_b" value="B">
                <p class="text1">등록된 휴대폰</p>
            </label>
          </div>
            <button class="next-button1">다음</button>
        </div>

      </div>
  </div>

  <script src="../assets/js/member/member-buyer-account-find.js"></script>
</body>
</html>