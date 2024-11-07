document.addEventListener("DOMContentLoaded", function() {
	// 메인 메뉴와 서브 메뉴 설정
	const mainMenus = document.querySelectorAll(".menu-wrap .menu");
	const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
	const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");
	let hoverTimeout;

	mainMenus.forEach((menu) => {
		menu.addEventListener("mouseover", () => {
			clearTimeout(hoverTimeout);
			subMenuUl.forEach((ul) => {
				ul.style.height = "250px";
				ul.style.backgroundColor = "white";
			});
		});

		menu.addEventListener("mouseleave", () => {
			hoverTimeout = setTimeout(() => {
				subMenuUl.forEach((ul) => {
					ul.style.height = "0";
					ul.style.backgroundColor = "transparent";
				});
			}, 300);
		});
	});

	subMenus.forEach((sub) => {
		sub.addEventListener("mouseover", () => {
			clearTimeout(hoverTimeout);
			subMenuUl.forEach((ul) => {
				ul.style.height = "250px";
			});
		});

		sub.addEventListener("mouseleave", () => {
			hoverTimeout = setTimeout(() => {
				subMenuUl.forEach((ul) => {
					ul.style.height = "0";
				});
			}, 100);
		});
	});

	// 수량 조절기 기능 설정
	const quantityControls = document.querySelectorAll(".quantity-button");
	quantityControls.forEach((control) => {
		const btnMinus = control.querySelector(".btn-minus");
		const btnPlus = control.querySelector(".btn-plus");
		const quantityInput = control.querySelector(".quantity-input");

		if (btnMinus && btnPlus && quantityInput) {
			btnMinus.addEventListener("click", () => {
				let currentValue = parseInt(quantityInput.value) || 1;
				if (currentValue > 1) {
					quantityInput.value = currentValue - 1;
				}
			});

			btnPlus.addEventListener("click", () => {
				let currentValue = parseInt(quantityInput.value) || 1;
				quantityInput.value = currentValue + 1;
			});
		}
	});

	// 전체 선택/해제 및 선택 삭제 기능
	const deleteButton = document.getElementById("delete-button");
	const selectAllCheckbox = document.getElementById("select-all");
	const itemCheckboxes = document.querySelectorAll('.item-checkbox');

	// 선택 삭제 버튼 클릭 이벤트
	deleteButton.addEventListener("click", () => {
		const selectedIds = Array.from(itemCheckboxes)
			.filter(checkbox => checkbox.checked)
			.map(checkbox => checkbox.value);

		if (selectedIds.length > 0) {
			document.getElementById('cart-form').submit(); // 선택된 상품 ID를 포함하여 폼 제출
		} else {
			alert("삭제할 상품을 선택해주세요.");
		}
	});

	// 전체 선택 체크박스 이벤트
	selectAllCheckbox.addEventListener("change", () => {
		itemCheckboxes.forEach(checkbox => {
			checkbox.checked = selectAllCheckbox.checked;
		});
	});
});
