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
		const input = true;
		
	    submitButton.addEventListener("click", (event) => {

	        if (input) {
	            Form.submit(); 
	        }
			return;
	    });
