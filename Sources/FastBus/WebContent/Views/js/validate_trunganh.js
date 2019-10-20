// login
let inputEmail3 = document.getElementById("inputEmail3");
let btnLogin = document.getElementById("btnLogin");
let isValidateLoginOk = false;
let inputPassword3 = document.getElementById("inputPassword3");

let error_email = true;
let error_password = true;

inputEmail3.addEventListener("focusout", function() {
  checkValidateEmail();
  checkEmtyLogin();
});

inputPassword3.addEventListener("focusout", function() {
  checkValidatePassword();
  checkEmtyLogin();
});

$(document).ready(function() {
  $(window).on("load", function() {
    checkEmtyLogin();
  });
});

function validateEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

function checkValidateEmail() {
  console.log("check Email");
  var notificationEmail = document.getElementById("notificationEmail");
  if (inputEmail3.value.length <= 0) {
    notificationEmail.innerText = "Không để trống Email";
    $("#inputEmail3").addClass("my-inputError");
    error_password = true;
  } else if (!validateEmail(inputEmail3.value)) {
    notificationEmail.innerText = "Định Dạng Email sai, vui lòng kiểm  tra lại";
    $("#inputEmail3").addClass("my-inputError");
    error_email = true;
  } else {
    notificationEmail.innerText = "";
    $("#inputEmail3").removeClass("my-inputError");
    error_email = false;
  }
}

function checkValidatePassword() {
  console.log("check pass");
  if (inputPassword3.value.length > 16) {
    notificationPassWord.innerText = "Tối đa 16 ký tự";
    $("#inputPassword3").addClass("my-inputError");
    error_password = true;
  } else if (inputPassword3.value.length <= 0) {
    notificationPassWord.innerText = "không để  trống password ";
    $("#inputPassword3").addClass("my-inputError");
    error_password = true;
  } else {
    notificationPassWord.innerText = "";
    $("#inputPassword3").removeClass("my-inputError");
    error_password = false;
  }
}

function checkEmtyLogin() {
  if (error_password == false && error_email == false) {
    btnLogin.disabled = false;
  } else btnLogin.disabled = true;
}

// end login


// validate  phonefunction  check_phone_h()
// let inputPhone = document.getElementById("inputPhone");

// let error_phone_h =false;

// inputPhone.addEventListener("focusout", function(){
//     check_phone_h();
// })

// function  check_phone_h()
// {
//     var pattern = new RegExp( /^(09|03|04|07|08|05)+([0-9]{8})$/);
//     if(pattern.test($("#phone-h").val()))
//     {
//      $("#phone-h-error-message").hide();
//      error_phone_h = false;  
//      }
//      else 
//      {
//        $("#phone-h-error-message").html("Vui lòng nhập đúng số điện thoại!!!");
//        $("#phone-h-error-message").show();
//       error_phone_h = true;     
//     }
//   }
  // Seat booking

  //end Sea booking