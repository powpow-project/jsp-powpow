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

deleteButtons.forEach(button => {
  button.addEventListener("click", () => {
    popup.style.display = "flex";
    popupBg.style.display = "block";
  });
});

closePopupButton.addEventListener("click", () => {
  popup.style.display = "none";
  popupBg.style.display = "none";
});

deletePopupButton.addEventListener("click", () => {
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



