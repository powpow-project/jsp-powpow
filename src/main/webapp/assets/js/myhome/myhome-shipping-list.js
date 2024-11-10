/**
 * 
 */

//쿠폰팝업
//Get the modal and the button
const modal = document.getElementById('myModal');
const openButton = document.getElementById('openModalButton');
const closeButton = document.getElementById('closeModalButton');
const addButton = document.querySelector('.add-coupon');

//숨기기
modal.style.display = "none"; 


openButton.onclick = function() {
	modal.style.display = "flex"; 
}

closeButton.onclick = function() {
	modal.style.display = "none"; 
}


window.onclick = function(event) {
	if (event.target == modal) {
		modal.style.display = "none"; 
	}
}

//Popup switch
const switch1 = document.querySelector(".switchto1");
const switch2 = document.querySelector(".switchto2");
const mainSections = document.querySelectorAll(".main-content > div"); 

//초기 상태 설정
mainSections[0].style.display = "block"; 
mainSections[1].style.display = "none"; 
switch1.classList.add('active'); 

switch1.addEventListener("click", () => {
	mainSections[0].style.display = "block"; 
	mainSections[1].style.display = "none"; 
	switch1.classList.add('active'); 
	switch2.classList.remove('active'); 
})

switch2.addEventListener("click", () => {
	mainSections[0].style.display = "none"; 
	mainSections[1].style.display = "block"; 
	switch2.classList.add('active'); 
	switch1.classList.remove('active'); 
})


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
	    price: 10000, 
	    orderDate: '2024-10-28'
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
	
	
	
	