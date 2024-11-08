/**
 * 
 */

//쿠폰팝업

const coupon = document.getElementById('myCoupon');
const openButton = document.getElementById('openCouponButton');
const closeButton = document.getElementById('closeCouponButton');
const addButton = document.querySelector('.add-coupon');

//초기 상태를 숨김으로 설정
coupon.style.display = "none"; // Hide the modal initially

//When the user clicks the button, open the modal
openButton.onclick = function () {
   coupon.style.display = "flex"; // Show the modal
}

//When the user clicks on the close button, close the modal
closeButton.onclick = function () {
   coupon.style.display = "none"; // Hide the modal
}

//When the user clicks outside the modal content, close the modal
window.onclick = function (event) {
   if (event.target == coupon) {
       coupon.style.display = "none"; // Hide the modal
   }
}

//팝업 왓다갔다 바뀌게 하기
const switch1 = document.querySelector(".switchto1");
const switch2 = document.querySelector(".switchto2");
const mainSections = document.querySelectorAll(".main-content > div"); // 모든 main-content div 선택


mainSections[0].style.display = "block"; 
mainSections[1].style.display = "none";
switch1.classList.add('active'); 

switch1.addEventListener("click", () => {
   mainSections[0].style.display = "block"; 
   mainSections[1].style.display = "none"; 
   switch1.classList.add('active'); 
   switch2.classList.remove('active'); 
})

switch2.addEventListener("click", () => {
   mainSections[0].style.display = "none";
   mainSections[1].style.display = "block";
   switch2.classList.add('active');
   switch1.classList.remove('active');
})
  addbutton.onclick = function () {
    coupon.style.display = "File";
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