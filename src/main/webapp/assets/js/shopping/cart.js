const mainMenus = document.querySelectorAll(".menu-wrap .menu");
const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
const subMenuAll = document.querySelector(".sub-menu-wrap");
const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");

let count = 0;
let hoverTimeout; // 타임아웃을 저장할 변수

mainMenus.forEach((menu) => {
	menu.addEventListener("mouseover", () => {
		clearTimeout(hoverTimeout); // 기존에 설정된 타임아웃이 있으면 제거
		subMenuUl.forEach((ul) => {
			ul.style.height = "250px";
			ul.style.backgroundColor = "white";
		});
	});

	menu.addEventListener("mouseleave", () => {
		hoverTimeout = setTimeout(() => {
			subMenuUl.forEach((ul) => {
				ul.style.height = "0";
				ul.style.backgroundColor = "none";
			});
		}, 300); // 300ms 지연 후 메뉴를 닫음
	});
});

subMenus.forEach((sub, i) => {
	sub.addEventListener("mouseover", () => {
		clearTimeout(hoverTimeout); // 서브메뉴에서도 마우스 오버 시 타임아웃 제거
		subMenuUl.forEach((ul) => {
			ul.style.height = "250px";
		});
	});

	sub.addEventListener("mouseleave", () => {
		hoverTimeout = setTimeout(() => {
			subMenuUl.forEach((ul) => {
				ul.style.height = "0";
			});
		}, 100); // 100ms 지연 후 서브메뉴를 닫음
	});
});

document.addEventListener("DOMContentLoaded", function() {
	// 첫 번째 수량 조절기
	const btnMinus1 = document.querySelector("#result1").previousElementSibling.querySelector(".btn-minus");
	const btnPlus1 = document.querySelector("#result1").nextElementSibling.querySelector(".btn-plus");
	const quantityInput1 = document.getElementById("result1");

	btnMinus1.addEventListener("click", function() {
		let currentValue = parseInt(quantityInput1.value);
		if (currentValue > 1) {
			quantityInput1.value = currentValue - 1;
		}
	});

	btnPlus1.addEventListener("click", function() {
		let currentValue = parseInt(quantityInput1.value);
		quantityInput1.value = currentValue + 1;
	});

	// 두 번째 수량 조절기
	const btnMinus2 = document.querySelector("#result2").previousElementSibling.querySelector(".btn-minus");
	const btnPlus2 = document.querySelector("#result2").nextElementSibling.querySelector(".btn-plus");
	const quantityInput2 = document.getElementById("result2");

	btnMinus2.addEventListener("click", function() {
		let currentValue = parseInt(quantityInput2.value);
		if (currentValue > 1) {
			quantityInput2.value = currentValue - 1;
		}
	});

	btnPlus2.addEventListener("click", function() {
		let currentValue = parseInt(quantityInput2.value);
		quantityInput2.value = currentValue + 1;
	});
});

window.onload = function() {
	const selectAllCheckbox = document.getElementById("select-all");
	const itemCheckboxes = document.querySelectorAll(".cart-item .item-checkbox");
	const deleteButton = document.getElementById("delete-button");

	// 전체 선택/해제 기능
	selectAllCheckbox.addEventListener("click", function() {
		const isChecked = selectAllCheckbox.checked;
		itemCheckboxes.forEach(function(checkbox) {
			checkbox.checked = isChecked;
		});
	});

	// 선택 삭제 기능
	deleteButton.addEventListener("click", function() {
		itemCheckboxes.forEach(function(checkbox) {
			if (checkbox.checked) {
				const cartItem = checkbox.closest(".cart-item");
				cartItem.remove();
			}
		});
	});
};

