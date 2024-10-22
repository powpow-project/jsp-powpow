/**
 * 
 */
const detailButtons = document.querySelectorAll(".details-button")
const popup = document.querySelector(".form-frame")
const closePopupButton = document.querySelector(".close-btn")
const popupBg = document.querySelector(".popup-bg");
const list = document.querySelectorAll("li");
const div = document.querySelectorAll("ul > li > div");
const ps = document.querySelectorAll("ul > li > p");
const menu = document.querySelector(".menu-icon");
const menubars = document.querySelectorAll("#menu-frame");

detailButtons.forEach(button => {
  button.addEventListener("click", () => {
    popup.style.display = "flex";
    popupBg.style.display = "block";
  });
});

closePopupButton.addEventListener("click", () => {
  popup.style.display = "none";
  popupBg.style.display = "none";
});

document.addEventListener("DOMContentLoaded", function(){
  const reset = document.querySelector(".reset-btn");
  const searches = document.querySelectorAll(".search");
  

searches.forEach(search => {
  reset.addEventListener("click", ()=>{
    search.value = "";
    })
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

menubars.forEach((menubar) => {
  menu.addEventListener("click", function () {
    menubar.style.display = "flex";
  });
});
menubars.forEach((menubar) => {
  menubar.addEventListener("mouseenter", function () {
    menubar.style.display = "flex";
  });
});
menubars.forEach((menubar) => {
  menubar.addEventListener("mouseleave", function () {
    menubar.style.display = "none";
  });
});
