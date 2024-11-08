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


