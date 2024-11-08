/**
 * 
 */
    
    // 탈퇴하기

	const popup = document.getElementById('deletePop');
	const openButton = document.getElementById('openPopupButton');
	const closeButton = document.getElementById('closePopupButton');

    // 처음엔디폴트로 숨겨놓기
	popup.style.display = "none"; 
    openButton.onclick = function () {
      popup.style.display = "flex"; 
    }
	
	openButton.onclick = function () {
	   popup.style.display = "flex";
	}

    closeButton.onclick = function () {
      popup.style.display = "none"; 
    }

    window.onclick = function (event) {
      if (event.target == modal) {
        popup.style.display = "none"; 
      }
    }