/**
 * 
 */


//사진올리기
 document.getElementById('uploadButton').addEventListener('click', function () {
     document.getElementById('fileInput').click();
 });
 
 document.getElementById('fileInput').addEventListener('change', function (event) {
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('profileImage').src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
   });

 function sample6_execDaumPostcode() {
     new daum.Postcode({
         oncomplete: function(data) {
             var addr = ''; // 주소 변수

             // 선택한 주소 타입에 따라 주소 값을 가져온다.
             addr = data.userSelectedType === 'R' ? data.roadAddress : data.jibunAddress;

             // 우편번호와 주소 정보를 필드에 넣는다.
             document.getElementById('sample6_postcode').value = data.zonecode;
             document.getElementById("sample6_address").value = addr;
             document.getElementById("sample6_detailAddress").focus(); // 상세주소 필드로 이동
         }
     }).open();
 }
 
/* 전송 버튼 */
const submitButton = document.querySelector(".complete");
const form = document.querySelector("form");
submitButton.addEventListener("click", () => {
	form.submit()
})


 
/*  */

const complete = document.querySelector(".complete");
const formtag = document.querySelector("#frame");
const inputs = document.querySelectorAll("input");
const thumbnailInput = document.querySelector("#imageUpload");
const thumbnail = document.querySelector("#profilePic");


complete.addEventListener("click", () => {
   for(let input of inputs){
      if(!input.value){
         if(input.name === "petImage") continue;
         alert(`${input.name}를 입력하세요`)
      }
   }
   formtag.submit();
})

thumbnailInput.addEventListener("change", (e) => {
   console.log(e)
    let reader = new FileReader();
    reader.readAsDataURL(e.target.files[0])
    reader.onload = (e) => {
      thumbnail.style.backgroundImage = `url(${e.target.result})`;
    } 
})

 
