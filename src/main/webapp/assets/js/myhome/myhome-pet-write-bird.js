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
   
   
   //이미지
   document.addEventListener('DOMContentLoaded', function() {
       const imageUpload = document.getElementById('imageUpload');
       const petImage = document.getElementById('petImage');
       
       imageUpload.addEventListener('change', function(event) {
           const file = event.target.files[0];
           
           // 파일 유효성 검사
           if (file) {
               // 파일 크기 체크 (5MB 제한)
               if (file.size > 5 * 1024 * 1024) {
                   alert('파일 크기는 5MB를 초과할 수 없습니다.');
                   this.value = '';
                   return;
               }
               
               // 이미지 파일 형식 체크
               if (!file.type.startsWith('image/')) {
                   alert('이미지 파일만 업로드 가능합니다.');
                   this.value = '';
                   return;
               }
               
               // 이미지 프리뷰
               const reader = new FileReader();
               
               reader.onload = function(e) {
                   petImage.src = e.target.result;
               };
               
               reader.onerror = function() {
                   alert('이미지를 불러오는 중 오류가 발생했습니다.');
               };
               
               reader.readAsDataURL(file);
           }
       });

       // 폼 제출 전 유효성 검사
       document.getElementById('frame').addEventListener('submit', function(event) {
           const petName = document.getElementById('petName').value;
           const petBreed = document.getElementsByName('petBreed')[0].value;
           const petWeight = document.getElementsByName('petWeight')[0].value;
           
           if (!petName.trim()) {
               alert('반려동물의 이름을 입력해주세요.');
               event.preventDefault();
               return;
           }
           
           if (!petBreed.trim()) {
               alert('품종을 입력해주세요.');
               event.preventDefault();
               return;
           }
           
           if (!petWeight || petWeight <= 0) {
               alert('올바른 몸무게를 입력해주세요.');
               event.preventDefault();
               return;
           }
       });
   });
   
   