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





/*인증요청*/
document.addEventListener("DOMContentLoaded", () => {
    const authButton = document.getElementById("auth-button"); // 인증 요청 버튼
    const authNumberContainer = document.getElementById("authNumberContainer"); // 인증번호 입력란
    const confirmButton = document.querySelector(".confirm-button"); // 확인 버튼
    const authNumberInput = document.querySelector("input[name='authNumber']"); // 인증번호 입력란
    const phoneResult = document.getElementById("phone-result"); // 안내 문구
    const phoneInput = document.querySelector("input[name='phone']"); // 휴대전화 입력란

    // 인증 요청 버튼 클릭 시
    authButton.addEventListener("click", () => {
        const phoneValue = phoneInput.value.trim();

        if (!phoneValue) {
            phoneResult.innerText = "휴대전화를 입력하세요.";
            phoneResult.style.color = "red";
            authNumberContainer.style.display = "none"; // 입력값이 없으면 숨김
        } else if (phoneValue.length !== 11) {
            phoneResult.innerText = "올바른 전화번호를 입력해주세요.";
            phoneResult.style.color = "red";
            authNumberContainer.style.display = "none"; // 입력값이 부정확하면 숨김
        } else {
            phoneResult.innerText = ""; // 안내 문구 초기화
            authNumberContainer.style.display = "block"; // 인증번호 입력란 표시
        }
    });

    // 확인 버튼 클릭 시 유효성 검사
    confirmButton.addEventListener("click", (event) => {
        event.preventDefault(); // 기본 행동 방지

        if (!authNumberInput.value) {
            phoneResult.innerText = "인증번호를 입력하세요."; // 안내 문구
            phoneResult.style.color = "red"; // 글자색 빨간색
        } else if (authNumberInput.value.length !== 6) {
            phoneResult.innerText = "인증번호가 올바르지 않습니다."; // 잘못된 인증번호 안내
            phoneResult.style.color = "red"; // 글자색 빨간색
        } else if (!/^\d{6}$/.test(authNumberInput.value)) {
            phoneResult.innerText = "인증번호는 6자리 숫자여야 합니다."; // 숫자 형식 안내
            phoneResult.style.color = "red"; // 글자색 빨간색
        } else {
            phoneResult.innerText = "올바른 인증번호를 입력하였습니다!"; // 올바른 경우
            phoneResult.style.color = "green"; // 글자색 초록색
        }
    });
});