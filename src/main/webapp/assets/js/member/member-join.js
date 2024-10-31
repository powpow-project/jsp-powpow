// 버튼 클릭 시 페이지 전환
document.querySelector('.next-button').addEventListener('click', () => {
  const selectedUser = document.querySelector('input[name="user"]:checked'); // 선택된 라디오 버튼 찾기
  
  if (selectedUser) {
    // 선택된 값에 따라 페이지 이동
    if (selectedUser.value === 'A') {
      window.location.href = 'buyer-join.member'; // POWPOW 회원 페이지
    } else if (selectedUser.value === 'B') {
      window.location.href = 'seller-join.member'; // POWPOW 판매자 페이지
    }
  } else {
    alert('POWPOW 계정을 선택해주세요.'); // 아무 것도 선택하지 않았을 경우 경고
  }
});