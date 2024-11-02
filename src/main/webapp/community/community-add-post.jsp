<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../assets/css/community/community-add-post.css">
  <link rel="stylesheet" href="../assets/css/community/index.css">
  <link rel="stylesheet" href="../assets/css/community/header.css">
  <title>addPost</title>
</head>
<body>
  <div class="addPost-wrapper">

  <div class="othersPost-wrapper">
			<div class="header-container">
			<div id="header-wrap">
				<div id="border">
					<div id="nav">
						<div class="left">
							<img src="../assets/images/powpow-logo.png" alt="로고" />
						</div>
						<div class="right">
							<div class="icons">
								<a href="#"><img src="../assets/images/search-icon.jpg"
									alt="검색" /></a> <a href="../myhome/shipping-list.myhome"> <img
									src="../assets/images/truck-icon.jpg" alt="배송" />
								</a> <a href="../cart-check.product"> <img
									src="../assets/images/shopping-cart-icon.jpg" alt="카트" /></a>
							</div>
							<div class="sector"></div>
							<div class="login">
								<a href="../member/login.member">로그인</a>
							</div>
						</div>
					</div>

					<div class="menu-container">
						<ul class="menu-wrap h4">
							<li class="menu"><a href="../product/main.product">스토어</a></li>
							<li class="menu"><a
								href="../community/community-main.community">커뮤니티</a></li>
							<li class="menu"><a href="../list.myhome">마이홈</a></li>
							<li class="menu"><a href="#">이벤트</a></li>
						</ul>
						<div id="sector"></div>
						<div class="sub-menu-wrap">
							<ul>
								<li class="sub-menu"><a
									href="../product/product-dog.product?productCategoryName=강아지">강아지</a></li>
								<li class="sub-menu"><a
									href="../product/product-cat.product?productCategoryName=고양이">고양이</a></li>
								<li class="sub-menu"><a
									href="../product/product-bird.product?productCategoryName=새">새</a></li>
								<li class="sub-menu"><a
									href="../product/product-fish.product?productCategoryName=물고기">물고기</a></li>
								<li class="sub-menu"><a
									href="../product/product-health-main.product?productCategoryName=헬스+">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="../community/community-main.community">홈</a></li>
								<li class="sub-menu"><a href="#">헬스+</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="../myhome/list.myhome">나의
										정보</a></li>
								<li class="sub-menu"><a href="../myhome/pet-list.myhome">반려동물
										정보</a></li>
								<li class="sub-menu"><a
									href="../myhome/shipping-list.myhome">나의 쇼핑</a></li>
								<li class="sub-menu"><a href="../community/read.community">내
										게시글</a></li>
							</ul>
							<ul>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
								<li class="sub-menu"><a href="#"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


    <div class="addPost">

      <div class="addpic-wrapper">
        <div class="button-first"><button>업로드</button></div>
        <div class="section"></div>
        <div class="addpic">
          <div class="addpic-smallthumbnail">
            <img src="../assets/images/community/communitycat2.png" alt="썸네일 고양이">
          </div>
          <div class="addpic-plus-button">
            <img id="plus-img" src="../assets/images/community/plus.png" alt="추가버튼">
            <input type="file" name="file1" id="file1"></input>
          </div>
        </div>
        <div class="addpic-pc-wrapper">
          <div class="addpic-pc-relative">
            <div class="addpic-pc">
              <img src="../assets/images/community/postedCat.png" alt="고양이 사진 업로드됨">
            
            
                <div class="button-tag-popup">
                      <button class="choose-tag-button">
                        <a href="#">
                         + 상품 태그 추가
                        </a>
                      </button>

  
                      <div class="tag-popup disable">
                       <p class="h5">태그할 상품을 누르세요 </p>
                      </div>
       
                    
                  <div id="inner-html">
                    <div class="tag-popup-plus">
                      <img src="/powpowcommunity/images/ph_plus-yellow.png" alt="플러스 버튼">
                    </div>
                    <div class="tag-popup-select">
                      <form>
                        <div class="tag-search-box">
                          <input type="text" id="search" value="상품명 검색"></input>
                          <button class="no">취소</button>
                        </div>
                      </form>
                      <div class="plus-product">
                        + 상품 직접 등록
                      </div>
                      <div class="product1-wrapper">
                        <div class="product1">
                          <div class="image-area">
                          </div>
                          <div class="explain">
                            <p class="explain-title">보호리</p>
                            <p class="explain-info">덴탈 뉴트리 냠냠</p>
                          </div>
                          <div class="product-button-wrapper">
                            <button>선택</button>
                          </div>
                        </div>
                      </div>
                      <div class="product2-wrapper">
                        <div class="product2">
                          <div class="image-area">
                          </div>
                          <div class="explain">
                            <p class="explain-title">디어랩스</p>
                            <p class="explain-info">울애기 쌩쌩(눈물/관절/피부/면역/장케어)</p>
                          </div>
                          <div class="product-button-wrapper">
                            <button>선택</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
        
        <div class="explain-wrapper">
          <form class="explain-box" action="" method="get">
            <textarea id='explain' onfocus="this.placeholder = ''"placeholder="오늘 당신의 반려동물은 무엇을 했나요?&#13;&#10;당신이 바라보는 모습을 수백만 포포인들과 나눠보세요!" wrap="hard"></textarea>


          </form>
        </div>
        
        
      </div>
      
      <div class="powpow-info">
        <img src="/powpowcommunity/images/Group 241.png" alt="포포 정보">
      </div>

    </div>
  </div>
   


    
</body>
<script>
  //헤더 코드

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

  // 태그 버튼 클릭하면 태그를 추가하세요가 나타남, 끄면 꺼짐.
  const tagButton = document.querySelector(".choose-tag-button");
  const tagPopup = document.querySelector(".tag-popup");

    tagButton.addEventListener("click", () => {
      if(tagPopup.className.includes("disable")){
        tagPopup.className = "tag-popup enable";
      }else{
        tagPopup.className = "tag-popup disable";
      }
    })

  //화면 영역 클릭하면 + 버튼이 나타남.
  const imageArea = document.querySelector(".addpic-pc");

  tagButton.addEventListener("click", () => {

    imageArea.addEventListener("click", (e) => {
    console.log(e)
    console.log("x좌표", e.layerX)
    console.log("y좌표", e.layerY)
    const innerHtml = document.getElementById('inner-html');
      innerHtml.style.display = "flex";
      innerHtml.style.position = "absolute";
      innerHtml.style.left = `${e.layerX}px`;
      innerHtml.style.top = `${e.layerY}px`;
      imageArea.appendChild(innerHtml);
    })
  })


  
  
  
  





</script>
</html>