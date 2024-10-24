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

document.addEventListener('DOMContentLoaded', () => {
  // 모든 카테고리 항목을 선택
  const categoryItems = document.querySelectorAll('.category-item');

  // 각 카테고리 항목에 대해 이벤트 리스너 추가
  categoryItems.forEach((item) => {
    const categoryTitle = document.querySelector('.category-title');
    const subCategory = document.querySelector('.sub-category');
    const toggleIcon = document.querySelector('.toggle-icon');

    // 카테고리 제목을 클릭하면 서브 카테고리 보이기/숨기기 + 아이콘 변경
    categoryTitle.addEventListener('click', () => {
      if (subCategory.style.display === 'none' || subCategory.style.display === '') {
        subCategory.style.display = 'block';  // 서브 카테고리 보이기
        toggleIcon.src = '../assets/images/shopping/arrowup.png';  // 아이콘을 위로 변경
      } else {
        subCategory.style.display = 'none';  // 서브 카테고리 숨기기
        toggleIcon.src = '../assets/images/shopping/arrow.png';  // 아이콘을 아래로 변경
      }
    });

    // 마우스가 서브 카테고리에서 벗어났을 때 서브 카테고리 숨기기 + 아이콘 변경
    subCategory.addEventListener('mouseleave', () => {
      subCategory.style.display = 'none';
      toggleIcon.src = '../assets/images/shopping/arrow.png';  // 아이콘을 원래 상태로 변경
    });
  });
});

document.addEventListener('DOMContentLoaded', () => {
  const allcategoryTitle = document.querySelector('.all-category-title');
  const allsubCategory = document.querySelector('.all-sub-category');
  const alltoggleIcon = document.querySelector('.toggle-icon');

  let isSubCategoryVisible = false; // 서브 카테고리의 상태를 저장하는 변수

  // 카테고리 제목을 클릭했을 때 실행되는 함수
  allcategoryTitle.addEventListener('click', () => {
    isSubCategoryVisible = !isSubCategoryVisible;  // 상태 토글

    if (isSubCategoryVisible) {
      allsubCategory.style.display = 'block';  // 서브 카테고리 보이기
      alltoggleIcon.src = '../assets/images/shopping/arrowup.png'; // 아이콘을 위로 변경
    } else {
      allsubCategory.style.display = 'none';  // 서브 카테고리 숨기기
      alltoggleIcon.src = '../assets/images/shopping/arrow.png'; // 아이콘을 아래로 변경
    }
    allsubCategory.addEventListener('mouseleave', () => {
      allsubCategory.style.display = 'none';
      alltoggleIcon.src = '../assets/images/shopping/arrow.png';  // 아이콘을 원래 상태로 변경
    });
  });
});

// 슬라이드

let currentSlide = 0; // 현재 슬라이드 위치를 저장하는 변수
const slides = document.querySelectorAll('.slider img'); // 슬라이드 이미지들을 선택
const totalSlides = slides.length; // 슬라이드의 총 개수

// 슬라이드를 이동하는 함수
function moveSlide(direction) {
    currentSlide += direction;

    // 슬라이드 경계 체크 (첫 번째 또는 마지막 슬라이드로 이동)
    if (currentSlide < 0) {
        currentSlide = totalSlides - 1; // 마지막 슬라이드로 이동
    } else if (currentSlide >= totalSlides) {
        currentSlide = 0; // 첫 번째 슬라이드로 이동
    }

    // 슬라이더의 위치를 이동
    const slider = document.querySelector('.slider');
    slider.style.transform = `translateX(-${currentSlide * 100}%)`;
}

// DOM이 완전히 로드된 후에 함수가 호출되도록 설정
window.addEventListener('DOMContentLoaded', () => {
    console.log('Slides loaded:', slides);
});







