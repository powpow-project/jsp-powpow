/*회원 판패자 페이지 구분*/
const idBtn = document.querySelector(".id-btn");
const passwordBtn = document.querySelector(".password-btn");
const main = document.querySelectorAll(".main-content");

// 초기 활성화 상태 설정
idBtn.classList.add("active");

idBtn.addEventListener("click", () => {
    main[0].style.display = "block";
    main[1].style.display = "none"; 

    // 버튼의 활성 상태 변경
    idBtn.classList.add("active");
    passwordBtn.classList.remove("active");
});

passwordBtn.addEventListener("click", () => {
    main[0].style.display = "none";  
    main[1].style.display = "block";

    // 버튼의 활성 상태 변경
    passwordBtn.classList.add("active");
    idBtn.classList.remove("active");
});






/*인증요청*/
    const authButton = document.getElementById("request-auth"); 
    const authNumberContainer = document.getElementById("authNumberContainer"); 
    const confirmButton = document.querySelector(".confirm-button"); 
    const authNumberInput = document.querySelector("input[name='authNumber']"); 
    const phoneResult = document.getElementById("phone-result"); 
    const phoneInput = document.querySelector("input[name='phone']"); 
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