document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector('form'); 
    const customDiscountInput = document.querySelector('.custom-discount');
    const customDiscountRadio = document.querySelector('input[value="custom"]');
    const startDateInput = document.getElementById('start-date');
    const endDateInput = document.getElementById('end-date');
    const couponCodeInput = document.getElementById('coupon-code');

    // 할인율 라디오 버튼 기능
    const discountRateRadios = document.querySelectorAll('input[name="adminCouponDiscountRate"]');

    discountRateRadios.forEach(radio => {
        radio.addEventListener("change", () => {
            if (radio.value === "custom") {
                customDiscountInput.disabled = false; 
                customDiscountInput.value = ''; 
            } else {
                customDiscountInput.disabled = true; 
                customDiscountInput.value = '';
            }
        });
    });

    // 쿠폰 코드 길이 제한
    couponCodeInput.addEventListener('input', function () {
        const value = couponCodeInput.value;
        if (value.length > 16) {
            alert('쿠폰 코드는 최대 16자리까지 입력 가능합니다.');
            couponCodeInput.value = value.substring(0, 16);
        }
    });

    // 날짜 유효성 검사
    function validateDates() {
        const startDate = new Date(startDateInput.value);
        const endDate = new Date(endDateInput.value);
        if (startDate && endDate && startDate > endDate) {
            alert('종료일은 시작일 이후여야 합니다.');
            endDateInput.value = ''; 
        }
    }

    startDateInput.addEventListener('change', validateDates);
    endDateInput.addEventListener('change', validateDates);

    // 폼 제출 시 유효성 검사
    form.addEventListener('submit', function (event) {
        let discountRateSelected = false;
        let customDiscountValue = null;

        // 할인율 확인
        for (const radio of discountRateRadios) {
            if (radio.checked) {
                discountRateSelected = true;
                if (radio.value === "custom") {
                    customDiscountValue = parseFloat(customDiscountInput.value);
                    // 커스텀 값 유효성 검사
                    if (isNaN(customDiscountValue) || customDiscountValue < 0 || customDiscountValue > 100) {
                        alert("쿠폰 할인율은 0부터 100 사이의 숫자여야 합니다.");
                        event.preventDefault(); 
                        return;
                    }
                }
                break;
            }
        }

        if (!discountRateSelected) {
            alert("할인율을 선택해 주세요.");
            event.preventDefault(); 
        }

        if (form.checkValidity()) {
            alert('쿠폰이 성공적으로 등록되었습니다.');
        } else {
            alert('모든 필드를 올바르게 입력해주세요.');
            event.preventDefault(); 
        }
    });

    // 메뉴 관련 기능
    const menuIcon = document.querySelector(".menu-wrap img");
    const menuFrame = document.querySelector("#menu-frame");
    const listItems = document.querySelectorAll("li");
    const subMenus = document.querySelectorAll("ul > li > div");

    listItems.forEach((li, i) => {
        li.addEventListener("mouseover", () => {
            subMenus[i].style.height = `${subMenus[i].children.length * 40}px`; 
        });
        li.addEventListener("mouseleave", () => {
            subMenus[i].style.height = 0;
        });
    });

    menuIcon.addEventListener("click", toggleMenu);

    function toggleMenu() {
        const isActive = menuFrame.style.display === "block";
        menuFrame.style.display = isActive ? "none" : "block";

        if (!isActive) {
            menuFrame.addEventListener("mouseleave", hideMenu);
        }
    }

    function hideMenu() {
        menuFrame.style.display = "none";
        menuFrame.removeEventListener("mouseleave", hideMenu);
    }
});
