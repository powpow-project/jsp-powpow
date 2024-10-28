/**
 * 
 */

//쿠폰팝업
//Get the modal and the button
const modal = document.getElementById('myModal');
const openButton = document.getElementById('openModalButton');
const closeButton = document.getElementById('closeModalButton');
const addButton = document.querySelector('.add-coupon');

//초기 상태를 숨김으로 설정
modal.style.display = "none"; // Hide the modal initially

//When the user clicks the button, open the modal
openButton.onclick = function() {
	modal.style.display = "flex"; // Show the modal
}

//When the user clicks on the close button, close the modal
closeButton.onclick = function() {
	modal.style.display = "none"; // Hide the modal
}

//When the user clicks outside the modal content, close the modal
window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none"; // Hide the modal
	}
}

//Popup switch
const switch1 = document.querySelector(".switchto1");
const switch2 = document.querySelector(".switchto2");
const mainSections = document.querySelectorAll(".main-content > div"); // 모든 main-content div 선택

//초기 상태 설정
mainSections[0].style.display = "block"; // 쿠폰함 보이기
mainSections[1].style.display = "none"; // 사용내역 숨기기
switch1.classList.add('active'); // 초기 상태에서 switch1 활성화

switch1.addEventListener("click", () => {
	mainSections[0].style.display = "block"; // 쿠폰함 보이기
	mainSections[1].style.display = "none"; // 사용내역 숨기기
	switch1.classList.add('active'); // switch1 활성화
	switch2.classList.remove('active'); // switch2 비활성화
})

switch2.addEventListener("click", () => {
	mainSections[0].style.display = "none"; // 쿠폰함 숨기기
	mainSections[1].style.display = "block"; // 사용내역 보이기
	switch2.classList.add('active'); // switch2 활성화
	switch1.classList.remove('active'); // switch1 비활성화
})
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

/*function displayProducts() {
	productList.innerHTML = ''; // 기존 상품 초기화
	const template = document.getElementById('product-template');

	orderedProducts.forEach(product => {
		const productClone = template.content.cloneNode(true);
		productClone.querySelector('img').src = product.image;
		productClone.querySelector('span').textContent = product.name;
		productList.appendChild(productClone);
	});
}*/

	const orderContainer = document.getElementById('order-container');
	const emptyMessage = document.getElementById('empty-message');
	const productList = document.getElementById('product-list');

	// 주문 상품 배열
	let orderedProducts = [];

	// 주문 상품 추가 함수
	function addProduct(product) {
		orderedProducts.push(product);
		updateOrderDisplay();
	}

	// 주문 상태 업데이트 함수
	function updateOrderDisplay() {
		if (orderedProducts.length === 0) {
			emptyMessage.style.display = 'block';
			productList.style.display = 'flex';
		} else {
			emptyMessage.style.display = 'none';
			productList.style.display = 'flex';
			displayProducts();
		}
	}

	// 주문 상품 표시 함수
	function displayProducts() {
		productList.innerHTML = ''; // 기존 상품 초기화
		orderedProducts.forEach(product => {
			const productItem = document.createElement('div');
			productItem.className = 'product-item';
			productItem.innerHTML = `<div style="display:flex;
			flex-direction:row; gap:10px;"><img src="${product.image}" alt="${product.name}"><span>${product.name}</span><span>${product.price}원</span></div>`;
			productList.appendChild(productItem);
		});
	}
	


	// 예시: 주문 상품 추가
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal1.jpg',
	    price: 10000, // 가격 추가
	    orderDate: '2024-10-28' // 주문 날짜 추가
	});
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal33.jpg',
	    price: 15000,
	    orderDate: '2024-10-28'
	});
	
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal43.jpg',
	    price: 8000,
	    orderDate: '2024-10-28'
	});
	
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal44.jpg',
	    price: 12000,
	    orderDate: '2024-10-28'
	});
	
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal44.jpg',
	    price: 12000,
	    orderDate: '2024-10-28'
	});
	
	addProduct({
	    name: '상품명',
	    image: '../assets/images/product/royal44.jpg',
	    price: 12000,
	    orderDate: '2024-10-28'
	});
	
	
	
	