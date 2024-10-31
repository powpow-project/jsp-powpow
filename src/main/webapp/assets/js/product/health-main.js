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


document.addEventListener('DOMContentLoaded', function() {

	// 강아지 슬라이더 설정
	const dogSlider = document.querySelector('.slider-container-dog .slider');
	const dogSliderItems = Array.from(document.querySelectorAll('.slider-container-dog .product'));
	const dogPrevBtn = document.querySelector('.slider-container-dog .prev');
	const dogNextBtn = document.querySelector('.slider-container-dog .next');

	let currentIndex = 0;
	const itemsToShow = 4; // 한 번에 보여줄 상품 수
	let itemWidth = dogSliderItems[0].offsetWidth; // 각 상품의 가로 길이

	// 슬라이더 위치 업데이트 함수
	const updateSliderPosition = () => {
		dogSlider.style.transform = `translateX(${-currentIndex * itemWidth}px)`;
	};

	// 다음 버튼 클릭 시 동작
	const handleNext = () => {
		if (currentIndex < dogSliderItems.length - itemsToShow) {
			currentIndex++;
		} else {
			currentIndex = 0; // 끝에 도달하면 처음으로 돌아가기
		}
		updateSliderPosition();
	};

	// 이전 버튼 클릭 시 동작
	const handlePrev = () => {
		if (currentIndex > 0) {
			currentIndex--;
		} else {
			currentIndex = Math.max(0, dogSliderItems.length - itemsToShow); // 처음에 도달하면 마지막으로 돌아가기
		}
		updateSliderPosition();
	};

	// 리사이즈 이벤트 처리
	const handleResize = () => {
		itemWidth = dogSliderItems[0].offsetWidth;
		updateSliderPosition();
	};

	// 이벤트 리스너 추가
	dogNextBtn.addEventListener('click', handleNext);
	dogPrevBtn.addEventListener('click', handlePrev);
	window.addEventListener('resize', handleResize);

	updateSliderPosition(); // 초기 슬라이더 위치 설정

	// 고양이 슬라이더 설정
	const catSlider = document.querySelector('.slider-container-cat .slider');
	const catSliderItems = Array.from(document.querySelectorAll('.slider-container-cat .product'));
	const catPrevBtn = document.querySelector('.slider-container-cat .prev');
	const catNextBtn = document.querySelector('.slider-container-cat .next');

	let catCurrentIndex = 0;

	// 고양이 슬라이더 위치 업데이트 함수
	const updateCatSliderPosition = () => {
		catSlider.style.transform = `translateX(${-catCurrentIndex * itemWidth}px)`;
	};

	// 고양이 다음 버튼 클릭 시 동작
	const handleCatNext = () => {
		if (catCurrentIndex < catSliderItems.length - itemsToShow) {
			catCurrentIndex++;
		} else {
			catCurrentIndex = 0; // 끝에 도달하면 처음으로 돌아가기
		}
		updateCatSliderPosition();
	};

	// 고양이 이전 버튼 클릭 시 동작
	const handleCatPrev = () => {
		if (catCurrentIndex > 0) {
			catCurrentIndex--;
		} else {
			catCurrentIndex = Math.max(0, catSliderItems.length - itemsToShow); // 처음에 도달하면 마지막으로 돌아가기
		}
		updateCatSliderPosition();
	};

	// 고양이 슬라이더 이벤트 리스너 추가
	catNextBtn.addEventListener('click', handleCatNext);
	catPrevBtn.addEventListener('click', handleCatPrev);

	// 새 슬라이더 설정
	const birdSlider = document.querySelector('.slider-container-bird .slider');
	const birdSliderItems = Array.from(document.querySelectorAll('.slider-container-bird .product'));
	const birdPrevBtn = document.querySelector('.slider-container-bird .prev');
	const birdNextBtn = document.querySelector('.slider-container-bird .next');

	let birdCurrentIndex = 0;

	// 새 슬라이더 위치 업데이트 함수
	const updateBirdSliderPosition = () => {
		birdSlider.style.transform = `translateX(${-birdCurrentIndex * itemWidth}px)`;
	};

	// 새 다음 버튼 클릭 시 동작
	const handleBirdNext = () => {
		if (birdCurrentIndex < birdSliderItems.length - itemsToShow) {
			birdCurrentIndex++;
		} else {
			birdCurrentIndex = 0; // 끝에 도달하면 처음으로 돌아가기
		}
		updateBirdSliderPosition();
	};

	// 새 이전 버튼 클릭 시 동작
	const handleBirdPrev = () => {
		if (birdCurrentIndex > 0) {
			birdCurrentIndex--;
		} else {
			birdCurrentIndex = Math.max(0, birdSliderItems.length - itemsToShow); // 처음에 도달하면 마지막으로 돌아가기
		}
		updateBirdSliderPosition();
	};

	// 새 슬라이더 이벤트 리스너 추가
	birdNextBtn.addEventListener('click', handleBirdNext);
	birdPrevBtn.addEventListener('click', handleBirdPrev);

	// 물고기 슬라이더 설정
	const fishSlider = document.querySelector('.slider-container-fish .slider');
	const fishSliderItems = Array.from(document.querySelectorAll('.slider-container-fish .product'));
	const fishPrevBtn = document.querySelector('.slider-container-fish .prev');
	const fishNextBtn = document.querySelector('.slider-container-fish .next');

	let fishCurrentIndex = 0;

	// 물고기 슬라이더 위치 업데이트 함수
	const updateFishSliderPosition = () => {
		fishSlider.style.transform = `translateX(${-fishCurrentIndex * itemWidth}px)`;
	};

	// 물고기 다음 버튼 클릭 시 동작
	const handleFishNext = () => {
		if (fishCurrentIndex < fishSliderItems.length - itemsToShow) {
			fishCurrentIndex++;
		} else {
			fishCurrentIndex = 0; // 끝에 도달하면 처음으로 돌아가기
		}
		updateFishSliderPosition();
	};

	// 물고기 이전 버튼 클릭 시 동작
	const handleFishPrev = () => {
		if (fishCurrentIndex > 0) {
			fishCurrentIndex--;
		} else {
			fishCurrentIndex = Math.max(0, fishSliderItems.length - itemsToShow); // 처음에 도달하면 마지막으로 돌아가기
		}
		updateFishSliderPosition();
	};

	// 물고기 슬라이더 이벤트 리스너 추가
	fishNextBtn.addEventListener('click', handleFishNext);
	fishPrevBtn.addEventListener('click', handleFishPrev);
});

//버튼 클릭시 
document.querySelectorAll('.category-button').forEach(button => {
    button.addEventListener('click', function() {
        // 모든 버튼의 active 클래스 제거
        document.querySelectorAll('.category-button').forEach(btn => btn.classList.remove('active'));

        // 클릭된 버튼에 active 클래스 추가
        this.classList.add('active');
    });
});
