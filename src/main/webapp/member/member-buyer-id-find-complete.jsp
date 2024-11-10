<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/member/member-buyer-id-find-complete.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
  <div class="completion-main">
    <div class="logo-box">
      <a href="../index.jsp">
        <img id="logo" src="../assets/images/member/logo.png" alt="로고" />
      </a>
    </div>
    <div class="box">
      <img  id="check" src="../assets/images/member/complete-check.svg" alt="체크">
    
     <c:forEach var="member" items="${members}">
      <p class="text"><c:out value="${member.memberEmail}" escapeXml="true" /></p>
      <p class="text1"><c:out value="${member.memberName}님 아이디 찾기가 완료되었습니다!" escapeXml="true" /></p>
     </c:forEach>
      <form action="login.member" method="post">
      	<button class="next-button">로그인</button>
      </form>
    </div>
  </div>

</body>
</html>