document.addEventListener("DOMContentLoaded", () => {
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

const reset = document.getElementById('reset-btn');

reset.addEventListener('click', function () {
    searchInput.value = '';

    const radios = document.querySelectorAll('input[type="radio"]');
    radios.forEach(radio => radio.checked = false); 
    document.getElementById('start-date').value = ''; 
    document.getElementById('end-date').value = ''; 

    const rows = userList.getElementsByTagName('tr');
    for (const row of rows) {
        row.style.display = '';
    }
});
