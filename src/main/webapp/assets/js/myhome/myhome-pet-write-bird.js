/**
 * 
 */
   
/*  */

const submitButton = document.querySelector("#submit-button");
const form = document.querySelector("#frame");
const inputs = document.querySelectorAll("input");
const thumbnailInput = document.querySelector("#imageUpload");
const thumbnail = document.querySelector("#profilePic");


submitButton.addEventListener("click", () => {
   for(let input of inputs){
      if(!input.value){
         if(input.name === "petImage") continue;
         alert(`${input.name}를 입력하세요`)
      }
   }
   form.submit();
})

thumbnailInput.addEventListener("change", (e) => {
   console.log(e)
    let reader = new FileReader();
    reader.readAsDataURL(e.target.files[0])
    reader.onload = (e) => {
      thumbnail.style.backgroundImage = `url(${e.target.result})`;
    } 
})












   