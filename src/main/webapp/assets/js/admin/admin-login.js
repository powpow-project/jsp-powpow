function loginAdmin() {
  const adminId = document.querySelector('input[name="id"]').value;
  const password = document.querySelector('input[name="password"]').value;

  if (!adminId) {
    alert("아이디를 입력해주세요.");
    return;
  }
  
  if (!password) {
    alert("비밀번호를 입력해주세요.");
    return;
  }
}

document.addEventListener('DOMContentLoaded', function () {
  const loginButton = document.querySelector('button[type="button"]');
  loginButton.addEventListener('click', loginAdmin);
});
