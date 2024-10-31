<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-join.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>

<div class="join-main">
      <div class="logo-box">
        <a href="../index.jsp">
          <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
        </a>
      </div>
      
        <p class="text">가입하려는 계정을 선택해 주세요.</p>

        <div class="raido-box">
          <label for="user_a">
            <input type="radio" name="user" id="user_a" value="A" required>
              <p class="text1">POWPOW 회원</p>

          </label>
          <label for="user_b">
            <input type="radio" name="user" id="user_b" value="B" required>
              <p class="text1">POWPOW 판매자</p>
          </label>
        </div>
        <button class="next-button">다음</button>
  </div>
 
<script src="../assets/js/member/member-join.js"></script>
</body>
</html>