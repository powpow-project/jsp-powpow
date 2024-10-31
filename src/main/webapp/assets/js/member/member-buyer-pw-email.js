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