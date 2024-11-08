/**
 * 
 */
 
 /* 비밀번호 변경하기 */
 
const form = document.querySelector("#password-update-form");
const inputs = document.querySelectorAll("#password-update-form input");
const submitButton = document.querySelector(".submit-button");

submitButton.addEventListener("click", () => {
	for(let input of inputs){
		if(!input.value){
			alert("비밀번호를 입력하세요")
			return;
		}
	}
	form.submit();
})





 
