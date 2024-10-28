const mark = document.querySelector(".mark");
	mark.addEventListener("click", () => {
		const input = document.querySelector("input[name='password']");
		const inputConfirm = document.querySelector("input[name='passwordConfirm']");
		
		if(input.type === "password"){
			input.setAttribute("type", "text");
			inputConfirm.setAttribute("type", "text");
			mark.style.backgroundImage = "url('../assets/images/member/eye-on.svg')";
		}else{
			input.setAttribute("type", "password");
			inputConfirm.setAttribute("type", "password");
			mark.style.backgroundImage = "url('../assets/images/member/eye-off.svg')";
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
	
	
	
	
 //이메일 사용가능 확인
 document.addEventListener("DOMContentLoaded", () => {
	
 const emailInput = document.getElementById("email");
 const emailResult = document.createElement("p"); 
 const emailButton = document.querySelector("#email-check");

 emailButton.addEventListener("click", (event) => {
	
	event.preventDefault();
	
	     if (!emailInput.value) {
	         emailResult.innerText = "이메일을 입력하세요.";
	         emailResult.style.color = "red";
	         return false;
	     } else if (!/\S+@\S+\.\S+/.test(emailInput.value)) {
	         emailResult.innerText = "올바른 이메일 주소가 아닙니다.";
	         emailResult.style.color = "red";
	         return false;
	     }
		 
 });
 });
			