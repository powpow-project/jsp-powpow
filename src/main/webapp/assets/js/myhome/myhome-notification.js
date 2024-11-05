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
 
const checkbox = document.getElementById('toggle-checkbox');
const status = document.getElementById('status');

/*checkbox.addEventListener('change', () => {
   status.textContent = checkbox.checked ? '현재 상태: 동의함' : '현재 상태: 동의하지 않음';
});
   */

   
   