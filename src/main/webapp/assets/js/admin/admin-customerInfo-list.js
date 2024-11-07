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



/*// 검색 버튼 클릭 시
   const search = document.getElementById('search-btn');
   const searchInput = document.getElementById('search-input');
   const userList = document.getElementById('user-list');

   search.addEventListener('click', function () {
       const searchValue = searchInput.value.trim().toLowerCase();
       const smsFilter = document.querySelector('input[name="sms"]:checked');
       const emailFilter = document.querySelector('input[name="email"]:checked');

       // 검색어와 필터 적용
       const matchesSearch = userId.includes(searchValue) || phone.includes(searchValue) || email.includes(searchValue);
       const matchesSms = smsFilter ? smsStatus === (smsFilter.value === 'yes' ? '수신' : '수신거부') : true;
       const matchesEmail = emailFilter ? emailStatus === (emailFilter.value === 'yes' ? '수신' : '수신거부') : true;

       // 모든 조건이 맞아야 행 표시
       if (matchesSearch && matchesSms && matchesEmail) {
           row.style.display = '';
       } else {
           row.style.display = 'none';
       }
   });

   // 초기화 버튼 클릭 시
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
   });*/
   
   
   
