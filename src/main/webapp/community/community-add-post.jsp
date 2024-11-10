<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/powpow/assets/css/community/community-add-post.css">
  <title>addPost</title>
</head>
<body>
  <div class="addPost-wrapper">

    <!-- 헤더 -->
	<jsp:include page="../header.jsp"></jsp:include>

    <div class="upload-wrapper">
      <div class="post-wrapper">
        <!-- 디자인 용 -->
        <div class="image-wrapper">
          <div id="dummy-content-wrap">
            <div class="main-image-dummy">
              	<label for="file-upload">
	              <div class="main-img-dummy">
                  <span class="h5">화면을 눌러 이미지를 추가하세요<br>(최대 5장까지 가능합니다)</span>
	              </div>
              	</label>
            </div>
            <div class="sub-images-wrap-dummy">
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
            </div>
          </div>
          
          <!-- 실제 이미지가 보여지는 곳 -->
          <div id="main-content-wrap">
            <div class="main-image">
              <div class="main-img sub-image"></div>
              <div class="close-button">
                <img src="/powpow/assets/images/community/exit-icon30.png" alt="이미지 추가 취소">
              </div>
              <button type="button" class="tag-button">태그 추가 버튼</button>
              <div class="tag-popup">
                <div class="tag-product">
                  <div class="search-wrap">
	                  <input type="text" class="search" placeholder="상품명 검색">
	                  <p>취소</p>
                  </div>
                  <p>+상품 직접 등록</p>
                  <div class="taged-products">
                  	<!-- 동적처리 -->
                  </div>
                </div>
           
                <button type="button" onclick="cancel()">위치 다시 선택</button>
              </div>
            </div>
            <div class="sub-images-wrap">
              <div class="sub-img sub-image"></div>
              <div class="sub-img sub-image"></div>
              <div class="sub-img sub-image"></div>
              <div class="sub-img sub-image"></div>
            </div>
          </div>
        </div>

        <!-- 글 작성하는 칸 -->
        <div>
        	<form method="post" action="test">
				<input class="upload" type="submit" value="업로드">
		        <div class="writer-box">
		          <textarea name="write" id="write"
		            placeholder="오늘 당신의 반려동물은 무엇을 했나요?&#10;당신이 바라보는 모습을 수백만 포포인들과 나눠보세요!"></textarea>
		        </div>
		        <input id="file-upload" type="file" multiple>
	        </form>
        </div>
      </div>
    </div>
   </div>
   
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>

</body>

<script>

  //이미지 추가하기 

  //구현 목표 

  //피씨에서 이미지 추가한 걸 리스트에 담기. 
  //조건문 추가해서 5개 이상이면 알림창으로 이미지는 5개까지만 추가해주세요! 팝업 띄우기

  const files = document.querySelector("#file-upload");
  const images = document.querySelectorAll(".sub-image");
  const dummyContent = document.querySelector("#dummy-content-wrap");
  const mainContent = document.querySelector("#main-content-wrap");
  const mainImage = document.querySelector(".main-image");
  const tagPopup = document.querySelector(".tag-popup");
  const tagbutton = document.querySelector(".tag-button");
  
  files.addEventListener("change", (e) => {
    const uploadFiles = Array.from(e.target.files);
	
    for (let i = 0; i < uploadFiles.length; i++) {
      let reader = new FileReader();
      reader.readAsDataURL(e.target.files[i])
      reader.onload = (e) => {
        if (uploadFiles.length <= 5) {
          images[i].style.backgroundImage = "url(" + e.target.result + ")";
          dummyContent.style.display = "none";
          mainContent.style.display = "block";

        } else {
          return;
          alert('이미지는 5개까지만 첨부 가능합니다.');
          
        }
      }
    }

  })

  //이미지 팝업 끄고, 다시 이미지 추가하기 {
  const closeBtn = document.querySelector(".close-button");

  closeBtn.addEventListener("click", () => {
    mainContent.style.display = "none";
    dummyContent.style.display = "block";
    files.value = '';
    console.log("files.files", files.files)
    
  })

  // 이미지를 클릭하면 태그 박스를 삽입

  tagbutton.addEventListener("click", (e) => {
    e.target.style.display = "none";
    tagPopup.style.display = "block";
  })

  globalThis.count = 0;
  mainImage.addEventListener("click", (e) => {

    const firstLayerX = e.offsetX;
    const firstLayerY = e.offsetY;
    console.log("e", e)
    console.log(firstLayerX)
    console.log(firstLayerY)
    count++
	console.log(e.target)
    if (count == 2 && firstLayerX > 0 && firstLayerY > 0 && e.target.className !== "search") {
   	  tagPopup.style.left = e.offsetX + "px";
      tagPopup.style.top = e.offsetY + "px";
    } else {
      return;
    }

  })

  const cancel = () => { count = 0; return; }

  //업로드 확인
  const form = document.querySelector("#posts");
  const post = document.querySelector("#posts input");
  const uploadButton = document.querySelector(".upload");
  const tagedProduct = document.querySelector(".taged-products"); 

  uploadButton.addEventListener("click", () => {
    if (!post.value) {
      return alert("작성된 내용이 없습니다!");
    } else {
      form.submit();
    }
  })
  
  const products = JSON.parse(`${products}`);
  const defaultProducts = products.slice(0, 2);
  const serachInput = document.querySelector("input.search")
  
  defaultProducts.forEach((product) => {
    			tagedProduct.innerHTML += (
    				"<div>" +
	                  	"<div class='image'></div>" +
	                    "<div class='taged-product'>" +
	                      "<div class='taged-product-image'>" +
	                      	"<img src='/powpow/assets/images/product/"+ product.productImage +"' />" +
	                      "</div>" +
	                      "<div class='taged-product-title'>" +
	                      	"<p class='title'>"+ product.productName +"</p>" +
	                      	"<span class='sub'>"+ product.productPrice +"</span>" +
	                      "</div>" +
	                      "<button class='taged-product-button' type='button'>선택</button>" +
	                    "</div>" +
                  	"</div>"		
    			);
   		})
  
  
  
  
  	serachInput.addEventListener("keydown", (e) => {
    let searchKeyword = e.target.value;
    if(e.key === 'Enter'){
    	tagedProduct.innerHTML = "";
    	let serachProducts = products.filter((product) => product.productName.includes(searchKeyword));
    	serachProducts.forEach((product) => {
    			tagedProduct.innerHTML += (
    				"<div>" +
	                  	"<div class='image'></div>" +
	                    "<div class='taged-product'>" +
	                      "<div class='taged-product-image'>" +
	                      	"<img src='/powpow/assets/images/product/"+ product.productImage +"' />" +
	                      "</div>" +
	                      "<div class='taged-product-title'>" +
		                  	"<p class='title'>"+ product.productName +"</p>" +
	                      	"<span class='sub'>"+ product.productPrice +"</span>" +
	                      "</div>" +
	                      "<button class='taged-product-button' type='button'>선택</button>" +
	                    "</div>" +
                  	"</div>"		
    			);
   		})
    	
    }
    	
  })

</script>
</html>