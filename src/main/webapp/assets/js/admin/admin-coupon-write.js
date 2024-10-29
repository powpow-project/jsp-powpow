//메뉴바 js
const menuIcon = document.querySelector(".menu-wrap img");
const menuFrame = document.querySelector("#menu-frame");
const listItems = document.querySelectorAll("li");
const subMenus = document.querySelectorAll("ul > li > div");

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