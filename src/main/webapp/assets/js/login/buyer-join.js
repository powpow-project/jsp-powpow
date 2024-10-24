const mark = document.querySelector(".mark");
	mark.addEventListener("click", () => {
		const input = document.querySelector("input[name='password']");
		const inputConfirm = document.querySelector("input[name='passwordConfirm']");
		
		if(input.type === "password"){
			input.setAttribute("type", "text");
			inputConfirm.setAttribute("type", "text");
			mark.style.backgroundImage = "url('../assets/images/login/eye-on.svg')";
		}else{
			input.setAttribute("type", "password");
			inputConfirm.setAttribute("type", "password");
			mark.style.backgroundImage = "url('../assets/images/login/eye-off.svg')";
		}
	})

	
	
    // 전체동의 로직 만들기
    NodeList.prototype.map = Array.prototype.map;

    const allagree = document.querySelector(".allagree")
    const agree1s = document.querySelectorAll(".agree1")


    $(".allagree").on("click", (e) => {
      $(".agree1").prop("checked", e.target.checked);
    })

    $(".agree1").on("click", (e) => {
      $(".allagree").prop("checked", $(".agree1").filter(":checked").length === 4);
    })
	
	
	
	/*주소 검색*/
	function sample6_execDaumPostcode() {
	           new daum.Postcode({
	               oncomplete: function(data) {
	                   var addr = ''; // 주소 변수

	                   // 선택한 주소 타입에 따라 주소 값을 가져온다.
	                   addr = data.userSelectedType === 'R' ? data.roadAddress : data.jibunAddress;

	                   // 우편번호와 주소 정보를 필드에 넣는다.
	                   document.getElementById('sample6_postcode').value = data.zonecode;
	                   document.getElementById("sample6_address").value = addr;
	                   document.getElementById("sample6_detailAddress").focus(); // 상세주소 필드로 이동
	               }
	           }).open();
	       }
		   
		   
