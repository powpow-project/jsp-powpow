document.addEventListener("DOMContentLoaded", () => {
    const bannerForm = document.getElementById("frame");
    const submitButton = document.querySelector(".button-submit");
    const cancelButton = document.querySelector(".button-edit");
    const unlimitedCheckbox = document.getElementById("unlimited");
    const startDateInput = document.getElementById("start-date");
    const endDateInput = document.getElementById("end-date");
    const bannerNameInput = document.getElementById("banner-name");

    // 메뉴 관련
    const menuIcon = document.querySelector(".menu-wrap img");
    const menuFrame = document.querySelector("#menu-frame");
    const listItems = document.querySelectorAll("li");
    const subMenus = document.querySelectorAll("ul > li > div");

    // 무제한 체크박스 기능
    unlimitedCheckbox.addEventListener("change", () => {
        const isChecked = unlimitedCheckbox.checked;
        startDateInput.disabled = isChecked;
        endDateInput.disabled = isChecked;
    });
	
	// 배너명 입력 길이 제한 (20자 이내로)
	bannerNameInput.addEventListener("input", () => {
	    if (bannerNameInput.value.length > 20) {
	        alert("배너명은 20자 이내로 입력해 주세요.");
	        bannerNameInput.value = bannerNameInput.value.slice(0, 20);
	    }
	});

    // 등록 버튼 클릭 시 간단한 폼 검증 및 제출
    submitButton.addEventListener("click", (event) => {
        event.preventDefault();

        const bannerName = bannerNameInput.value.trim();
        if (!bannerName) {
            alert("배너명을 입력해 주세요.");
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

        bannerForm.submit();
    });

    // 취소 버튼 클릭 시 폼 초기화
    cancelButton.addEventListener("click", (event) => {
        event.preventDefault();
        bannerForm.reset();
        alert("배너 등록이 취소되었습니다.");
    });

    // 메뉴바 하위 항목 표시/숨기기
    listItems.forEach((li, i) => {
        li.addEventListener("mouseover", () => {
            subMenus[i].style.height = `${subMenus[i].children.length * 40}px`;
        });
        li.addEventListener("mouseleave", () => {
            subMenus[i].style.height = 0;
        });
    });

    // 메뉴 토글 기능
    menuIcon.addEventListener("click", toggleMenu);

    function toggleMenu() {
        const isActive = menuFrame.style.display === "block";
        menuFrame.style.display = isActive ? "none" : "block";

        // 마우스가 메뉴 영역을 벗어나면 숨김
        if (!isActive) {
            menuFrame.addEventListener("mouseleave", hideMenu);
        }
    }

    function hideMenu() {
        menuFrame.style.display = "none";
        menuFrame.removeEventListener("mouseleave", hideMenu);
    }
});
