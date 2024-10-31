const mark = document.querySelector(".mark");
	mark.addEventListener("click", () => {
		const input = document.querySelector("input[name='sellerPassword']");
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
	
	
	
	
	//회원가입 폼 DB에 넘기기..!?!?
	

	    const submitButton = document.querySelector(".login-button");
	    const Form = document.querySelector("form");

	    submitButton.addEventListener("click", (event) => {
	        // 기본 폼 제출 방지
	        event.preventDefault(); 

	        const isValid = true; // 여기서 모든 유효성 검사를 통과했는지 확인

	        if (isValid) {
	            Form.submit(); // 유효성 검사 통과 시 폼 제출
	        }
			return;
	    });
