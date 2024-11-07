const subContents = document.querySelectorAll(".sub-content-wrap");
const categoryButtons = document.querySelectorAll(".sub-button")

NodeList.prototype.filter = Array.prototype.filter;

categoryButtons.forEach((subButton, i) => {
	subButton.addEventListener("click", (e) => {
		let others = subContents.filter((content, index) => index !== i);
		let otherButtons = categoryButtons.filter((content, index) => index !== i);
		let clicked = subContents.filter((content, index) => index === i)[0];
		let clickedButton = categoryButtons.filter((content, index) => index === i)[0];
		
		/* 클릭한 버튼 active 붙이고 flex로 나오게 하기 */
		clicked.style.display = "flex";
		clickedButton.setAttribute("class", "sub-logo-title-menu sub-button active");
		
		/*나머지 컨텐츠는 숨기기*/
		others.forEach((otherContent) => {
			otherContent.style.display = "none";
		})
		
		/*나머지 버튼은 active 없애기*/
		otherButtons.forEach((otherButton) => {
			otherButton.setAttribute("class", "sub-logo-title-menu sub-button");
		})
		
	})
})
