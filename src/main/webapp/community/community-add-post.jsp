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

    <div class="header-container">
      <div id="header-wrap">
        <div id="border">
          <div id="nav">
            <div class="left">
              <img src="/powpowcommunity/images/main-logo.png" alt="로고">
            </div>
            <div class="right">
              <div class="icons">
                <a href="#"><img src="/powpowcommunity/images/search_icon 2.jpg" alt="검색"></a>
                <a href="#"><img src="/powpowcommunity/images/truck_transport_icon 2.jpg" alt="배송"></a>
                <a href="#"><img src="/powpowcommunity/images/shopping_cart_icon 2.jpg" alt="카트"></a>
              </div>
              <div class="sector"></div>
              <div class="login"><a href="#">로그인</a></div>
            </div>
          </div>
          <div class="menu-container">
            <ul class="menu-wrap h4">
              <li class="menu"><a href="#">스토어</a></li>
              <li class="menu"><a href="#">커뮤니티</a></li>
              <li class="menu"><a href="#">마이홈</a></li>
              <li class="menu"><a href="#">이벤트</a></li>
            </ul>
            <div id="sector"></div>
            <div class="sub-menu-wrap">
              <ul>
                <li class="sub-menu"><a href="#">강아지</a></li>
                <li class="sub-menu"><a href="#">고양이</a></li>
                <li class="sub-menu"><a href="#">새</a></li>
                <li class="sub-menu"><a href="#">물고기</a></li>
                <li class="sub-menu"><a href="#">헬스+</a></li>
              </ul>
              <ul>
                <li class="sub-menu"><a href="#">홈</a></li>
                <li class="sub-menu"><a href="#">헬스+</a></li>
              </ul>
              <ul>
                <li class="sub-menu"><a href="#">나의 정보</a></li>
                <li class="sub-menu"><a href="#">반려동물 정보</a></li>
                <li class="sub-menu"><a href="#">나의 쇼핑</a></li>
                <li class="sub-menu"><a href="#">내 게시글</a></li>
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

    <form action=".community" method="post" class="upload-wrapper">
      <div class="post-wrapper">
        <!-- 디자인 용 -->
        <div class="image-wrapper">
          <div id="dummy-content-wrap">
            <div class="main-image-dummy">
              <label for="file-upload">
                <div class="main-img-dummy">
                  <p class="h5">화면을 눌러 이미지를 추가하세요<br>(최대 5장까지 가능합니다)</p>
                </div>
              </label>
            </div>
            <div class="sub-images-wrap-dummy">
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
              <div class="sub-img-dummy"></div>
            </div>
            <input id="file-upload" type="file" multiple>
          </div>
          <!-- 실제 이미지가 보여지는 곳 -->
          <div id="main-content-wrap">
            <div class="main-image">
              <div class="main-img image"></div>
              <div class="close-button">
                <img src="/powpowcommunity/images/exit_icon30.png" alt="이미지 추가 취소">
              </div>
              <button type="button" class="tag-button">태그 추가 버튼</button>
              <div class="tag-popup">
                <p>태그 할 위치에 클릭해주세요!</p>
                <div class="tag-product">
                  <form action="" method="get">
                    <input type="text" class="search" placeholder="상품명 검색">
                  </form>
                  <p>취소</p>
                  <p>+상품 직접 등록</p>
                  <div class="taged-product">
                    <div class="image"></div>
                    <div class="title">
                      <p>보호리</p>
                      <p>덴탈 뉴트리 냠냠</p>
                    </div>
                    <button type="button" class="choose">선택</button>
                  </div>
                </div>
           
                <button type="button" onclick="cancel()">위치 다시 선택</button>
              </div>
            </div>
            <div class="sub-images-wrap">
              <div class="sub-img image"></div>
              <div class="sub-img image"></div>
              <div class="sub-img image"></div>
              <div class="sub-img image"></div>
            </div>
            <input id="file-upload" type="file" multiple>
          </div>
        </div>

        <!-- 글 작성하는 칸 -->

        <div class="writer-box">
          <textarea name="write" id="write"
            placeholder="오늘 당신의 반려동물은 무엇을 했나요?&#10;당신이 바라보는 모습을 수백만 포포인들과 나눠보세요!"></textarea>

        </div>



      </div>

      <input class="upload" type="submit" value="업로드">
    </form>



</body>










<script>


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

  //이미지 추가하기 

  //구현 목표 

  //피씨에서 이미지 추가한 걸 리스트에 담기. 
  //조건문 추가해서 5개 이상이면 알림창으로 이미지는 5개까지만 추가해주세요! 팝업 띄우기

  const files = document.querySelector("input");
  const images = document.querySelectorAll(".image");
  const dummyContent = document.querySelector("#dummy-content-wrap");
  const mainContent = document.querySelector("#main-content-wrap");
  const mainImage = document.querySelector(".main-image");
  const tagPopup = document.querySelector(".tag-popup");
  const tagbutton = document.querySelector(".tag-button");

  console.log(mainImage)
  files.addEventListener("change", (e) => {
    const uploadFiles = Array.from(e.target.files);

    for (let i = 0; i < uploadFiles.length; i++) {
      let reader = new FileReader();
      reader.readAsDataURL(e.target.files[i])
      reader.onload = (e) => {
        console.log(e)
        if (uploadFiles.length <= 5) {
          images[i].style.backgroundImage = `url(${e.target.result})`;
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
  })


  // 이미지를 클릭하면 태그 박스를 삽입

  tagbutton.addEventListener("click", (e) => {
    e.target.style.display = "none";
    tagPopup.style.display = "block";
  })

  globalThis.count = 0;
  mainImage.addEventListener("click", (e) => {
    const firstLayerX = e.layerX;
    const firstLayerY = e.layerY;
    count++
    console.log(count)


    if (count == 2) {
      tagPopup.style.left = `${e.layerX}px`;
      tagPopup.style.top = `${e.layerY}px`;
    } else {
      return;
    }

  })

  const cancel = () => { count = 0; return; }











  //업로드 확인
  const form = document.querySelector("#posts");
  const post = document.querySelector("#posts input");
  const uploadButton = document.querySelector("upload-post-button");

  console.log(post)

  uploadButton.addEventListener("click", () => {
    if (!post.value) {
      return alert("작성된 내용이 없습니다!");
    } else {
      form.submit();
    }
  })




  // repeat, cover








</script>
</html>