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
    const categoryElement = document.getElementsByName('productType')[0];

    if (categoryElement) { // 요소가 존재하는지 확인
        categoryElement.addEventListener('change', (e) => {
            const selectedCategory = e.target.value; 
            const products = document.querySelectorAll('.product');

            // 모든 상품 숨기기
            products.forEach((product) => {
                const productCategory = product.getAttribute('data-category');
                // 전체 상품 또는 선택한 카테고리의 상품만 보이게 설정
                if (selectedCategory === 'all' || productCategory === selectedCategory) {
                    product.style.display = 'block';  // 상품 보이기
                } else {
                    product.style.display = 'none';   // 상품 숨기기
                }
            });
        });
    } else {
        console.error("Product category element not found.");
    }
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
	        toggleIcon.src = '../cart/img/arrowup.png';  // 아이콘을 위로 변경
	      } else {
	        subCategory.style.display = 'none';  // 서브 카테고리 숨기기
	        toggleIcon.src = '../cart/img/arrow.png';  // 아이콘을 아래로 변경
	      }
	    });

	    // 마우스가 서브 카테고리에서 벗어났을 때 서브 카테고리 숨기기 + 아이콘 변경
	    subCategory.addEventListener('mouseleave', () => {
	      subCategory.style.display = 'none';
	      toggleIcon.src = '../cart/img/arrow.png';  // 아이콘을 원래 상태로 변경
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
	      alltoggleIcon.src = '../cart/img/arrowup.png'; // 아이콘을 위로 변경
	    } else {
	      allsubCategory.style.display = 'none';  // 서브 카테고리 숨기기
	      alltoggleIcon.src = '../cart/img/arrow.png'; // 아이콘을 아래로 변경
	    }
	    allsubCategory.addEventListener('mouseleave', () => {
	      allsubCategory.style.display = 'none';
	      alltoggleIcon.src = '../cart/img/arrow.png';  // 아이콘을 원래 상태로 변경
	    });
	  });
	});
	
	
	document.querySelectorAll('.sub-logo-title-menu a').forEach(link => {
	  link.addEventListener('click', function(event) {
	    event.preventDefault();

	    document.querySelectorAll('.product-wrap > div').forEach(section => {
	      section.style.display = 'none';
	    });

	    const targetId = this.getAttribute('data-target');
	    document.getElementById(targetId).style.display = 'contents';
	  });
	});

