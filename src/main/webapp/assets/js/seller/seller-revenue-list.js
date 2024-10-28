/**
 * 
 */
const list = document.querySelectorAll("li");
const div = document.querySelectorAll("ul > li > div");
const ps = document.querySelectorAll("ul > li > p");
const menu = document.querySelector(".menu-icon");
const menubars = document.querySelectorAll("#menu-frame");
const resetBtn = document.querySelector('.reset-btn');

resetBtn.addEventListener('click', function () {
  const dates = document.querySelectorAll('input[type="date"]');
   
    dates.forEach(date => {
      date.value = '';
  });
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