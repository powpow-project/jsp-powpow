document.addEventListener("DOMContentLoaded", function() {
    // 메인 메뉴와 서브 메뉴 설정
    const mainMenus = document.querySelectorAll(".menu-wrap .menu");
    const subMenuUl = document.querySelectorAll(".sub-menu-wrap ul");
    const subMenus = document.querySelectorAll(".sub-menu-wrap .sub-menu");
    let hoverTimeout;

    mainMenus.forEach((menu) => {
        menu.addEventListener("mouseover", () => {
            clearTimeout(hoverTimeout);
            subMenuUl.forEach((ul) => {
                ul.style.height = "250px";
                ul.style.backgroundColor = "white";
            });
        });

        menu.addEventListener("mouseleave", () => {
            hoverTimeout = setTimeout(() => {
                subMenuUl.forEach((ul) => {
                    ul.style.height = "0";
                    ul.style.backgroundColor = "transparent";
                });
            }, 300);
        });
    });

    subMenus.forEach((sub) => {
        sub.addEventListener("mouseover", () => {
            clearTimeout(hoverTimeout);
            subMenuUl.forEach((ul) => {
                ul.style.height = "250px";
            });
        });

        sub.addEventListener("mouseleave", () => {
            hoverTimeout = setTimeout(() => {
                subMenuUl.forEach((ul) => {
                    ul.style.height = "0";
                });
            }, 100);
        });
    });

    // 수량 조절기 기능 설정
    const quantityControls = document.querySelectorAll(".quantity-control");
    quantityControls.forEach((control) => {
        const btnMinus = control.querySelector(".btn-minus");
        const btnPlus = control.querySelector(".btn-plus");
        const quantityInput = control.querySelector(".quantity-input");

        if (btnMinus && btnPlus && quantityInput) {
            btnMinus.addEventListener("click", () => {
                let currentValue = parseInt(quantityInput.value) || 1;
                if (currentValue > 1) {
                    quantityInput.value = currentValue - 1;
                }
            });

            btnPlus.addEventListener("click", () => {
                let currentValue = parseInt(quantityInput.value) || 1;
                quantityInput.value = currentValue + 1;
            });
        }
    });

    // 전체 선택/해제 및 선택 삭제 기능
    const selectAllCheckbox = document.getElementById("select-all");
    const itemCheckboxes = document.querySelectorAll(".cart-item .item-checkbox");
    const deleteButton = document.getElementById("delete-button");

    if (selectAllCheckbox) {
        selectAllCheckbox.addEventListener("click", function() {
            const isChecked = selectAllCheckbox.checked;
            itemCheckboxes.forEach(function(checkbox) {
                checkbox.checked = isChecked;
            });
        });
    }

    if (deleteButton) {
        deleteButton.addEventListener("click", function() {
            itemCheckboxes.forEach(function(checkbox) {
                if (checkbox.checked) {
                    const cartItem = checkbox.closest(".cart-item");
                    if (cartItem) {
                        cartItem.remove();
                    }
                }
            });
        });
    }
});
