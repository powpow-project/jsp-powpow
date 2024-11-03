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
    const authButton = document.getElementById("request-auth"); // 인증 요청 버튼
    const authNumberContainer = document.getElementById("authNumberContainer"); // 인증번호 입력란
    const confirmButton = document.querySelector(".confirm-button"); // 확인 버튼
    const authNumberInput = document.querySelector("input[name='authNumber']"); // 인증번호 입력란
    const phoneResult = document.getElementById("phone-result"); // 안내 문구
    const phoneInput = document.querySelector("input[name='phone']"); // 휴대전화 입력란
	const submitButton = document.querySelector(".next-button");
	const form = document.querySelector("form");
	const authenticationForm = document.querySelector("#authentication-form");
	
	// 전화번호 검증
	function validatePhone() {
	   const phoneValue = phoneInput.value.trim();

	   if (!phoneValue) {
	      phoneResult.innerText = "휴대전화를 입력하세요.";
	      phoneResult.style.color = "red";
	      return false;
	   } else if (phoneValue.length !== 11) {
	      phoneResult.innerText = "올바른 전화번호를 입력해주세요.";
	      phoneResult.style.color = "red";
	      return false;
	   }
	   phoneResult.innerText = "";
	   form.submit();
	   return true;
	}

	// 인증 요청 버튼 클릭 시
	authButton.addEventListener("click", () => {
	   validatePhone(); 
	});

	authButton.addEventListener("click", (event) => {
	   event.preventDefault(); 
	   
	    if (phoneValue.length == 11) {
	        form.submit(); 
	    }
	   return;
	});   


	submitButton.addEventListener("click", () => {
	   console.log(globalThis.isAuthentication)
	   if(!globalThis.isAuthentication){
	      return alert("휴대폰 인증이 필요합니다.")
	   }
	   authenticationForm.submit();      
	})