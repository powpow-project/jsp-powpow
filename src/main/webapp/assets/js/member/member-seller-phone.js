document.addEventListener("DOMContentLoaded", () => {
	const authButton = document.getElementById("#request-auth");
	const authNumberContainer = document.getElementById("authNumberContainer");
	const confirmButton = document.querySelector(".confirm-button");
	const authNumberInput = document.querySelector("input[name='authNumber']");
	const phoneResult = document.getElementById("phone-result");
	const phoneInput = document.querySelector("input[name='phone']");
	const submitButton = document.querySelector(".login-button");

	// 전화번호 검증
	function validatePhone() {
		const phoneValue = phoneInput.value.trim();

		if (!phoneValue) {
			phoneResult.innerText = "휴대전화를 입력하세요.";
			phoneResult.style.color = "red";
			authNumberContainer.style.display = "none";
			return false;
		} else if (phoneValue.length !== 11) {
			phoneResult.innerText = "올바른 전화번호를 입력해주세요.";
			phoneResult.style.color = "red";
			authNumberContainer.style.display = "none";
			return false;
		}
		phoneResult.innerText = "";
		authNumberContainer.style.display = "block";
		return true;
	}



	// 인증 요청 버튼 클릭 시
	authButton.addEventListener("click", () => {
		validatePhone(); // 전화번호 검증
	});

	// 확인 버튼 클릭 시 인증번호 검증
	confirmButton.addEventListener("click", (event) => {
		event.preventDefault(); // 기본 행동 방지

		if (!authNumberInput.value) {
			phoneResult.innerText = "인증번호를 입력하세요.";
			phoneResult.style.color = "red";
		} else if (authNumberInput.value.length !== 6) {
			phoneResult.innerText = "인증번호가 올바르지 않습니다.";
			phoneResult.style.color = "red";
		} else if (!/^\d{6}$/.test(authNumberInput.value)) {
			phoneResult.innerText = "인증번호는 6자리 숫자여야 합니다.";
			phoneResult.style.color = "red";
		} else {
			phoneResult.innerText = "올바른 인증번호를 입력하였습니다!";
			phoneResult.style.color = "green";
			alert("인증이 완료되었습니다!");
		}
	});
	console.log(submitButton);

	// 안내 문구 초기화

	/*phoneInput.addEventListener("input", () => {
		phoneResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
	});*/

	const Form = document.querySelector("form");

	authButton.addEventListener("click", (event) => {
		event.preventDefault(); 
		
	    if (phoneValue.length !== 11) {
	        Form.submit(); 
	    }
		return;
	});	
	

	submitButton.addEventListener("click", (event) => {
	       event.preventDefault(); 
		   
	       if (phoneValue.length !== 11 && authNumberInput.value.length === 6) {
	           Form.submit(); 
	       } 
		   return;
	});

});