/*인풋값들*/   
		   document.addEventListener("DOMContentLoaded", () => {
		       const emailInput = document.getElementById("email");
		       const emailResult = document.getElementById("email-result");
		       const passwordInput = document.querySelector("#password");
		       const passwordConfirmInput = document.querySelector("#passwordConfirm");
		       const passwordResult = document.getElementById("password-result");
		       const passwordConfirmResult = document.getElementById("passwordConfirm-result");
		       const nameInput = document.getElementById("name");
		       const nameResult = document.getElementById("name-result");
		       const authButton = document.getElementById("request-auth");
		       const postcodeInput = document.getElementById("sample6_postcode");
		       const addressInput = document.getElementById("sample6_address");
		       const detailAddressInput = document.getElementById("sample6_detailAddress");
		       const addressResult = document.getElementById("adress-result");
		       const detailAddressResult = document.getElementById("detail-adress-result");
		       const submitButton = document.querySelector(".login-button");
		       const agreeResult = document.getElementById("agree-result");

		       // 중복 이메일 및 닉네임 목록 (예시)
		       const existingEmails = ["qwe3401@naver.com"];
		       const existingNames = ["쏘오연"];

		       // 이메일 검증
		       function validateEmail() {
		           if (!emailInput.value) {
		               emailResult.innerText = "이메일을 입력하세요.";
		               emailResult.style.color = "red";
		               return false;
		           } else if (!/\S+@\S+\.\S+/.test(emailInput.value)) {
		               emailResult.innerText = "올바른 이메일 주소가 아닙니다.";
		               emailResult.style.color = "red";
		               return false;
		           } else if (existingEmails.includes(emailInput.value)) {
		               emailResult.innerText = "이미 사용 중인 이메일입니다.";
		               emailResult.style.color = "red";
		               return false;
		           }
		           emailResult.innerText = "사용 가능한 이메일입니다.";
		           emailResult.style.color = "green";
		           return true;
		       }

		       // 닉네임 검증
		       function validateName() {
		           if (!nameInput.value) {
		               nameResult.innerText = "닉네임을 입력하세요.";
		               nameResult.style.color = "red";
		               return false;
		           } else if (existingNames.includes(nameInput.value)) {
		               nameResult.innerText = "이미 사용 중인 닉네임입니다.";
		               nameResult.style.color = "red";
		               return false;
		           }
		           nameResult.innerText = "사용 가능한 닉네임입니다.";
		           nameResult.style.color = "green";
		           return true;
		       }

		       // 비밀번호 검증
		       function validatePassword() {
		           const password = passwordInput.value;
		           const passwordConfirm = passwordConfirmInput.value;

		           if (!password) {
		               passwordResult.textContent = "비밀번호를 입력하세요.";
		               passwordResult.style.color = "red";
		               return false;
		           } else if (password.length < 8) {
		               passwordResult.textContent = "비밀번호는 8자 이상이어야 합니다.";
		               passwordResult.style.color = "red";
		               return false;
		           }

		           if (!passwordConfirm) {
		               passwordConfirmResult.textContent = "비밀번호 확인을 입력하세요.";
		               passwordConfirmResult.style.color = "red";
		               return false;
		           } else if (password !== passwordConfirm) {
		               passwordConfirmResult.textContent = "비밀번호가 일치하지 않습니다.";
		               passwordConfirmResult.style.color = "red";
		               return false;
		           }

		           passwordResult.textContent = "비밀번호가 일치합니다.";
		           passwordResult.style.color = "green";
		           passwordConfirmResult.textContent = "";
		           return true;
		       }


		       // 주소 검증
		       function validateAddress() {
		           const postcodeValue = postcodeInput.value.trim();
		           const addressValue = addressInput.value.trim();
		           const detailAddressValue = detailAddressInput.value.trim();

		           if (!postcodeValue || !addressValue) {
		               addressResult.innerText = "주소를 입력하세요.";
		               addressResult.style.color = "red";
		               return false;
		           } else {
		               addressResult.innerText = "";
		           }

		           if (!detailAddressValue) {
		               detailAddressResult.innerText = "상세주소를 입력하세요.";
		               detailAddressResult.style.color = "red";
		               return false;
		           } else {
		               detailAddressResult.innerText = "";
		           }

		           return true;
		       }

		       // 전체 동의 검증
		       function validateAgreements() {
		           const checkboxes = document.querySelectorAll("input[type='checkbox']");
		           let allChecked = true;
		           agreeResult.textContent = "";

		           checkboxes.forEach(checkbox => {
		               if (!checkbox.checked) {
		                   allChecked = false;
		               }
		           });

		           if (!allChecked) {
		               agreeResult.textContent = "모두 동의해주세요.";
		               agreeResult.style.color = "red";
		               return false;
		           }

		           return true;
		       }

		       // 이메일 확인 버튼 클릭 시
		       document.getElementById("email-check").addEventListener("click", (event) => {
		           event.preventDefault(); // 기본 행동 방지
		           validateEmail();
		       });

		       // 닉네임 확인 버튼 클릭 시
		       document.getElementById("name-check").addEventListener("click", (event) => {
		           event.preventDefault(); // 기본 행동 방지
		           validateName();
		       });

		       // 회원가입 버튼 클릭 시 모든 검증 수행
		       submitButton.addEventListener("click", (event) => {
		           event.preventDefault(); // 기본 폼 제출 방지

		           const isEmailValid = validateEmail();
		           const isPasswordValid = validatePassword();
		           const isNameValid = validateName();
		           const isAddressValid = validateAddress();
		           const isAgreementsValid = validateAgreements();

		           if (isEmailValid && isPasswordValid && isNameValid && isAddressValid && isAgreementsValid) {
		               alert("회원가입이 완료되었습니다!");
		               // 여기에 실제 회원가입 로직을 추가할 수 있습니다.
		           }
		       });


		       // 안내 문구 초기화
		       emailInput.addEventListener("input", () => {
		           emailResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       nameInput.addEventListener("input", () => {
		           nameResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       passwordInput.addEventListener("input", () => {
		           passwordResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       passwordConfirmInput.addEventListener("input", () => {
		           passwordConfirmResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });


		       postcodeInput.addEventListener("input", () => {
		           addressResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       addressInput.addEventListener("input", () => {
		           addressResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       detailAddressInput.addEventListener("input", () => {
		           detailAddressResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		       });

		       // 전체 동의 체크박스에 이벤트 추가
		       document.querySelectorAll("input[type='checkbox']").forEach(checkbox => {
		           checkbox.addEventListener("change", () => {
		               agreeResult.innerText = ""; // 입력 중일 때 안내 문구 초기화
		           });
		       });
		   });
