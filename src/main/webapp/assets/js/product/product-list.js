/**
 * 
 */
const deleteButtons = document.querySelectorAll(".change-buttons .delete-btn")
const popup = document.querySelector(".pop-up")
const closePopupButton = document.querySelector(".cancel-btn")
const deletePopupButton = document.querySelector(".check-buttons .delete-btn")
const popupBg = document.querySelector(".popup-bg");
const list = document.querySelectorAll("li");
const div = document.querySelectorAll("ul > li > div");
const ps = document.querySelectorAll("ul > li > p");
const menu = document.querySelector(".menu-icon");
const menubars = document.querySelectorAll("#menu-frame");

globalThis.productid = ""

deleteButtons.forEach((button, i) => {
  button.addEventListener("click", (e) => {
    popup.style.display = "flex";
    popupBg.style.display = "block";
	globalThis.productid = e.target.dataset["productid"];
  });
});

deletePopupButton.addEventListener("click", (e) => {
  popup.style.display = "none";
  popupBg.style.display = "none";  
  globalThis.productid
  document.location.href = "seller-delete-ok.seller?id="+globalThis.productid;
  
});

closePopupButton.addEventListener("click", () => {
  popup.style.display = "none";
  popupBg.style.display = "none";
});


document.addEventListener("DOMContentLoaded", function(){
  const reset = document.querySelector(".reset-btn");
  const searchInput = document.querySelector(".search");
  
  reset.addEventListener("click", ()=>{
    searchInput.value = "";
  })
});

list.forEach((li, i) => {
  li.addEventListener("mouseover", () => {
    div[i].style.height = `${div[i].children.length * 40}px`;
  });
  li.addEventListener("mouseleave", () => {
    div[i].style.height = 0;
  });
});

menubars.forEach(menubar => {
  menu.addEventListener("click", function() {
    menubar.style.display = "flex";
  })
})
menubars.forEach(menubar => {
  menubar.addEventListener("mouseenter", function() {
    menubar.style.display = "flex";
  })
})
menubars.forEach(menubar => {
  menubar.addEventListener("mouseleave", function() {
    menubar.style.display = "none";
  })
})

document.addEventListener('DOMContentLoaded', function() {
    // 모든 .product-status 요소를 찾음
    const statusCells = document.querySelectorAll('.product-status');

    // 각 요소에 대해 반복
    statusCells.forEach(function(cell) {
        // data-stock 속성에서 재고 값을 가져옴
        const stock = cell.getAttribute('data-stock');

        // 재고 값이 있으면 "판매중", 없으면 "품절"로 표시
        if (stock && parseInt(stock) > 0) {
            cell.textContent = '판매중';
        } else {
            cell.textContent = '품절';
        }
    });
});





