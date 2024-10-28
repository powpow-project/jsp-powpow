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
  
//쿠폰팝업
//Get the modal and the button
const modal = document.getElementById('myModal');
const openButton = document.getElementById('openModalButton');
const closeButton = document.getElementById('closeModalButton');
const addButton = document.querySelector('.add-coupon');

//초기 상태를 숨김으로 설정
modal.style.display = "none"; // Hide the modal initially

//When the user clicks the button, open the modal
openButton.onclick = function () {
   modal.style.display = "flex"; // Show the modal
}

//When the user clicks on the close button, close the modal
closeButton.onclick = function () {
   modal.style.display = "none"; // Hide the modal
}

//When the user clicks outside the modal content, close the modal
window.onclick = function (event) {
   if (event.target == modal) {
       modal.style.display = "none"; // Hide the modal
   }
}

//Popup switch
const switch1 = document.querySelector(".switchto1");
const switch2 = document.querySelector(".switchto2");
const mainSections = document.querySelectorAll(".main-content > div"); // 모든 main-content div 선택

// 초기 상태 설정
mainSections[0].style.display = "block"; // 쿠폰함 보이기
mainSections[1].style.display = "none"; // 사용내역 숨기기
switch1.classList.add('active'); // 초기 상태에서 switch1 활성화

switch1.addEventListener("click", () => {
   mainSections[0].style.display = "block"; // 쿠폰함 보이기
   mainSections[1].style.display = "none"; // 사용내역 숨기기
   switch1.classList.add('active'); // switch1 활성화
   switch2.classList.remove('active'); // switch2 비활성화
})

switch2.addEventListener("click", () => {
   mainSections[0].style.display = "none"; // 쿠폰함 숨기기
   mainSections[1].style.display = "block"; // 사용내역 보이기
   switch2.classList.add('active'); // switch2 활성화
   switch1.classList.remove('active'); // switch1 비활성화
})
  addbutton.onclick = function () {
    modal.style.display = "File";
  }
  
  
function addCoupon() {
    var couponCode = document.getElementById('couponCode').value;
    if (couponCode.trim() === '') {
        alert('쿠폰 코드를 입력해주세요.');
        return;
    }

    var couponContainer = document.getElementById('couponContainer');

    var newCoupon = document.createElement('div');
    newCoupon.className = 'coupon';

    var couponTitle = document.createElement('p');
    couponTitle.textContent = couponCode;

    var expirationDate = document.createElement('p');
    expirationDate.textContent = '유효기간 : ' + new Date().toISOString().split('T')[0] + '까지'; // 현재 날짜로 설정

    newCoupon.appendChild(couponTitle);
    newCoupon.appendChild(expirationDate);
    couponContainer.appendChild(newCoupon);

    // 입력 필드 초기화
    document.getElementById('couponCode').value = '';
}