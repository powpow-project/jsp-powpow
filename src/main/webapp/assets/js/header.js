const headerContainer = document.querySelector(".header-container");
const mainMenus = document.querySelectorAll(".menu-wrap .menu");
const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
const subMenuAll = document.querySelector(".sub-menu-wrap");
const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");
const subMenuBg = document.querySelector(".sub-menu-wrap-bg");

let hoverTimeout; // 타임아웃을 저장할 변수

headerContainer.addEventListener("mouseover", () => {
	clearTimeout(hoverTimeout); // 기존에 설정된 타임아웃이 있으면 제거
	subMenuUl.forEach((ul) => {
		ul.style.height = "300px";
		subMenuBg.style.display = "block";
	});
});

headerContainer.addEventListener("mouseleave", () => {
	hoverTimeout = setTimeout(() => {
		subMenuUl.forEach((ul) => {
			ul.style.height = "0";
			subMenuBg.style.display = "none";
		});
	}, 100); // 100ms 지연 후 메뉴를 닫음
});

subMenus.forEach((sub, i) => {
	sub.addEventListener("mouseover", () => {
		clearTimeout(hoverTimeout); // 서브메뉴에서도 마우스 오버 시 타임아웃 제거
		subMenuUl.forEach((ul) => {
			ul.style.height = "300px";
			subMenuBg.style.display = "block";
		});
	});

	sub.addEventListener("mouseleave", () => {
		hoverTimeout = setTimeout(() => {
			subMenuUl.forEach((ul) => {
				ul.style.height = "0";
				subMenuBg.style.display = "none";
			});
		}, 100); // 100ms 지연 후 서브메뉴를 닫음
	});
});

let slideIndex = 0;
 showSlides(slideIndex);
 autoSlides();

 function showSlides(n) {
   const slides = document.querySelectorAll(".slide");
   const dots = document.querySelectorAll(".dot");

   console.log(slides);  // 여기서 확인
   console.log(dots);    // 여기서 확인

   if (slides.length === 0 || dots.length === 0) {
     console.log("슬라이드나 도트 요소를 찾을 수 없습니다.");
     return;  // 요소가 없으면 함수 종료
   }

   if (n >= slides.length) {
     slideIndex = 0;
   }
   if (n < 0) {
     slideIndex = slides.length - 1;
   }

   // 모든 슬라이드를 숨김
   slides.forEach((slide) => {
     slide.style.display = "none";
   });

   // 모든 도트를 비활성화
   dots.forEach((dot) => {
     dot.classList.remove("active");
   });

   // 현재 슬라이드와 도트 표시
   slides[slideIndex].style.display = "block";
   dots[slideIndex].classList.add("active");
 }

 // 자동 슬라이드 기능
 function autoSlides() {
   showSlides(slideIndex += 1);
   setTimeout(autoSlides, 3000); // 3초 간격
 }

 // 도트 클릭으로 슬라이드 이동
 function currentSlide(n) {
   slideIndex = n - 1;
   showSlides(slideIndex);
 }

