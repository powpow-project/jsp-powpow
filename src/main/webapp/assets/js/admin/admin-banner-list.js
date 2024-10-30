document.addEventListener("DOMContentLoaded", function() {
	const search = document.querySelector(".search-btn");
	const reset = document.querySelector(".reset-btn");
	const newAdd = document.querySelector(".new-add-btn");
	const searchInput = document.querySelector(".search");
	const menuIcon = document.querySelector(".menu-wrap .menu-icon");
	const menuFrame = document.querySelector("#menu-frame");
	const listItems = document.querySelectorAll("li");
	const divs = document.querySelectorAll("ul > li > div");
	const unlimitedCheckbox = document.getElementById("unlimited");
	const startDateInput = document.getElementById("start-date");
	const endDateInput = document.getElementById("end-date");

	// 초기화 버튼
	reset.addEventListener("click", () => {
		searchInput.value = "";
	});

	// 리스트 항목 마우스 오버
	listItems.forEach((li, i) => {
		li.addEventListener("mouseover", () => {
			divs[i].style.height = `${divs[i].children.length * 40}px`;
		});
		li.addEventListener("mouseleave", () => {
			divs[i].style.height = 0;
		});
	});

	// 메뉴 토글
	menuIcon.addEventListener("click", function() {
		const isActive = menuFrame.style.display === "block";
		menuFrame.style.display = isActive ? "none" : "block";

		if (!isActive) {
			menuFrame.addEventListener("mouseleave", function() {
				menuFrame.style.display = "none";
			});
		}
	});

	// 검색 기능
	search.addEventListener("click", function() {
		const searchQuery = searchInput.value.toLowerCase();
		const rows = document.querySelectorAll(".notice-list tbody tr");

		rows.forEach(function(row) {
			const title = row.querySelector("td:nth-child(2)").textContent.toLowerCase();
			row.style.display = title.includes(searchQuery) ? "" : "none";
		});
	});

	// 새 게시글 등록
	newAdd.addEventListener("click", function() {
		window.location.href = "../admin/admin-banner-write.admin";
	});

	// 삭제 버튼 기능
	const deleteButtons = document.querySelectorAll(".delete-btn");
	deleteButtons.forEach(function(button) {
	   button.addEventListener("click", function() {
	      if (confirm("정말 삭제하시겠습니까?")) {
	         const id = button.getAttribute('data-id'); 
	         location.href = `admin-banner-delete-ok.admin?id=${id}`;
	         button.closest("tr").remove();
	         alert("공지사항이 삭제되었습니다.");
	      }
	   });
	});

	// 무제한 체크박스 클릭 시 '무제한' 텍스트 표시
	unlimitedCheckbox.addEventListener("change", () => {
		const isChecked = unlimitedCheckbox.checked;

		if (isChecked) {
			startDateInput.value = "무제한";
			endDateInput.value = "무제한";
			startDateInput.disabled = true;
			endDateInput.disabled = true;
		} else {
			startDateInput.value = "";
			endDateInput.value = "";
			startDateInput.disabled = false;
			endDateInput.disabled = false;
		}
	});
});
