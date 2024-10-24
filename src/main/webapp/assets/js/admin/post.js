const menuIcon = document.querySelector(".menu-wrap img");
const menuFrame = document.querySelector("#menu-frame");
const listItems = document.querySelectorAll("li");
const subMenus = document.querySelectorAll("ul > li > div");
const submitButton = document.querySelector(".button-submit");
const editButton = document.querySelector(".button-edit");
const titleInput = document.getElementById("title");
const contentInput = document.getElementById("content");

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

// 완료 버튼 클릭 시
/*submitButton.addEventListener("click", () => {
    const title = titleInput.value.trim();
    const content = contentInput.value.trim();

    // 입력 검증
    if (!title || !content) {
        alert("제목과 내용을 입력해 주세요.");
        return;
    }

    // 게시글 등록 알림
    alert("게시글이 등록되었습니다.");

    // 폼 초기화
    titleInput.value = "";
    contentInput.value = "";
	
	form.submit();
});*/

// 취소 버튼 클릭 시
editButton.addEventListener("click", () => {
    const confirmCancel = confirm("정말로 취소하시겠습니까?");
    if (confirmCancel) {
        alert("게시글이 취소되었습니다.");
    }
});