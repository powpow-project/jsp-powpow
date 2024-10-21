<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입 완료</title>
  <link rel="stylesheet" href="./css/leave-complete.css">
  <link rel="stylesheet" href="./index.css">
  <link rel="shortcut icon" href="./images/favicon.ico">
</head>
<style>
    
#logo{
  width: 236px;
  height: 60px;
  box-sizing: border-box;
}

.logo-box {
  display: flex;
  align-items: center; /* 수직 정렬 */
  justify-content: center;
  width: 464px;
  padding-bottom: 40px;
}

#check {
  width: 45px;
  height: 45px;
  padding-bottom: 7px;
}

.text{
  font-size: 28px;
  line-height: 40px;
  font-weight: bold;
}

.text1 {
  font-size: 14px;
  line-height: 22px;
  padding-top: 14px;
  padding-bottom: 26px;
}

.next-button {
  width: 142px;
  height: 32px;
  background-color: #FFC303;
  font-size: 14px;
  line-height: 22px;
  font-weight: bold;
  border-style: none;
  border-radius: 20px;
  box-sizing: border-box;
  cursor: pointer;
  
}

.box {
  width: 1280px;
  height: 340px;
  border-top: solid 1px #828282;
  border-bottom: solid 1px #828282 ;
  box-sizing: border-box; 
  padding: 79px 0; /* 위아래에 20px, 좌우는 0 */
  display: flex;
  flex-direction: column;
  align-items: center; 
  justify-content: center;
}


.completion-main{
  width: 1280px;
  display: flex;
  flex-direction: column;
  align-items: center; 
  justify-content: center;
  margin: 0 auto;
  height: 80vh;
}
</style>
<body>

  <div class="completion-main">
    <div class="logo-box">
      <a href="http://127.0.0.1:5500/powpow-login/main.html">
        <img id="logo" src="./images/logo.png" alt="로고" />
      </a>
    </div>

      <div class="box">
        <img  id="check" src="./images/check.svg" alt="체크">
      
        <p class="text">비밀번호 변경이 완료되었습니다</p>
        <p  class="text1">로그인하시면 더욱 다양한 서비스를 제공받으실 수 있습니다</p>
        <button class="next-button">로그인</button>
      </div>

  </div>


</body>
</html>