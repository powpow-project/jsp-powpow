let catSwiper = new Swiper(".cat-swiper", {
	slidesPerView: 4,
	spaceBetween: 10,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});

NodeList.prototype.filter = Array.prototype.filter;
const cats = document.querySelectorAll(".cat-items");
const catSwiperSlide = document.querySelector(".cat-swiper");
const catsWrapper = document.querySelector(".cats-swiper-warpper");
const categoryButtons = document.querySelectorAll(".cat-category-buttons > button");

categoryButtons.forEach(function(button) {
	button.addEventListener("click", function(e) {
		this.setAttribute("class", "category-button active");
		categoryButtons
			.filter((button) => button.innerText != this.innerText)
			.forEach((button) => { button.setAttribute("class", "category-button") });

		let clickInnerText = e.target.innerText;
		let catsSenior = cats.filter((cat) => { return cat.dataset["category"].split(" ")[1] === clickInnerText })
		catsWrapper.innerHTML = "";

		catsSenior.forEach((div) => {
			catsWrapper.append(div);
		})
		catSwiper.slides = catsSenior;
		catSwiper.update();
	})
});
let dogSwiper = new Swiper(".dog-swiper", {
	slidesPerView: 4,
	spaceBetween: 10,
	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
});







