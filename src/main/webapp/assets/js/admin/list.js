document.addEventListener("DOMContentLoaded", function () {
    const search = document.querySelector(".search-btn");
    const reset = document.querySelector(".reset-btn");
    const newAdd = document.querySelector(".new-add-btn");
    const searchInput = document.querySelector(".search");
    const editButtons = document.querySelectorAll(".edit-btn");
    const deleteButtons = document.querySelectorAll(".delete-btn");
    const menuIcon = document.querySelector(".menu-wrap .menu-icon");
    const menuFrame = document.querySelector("#menu-frame");
    const listItems = document.querySelectorAll("li");
    const divs = document.querySelectorAll("ul > li > div");

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
    menuIcon.addEventListener("click", function () {
        const isActive = menuFrame.style.display === "block";
        menuFrame.style.display = isActive ? "none" : "block";

        if (!isActive) {
            menuFrame.addEventListener("mouseleave", function () {
                menuFrame.style.display = "none";
            });
        }
    });

    // 검색 기능
    search.addEventListener("click", function () {
        const searchQuery = searchInput.value.toLowerCase();
        const rows = document.querySelectorAll(".notice-list tbody tr");

        rows.forEach(function (row) {
            const title = row.querySelector("td:nth-child(2)").textContent.toLowerCase();
            row.style.display = title.includes(searchQuery) ? "" : "none";
        });
    });

    // 새 게시글 등록
    newAdd.addEventListener("click", function () {
        window.location.href = "../admin/write.admin"; // 게시글 작성 URL
    });



	// 삭제 버튼 클릭 이벤트 설정
	deleteButtons.forEach(function (button) {
	    button.addEventListener("click", function (event) {
	        const noticeId = button.getAttribute('data-id');
	        
	        if (confirm("정말 삭제하시겠습니까?")) {
	            // 삭제 요청을 보냅니다.
	            location.href = 'delete-ok.admin?id=' + noticeId; 
	        } else {
	            event.preventDefault();
	        }
	    });
	});
});