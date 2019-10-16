// login
let inputEmail3 = document.getElementById("inputEmail3");
let btnLogin = document.getElementById("btnLogin");
let isValidateLoginOk = false; 

inputEmail3.addEventListener("change", function() {
  checkValidateEmail();
  checkEmtyLogin();
});

$( document ).ready(function() {
    $( window ).on( "load", function(){
        checkEmtyLogin();
    } );
});

function validateEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
}

function checkValidateEmail() {
  console.log("ok");
  var notificationEmail = document.getElementById("notificationEmail");
  if (!validateEmail(inputEmail3.value)) {
    notificationEmail.innerText = "Định Dạng Email sai, vui lòng kiểm  tra lại";
    $("#inputEmail3").addClass("my-inputError");
    isValidateLoginOk = false;
  } else {
    notificationEmail.innerText = "";
    $("#inputEmail3").removeClass("my-inputError");
    isValidateLoginOk = true;
  }
}

function checkEmtyLogin(){
    if (isValidateLoginOk){
        btnLogin.disabled = false;
    }
    else  btnLogin.disabled = true;
}

// end login