document.addEventListener("DOMContentLoaded", () => {
	const bannerForm = document.getElementById("frame");
	const submitButton = document.querySelector(".button-submit");
	const cancelButton = document.querySelector(".button-edit");
	const startDateInput = document.getElementById("start-date");
	const endDateInput = document.getElementById("end-date");
	const bannerNameInput = document.getElementById("banner-name");

	// 배너명 입력 길이 제한
	bannerNameInput.addEventListener("input", () => {
		if (bannerNameInput.value.length > 20) {
			alert("배너명은 20자 이내로 입력해 주세요.");
			bannerNameInput.value = bannerNameInput.value.slice(0, 20);
		}
	});

	// 제출 버튼 클릭 이벤트
	submitButton.addEventListener("click", (event) => {
		event.preventDefault();

		if (bannerNameInput.value.trim() === "") {
			alert("배너명을 입력해 주세요.");
			bannerNameInput.focus();
			return;
		}

		const bannerImageInput = document.getElementById("banner-image");
		if (!bannerImageInput.files.length) {
			alert("배너 이미지를 선택해 주세요.");
			bannerImageInput.focus();
			return;
		}

		// 날짜 입력 필드가 비어있는지 확인
		if (!startDateInput.value || !endDateInput.value) {
			alert("기간을 설정해 주세요.");
			return;
		}

		const startDate = new Date(startDateInput.value);
		const endDate = new Date(endDateInput.value);
		
		// 날짜 유효성 검사
		if (isNaN(startDate.getTime()) || isNaN(endDate.getTime())) {
			alert("날짜 형식이 올바르지 않습니다.");
			return;
		}
		
		if (startDate > endDate) {
			alert("종료 날짜는 시작 날짜보다 빠를 수 없습니다.");
			return;
		}

		bannerForm.submit();
	});

	// 취소 버튼 클릭 이벤트
	cancelButton.addEventListener("click", (event) => {
		event.preventDefault();
		bannerForm.reset();
		alert("배너 등록이 취소되었습니다.");
	});

	// 메뉴 관련 기능
	const menuIcon = document.querySelector(".menu-wrap img");
	const menuFrame = document.querySelector("#menu-frame");
	const listItems = document.querySelectorAll("li");
	const subMenus = document.querySelectorAll("ul > li > div");

	listItems.forEach((li, i) => {
		li.addEventListener("mouseover", () => {
			subMenus[i].style.height = `${subMenus[i].children.length * 40}px`; 
		});
		li.addEventListener("mouseleave", () => {
			subMenus[i].style.height = 0;
		});
	});

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
});
