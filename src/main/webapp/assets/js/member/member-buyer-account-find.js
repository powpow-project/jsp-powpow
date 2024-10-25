/*회원 판패자 페이지 구분*/
const idBtn = document.querySelector(".id-btn");
const passwordBtn = document.querySelector(".password-btn");
const main = document.querySelectorAll(".main-content");

// 초기 활성화 상태 설정
idBtn.classList.add("active");

idBtn.addEventListener("click", () => {
    main[0].style.display = "block"; // 아이디 관련 내용 표시
    main[1].style.display = "none";  // 비밀번호 관련 내용 숨기기

    // 버튼의 활성 상태 변경
    idBtn.classList.add("active");
    passwordBtn.classList.remove("active");
});

passwordBtn.addEventListener("click", () => {
    main[0].style.display = "none";  // 아이디 관련 내용 숨기기
    main[1].style.display = "block"; // 비밀번호 관련 내용 표시

    // 버튼의 활성 상태 변경
    passwordBtn.classList.add("active");
    idBtn.classList.remove("active");
});





// 페이지 로드 시 기본 버튼 상태 설정
updateButtonState(activeBtn);

// 버튼 클릭 시 페이지 전환
document.querySelector('.next-button1').addEventListener('click', () => {
  const selectedUser = document.querySelector('input[name="user"]:checked'); // 선택된 라디오 버튼 찾기
  
  if (selectedUser) {
    // 선택된 값에 따라 페이지 이동
    if (selectedUser.value === 'A') {
      window.location.href = 'http://localhost:9000/powpow/login/buyer-join.jsp'; // POWPOW 회원 페이지
    } else if (selectedUser.value === 'B') {
      window.location.href = 'http://localhost:9000/powpow/login/seller-join.jsp'; // POWPOW 판매자 페이지
    }
  } else {
    alert('비밀번호를 찾을 방법을 선택해 주세요!'); // 아무 것도 선택하지 않았을 경우 경고
  }
});