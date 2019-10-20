$(document).ready(function() {
  $(".btn-chair").each(function() {
    this.addEventListener("click", function() {
      console.log(this.value);
      if (this.classList.contains("btn-default")) {
        if (getInforOrder(this.value))
          this.classList.replace("btn-default", "btn-warning");
      } else {
        this.classList.replace("btn-warning", "btn-default");
        deleteOder(this.value, this);
      }
    });
  });
});

let codeChairOder = document.getElementById("codeChairOder");
if (codeChairOder != null) {
  codeChairOder.value = ""; //set lại khi load lại
}

let arrcodeChairOder = []; //mảng chứa mã ghế

// add mã ghế
function getInforOrder(object) {
  if (arrcodeChairOder.length < 8) {
    arrcodeChairOder.push(object);
    codeChairOder.value = arrcodeChairOder;
    return true;
  } else {
    alert("Bạn không thể đặt quá 8 chổ");
    return false;
  }
}
//xóa mã ghế
function deleteOder(object) {
  if (checkElementOderExist(object)) {
    for (var i = 0; i < arrcodeChairOder.length; i++) {
      if (arrcodeChairOder[i] === object) {
        arrcodeChairOder.splice(i, 1);
        break;
      }
    }
    codeChairOder.value = arrcodeChairOder;
  }
}
//kiểm tra có mã  ghế trong mảng
function checkElementOderExist(object) {
  return arrcodeChairOder.includes(object);
}
