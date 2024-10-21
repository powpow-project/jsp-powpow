<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/find.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
  <div class="find-main">

      <div class="logo-box">
        <a href="http://127.0.0.1:5500/powpow-login/main.html">
          <img id="logo" src="../assets/images/logo.png" alt="로고" />
        </a>
      </div>
        <p class="text">찾고자 하는 계정을 선택해 주세요.</p>

        <div class="raido-box">
          <label for="user_a">
            <input type="radio" name="user" id="user_a" value="A">
              <p class="text1">POWPOW 회원</p>

          </label>
          <label for="user_b">
            <input type="radio" name="user" id="user_b" value="B">
              <p class="text1">POWPOW 판매자</p>
          </label>
        </div>
        <div>
            <button class="next-button">다음</button>
        </div>

  </div>

</body>
<script>
  // 버튼 클릭 시 페이지 전환
  document.querySelector('.next-button').addEventListener('click', () => {
    const selectedUser = document.querySelector('input[name="user"]:checked'); // 선택된 라디오 버튼 찾기
    
    if (selectedUser) {
      // 선택된 값에 따라 페이지 이동
      if (selectedUser.value === 'A') {
        window.location.href = 'http://localhost:9000/powpow/buyer-id-find.jsp'; // POWPOW 회원 페이지
      } else if (selectedUser.value === 'B') {
        window.location.href = 'http://localhost:9000/powpow/seller-id-find.jsp'; // POWPOW 판매자 페이지
      }
    } else {
      alert('계정을 선택해주세요.'); // 아무 것도 선택하지 않았을 경우 경고
    }
  });
</script>
</html>