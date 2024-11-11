let catSwiper = new Swiper(".cat-swiper", {
    slidesPerView: 4,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

let dogSwiper = new Swiper(".dog-swiper", {
    slidesPerView: 4,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});
let bridSwiper = new Swiper(".brid-swiper", {
    slidesPerView: 4,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});
let fishSwiper = new Swiper(".fish-swiper", {
    slidesPerView: 4,
    spaceBetween: 10,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

function initializeCategoryFilter(swiperInstance, itemsSelector, wrapperSelector, categoryButtonSelector) {
    const items = document.querySelectorAll(itemsSelector);
    const wrapper = document.querySelector(wrapperSelector);
    const categoryButtons = document.querySelectorAll(categoryButtonSelector);
    
    NodeList.prototype.filter = Array.prototype.filter;

    categoryButtons.forEach(function(button) {
        button.addEventListener("click", function(e) {
            this.setAttribute("class", "category-button active");
            categoryButtons
                .filter((button) => button.innerText != this.innerText)
                .forEach((button) => { button.setAttribute("class", "category-button"); });

            const selectedCategory = e.target.innerText;
            const filteredItems = items.filter((item) => item.dataset["category"].split(" ")[1] === selectedCategory			
            );

            wrapper.innerHTML = "";
            filteredItems.forEach((div) => {
                wrapper.append(div);
            });

            swiperInstance.slides = filteredItems;
            swiperInstance.update();
        });
    });
}


initializeCategoryFilter(catSwiper, ".cat-items", ".cats-swiper-warpper", ".cat-category-buttons > button");
initializeCategoryFilter(dogSwiper, ".dog-items", ".dogs-swiper-warpper", ".dog-category-buttons > button");
initializeCategoryFilter(dogSwiper, ".brid-items", ".brids-swiper-warpper", ".brid-category-buttons > button");
initializeCategoryFilter(dogSwiper, ".fish-items", ".fishs-swiper-warpper", ".fish-category-buttons > button");
