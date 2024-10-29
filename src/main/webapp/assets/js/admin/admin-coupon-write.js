const menuIcon = document.querySelector(".menu-wrap img");
const menuFrame = document.querySelector("#menu-frame");
const listItems = document.querySelectorAll("li");
const subMenus = document.querySelectorAll("ul > li > div");
const cancelButton = document.querySelector(".button-edit");
const couponForm = document.querySelector("#couponForm");
const submitButton = document.querySelector("#submitButton");
const couponNameInput = document.querySelector("#couponNameInput");
const unlimitedCheckbox = document.querySelector("#unlimitedCheckbox"); // 무제한 체크박스 선택
const startDateInput = document.querySelector("#startDateInput"); // 시작 날짜 입력란 선택
const endDateInput = document.querySelector("#endDateInput"); // 종료 날짜 입력란 선택


document.addEventListener("DOMContentLoaded", () => {

	listItems.forEach((li, i) => {
		if (subMenus[i]) {
			li.addEventListener("mouseover", () => {
				subMenus[i].style.height = `${subMenus[i].children.length * 40}px`;
			});
			li.addEventListener("mouseleave", () => {
				subMenus[i].style.height = 0;
			});
		}
	});

	// 메뉴 토글 기능
	menuIcon.addEventListener("click", toggleMenu);

	function toggleMenu() {
		const isActive = menuFrame.style.display === "block";
		menuFrame.style.display = isActive ? "none" : "block";


		if (!isActive) {
			menuFrame.addEventListener("mouseleave", hideMenu);
		}
	}

	function hideMenu() {
		menuFrame.style.display = "none";
		menuFrame.removeEventListener("mouseleave", hideMenu);
	}

	// 취소 버튼 클릭 시 폼 초기화
	cancelButton.addEventListener("click", (event) => {
		event.preventDefault();
		couponForm.reset();
		alert("쿠폰 등록이 취소되었습니다.");
	});

	// 등록 버튼 클릭
	submitButton.addEventListener("click", (event) => {
		event.preventDefault();

		const couponName = couponNameInput.value.trim();
		if (!couponName) {
			alert("쿠폰명을 입력해 주세요.");
			return;
		}

		if (!unlimitedCheckbox.checked) {
			const startDate = startDateInput.value;
			const endDate = endDateInput.value;

			if (!startDate || !endDate) {
				alert("기간을 설정해 주세요.");
				return;
			}

			const startDateObj = new Date(startDate);
			const endDateObj = new Date(endDate);

			if (startDateObj > endDateObj) {
				alert("종료 날짜는 시작 날짜보다 빠를 수 없습니다.");
				return;
			}
		}
		couponForm.submit();
	});
});
