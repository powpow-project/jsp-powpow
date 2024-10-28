/**
 * 
 */

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
        }, 100); // 100ms 지연 후 메뉴를 닫음
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
// When the user selects a file, this function will update the profile picture
document.getElementById('imageUpload').addEventListener('change', function (event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById('profileImage').src = e.target.result;
        };
        reader.readAsDataURL(file);
    }
});