document.addEventListener("DOMContentLoaded", () => {
	const bannerForm = document.getElementById("frame");
	const submitButton = document.querySelector(".button-submit");
	const cancelButton = document.querySelector(".button-edit");
	const unlimitedCheckbox = document.getElementById("unlimited");
	const startDateInput = document.getElementById("start-date");
	const endDateInput = document.getElementById("end-date");
	const bannerNameInput = document.getElementById("banner-name");

	unlimitedCheckbox.addEventListener("change", () => {
		const isChecked = unlimitedCheckbox.checked;
		startDateInput.disabled = isChecked;
		endDateInput.disabled = isChecked;
		if (isChecked) {
			startDateInput.value = "";
			endDateInput.value = "";
		}
	});

	bannerNameInput.addEventListener("input", () => {
		if (bannerNameInput.value.length > 20) {
			alert("배너명은 20자 이내로 입력해 주세요.");
			bannerNameInput.value = bannerNameInput.value.slice(0, 20);
		}
	});

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

		if (unlimitedCheckbox.checked) {
		    document.getElementById("hidden-start-date").value = "무제한";
		    document.getElementById("hidden-end-date").value = "무제한";
		} else {
		    if (!startDateInput.value || !endDateInput.value) {
		        alert("기간을 설정해 주세요.");
		        return;
		    }
		    if (new Date(startDateInput.value) > new Date(endDateInput.value)) {
		        alert("종료 날짜는 시작 날짜보다 빠를 수 없습니다.");
		        return;
		    }
		}

		bannerForm.submit();
	});

	cancelButton.addEventListener("click", (event) => {
		event.preventDefault();
		bannerForm.reset();
		alert("배너 등록이 취소되었습니다.");
	});
});
