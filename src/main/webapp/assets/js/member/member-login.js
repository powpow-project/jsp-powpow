  
/*회원 판패자 페이지 구분*/

const memberBtn = document.querySelector(".member-btn");
const sellerBtn = document.querySelector(".seller-btn");
const mainContents = document.querySelectorAll(".main-content");

// 페이지 진입 시 member에 회색 포커스 유지
let activeBtn = "member"; 

// 회원 버튼 클릭 이벤트
memberBtn.addEventListener("click", () => {
    mainContents.forEach(content => content.style.display = "none"); 
    mainContents[0].style.display = "block"; 
    updateButtonState("member");
});

// 판매자 버튼 클릭 이벤트
sellerBtn.addEventListener("click", () => {
    mainContents.forEach(content => content.style.display = "none");
    mainContents[1].style.display = "block"; 
    updateButtonState("seller");
});

// 버튼 상태 업데이트
function updateButtonState(active) {
    if (active === "member") {
        memberBtn.classList.add("active");
        sellerBtn.classList.remove("active");
    } else {
        sellerBtn.classList.add("active");
        memberBtn.classList.remove("active");
    }
}

// 새로고침해두 member에 회색 포커스 유지
updateButtonState(activeBtn);

  
   

 
  
  // 유효성 검사하기
   // addEventListener
   // 아이디와 비밀번호의 빈 값을 검사해서 모두 입력했을 때 검증 완료를 alert()으로 띄우기!
   document.addEventListener("DOMContentLoaded", () => {
       const mebmerBtn = document.querySelector(".member-btn");
       const sellerBtn = document.querySelector(".seller-btn");
       const main = document.querySelectorAll(".main-content");

       mebmerBtn.addEventListener("click", () => {
           main[0].style.display = "block";
           main[1].style.display = "none";
       });

       sellerBtn.addEventListener("click", () => {
           main[0].style.display = "none";
           main[1].style.display = "block";
       });

	   
	   
       // 구매자 로그인 유효성 검사
       const buyerButton = document.querySelector(".main-content.member .login-button");
       const buyerId = document.querySelector(".main-content.member input[name=buyerEmail]");
       const buyerPassword = document.querySelector(".main-content.member input[name=buyerPassword]");
       const buyerIdResult = document.querySelector(".main-content.member #id-result");
       const buyerPasswordResult = document.querySelector(".main-content.member #password-result");
       
       // 판매자 로그인 유효성 검사
       const sellerButton = document.querySelector(".main-content.seller .login-button");
       const sellerId = document.querySelector(".main-content.seller input[name=sellerEmail]");
       const sellerPassword = document.querySelector(".main-content.seller input[name=sellerPassword]");
       const sellerIdResult = document.querySelector(".main-content.seller #id-result");
       const sellerPasswordResult = document.querySelector(".main-content.seller #password-result");

       globalThis.flag = [false, false]; // Initialize flags

       // 공통 유효성 검사 함수
       const validateInput = (input, result, index, isEmptyMessage) => {
           input.addEventListener("focus", () => {
               input.style.border = ""; // Reset border on focus
               result.innerText = ""; // Clear message
           });

           input.addEventListener("blur", () => {
               if (!input.value) {
                   input.style.border = "solid 2px red";
                   result.innerText = isEmptyMessage;
                   result.style.color = "red";
                   globalThis.flag[index] = false;
                   return;
               }
               globalThis.flag[index] = true;
           });

           input.addEventListener("input", () => {
               input.style.border = ""; // Reset border
               result.innerText = ""; // Clear message
           });
       };

       // 구매자 입력 필드 검증
       validateInput(buyerId, buyerIdResult, 0, "아이디를 입력하세요.");
       validateInput(buyerPassword, buyerPasswordResult, 1, "비밀번호를 입력하세요.");

       // 판매자 입력 필드 검증
       validateInput(sellerId, sellerIdResult, 0, "아이디를 입력하세요.");
       validateInput(sellerPassword, sellerPasswordResult, 1, "비밀번호를 입력하세요.");

       // 버튼 클릭 이벤트
       buyerButton.addEventListener("click", () => {
           if (globalThis.flag.filter((check) => check).length !== globalThis.flag.length) {
               alert("아이디 또는 비밀번호를 확인하세요.");
               return;
           }
		   document.querySelector(".main-content.member form").submit();

       });

       sellerButton.addEventListener("click", () => {
           if (globalThis.flag.filter((check) => check).length !== globalThis.flag.length) {
               alert("아이디 또는 비밀번호를 확인하세요.");
               return;
           }
			   document.querySelector(".main-content.seller form").submit();

       });
   });
   
   
   