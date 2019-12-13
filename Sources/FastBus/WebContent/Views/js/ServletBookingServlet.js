$(document).ready(function() {
	
  $(".btn-chair").each(function() {
    this.addEventListener("click", function() {
      if (this.classList.contains("btn-default")) {
        if (getInforOrder(this.value))
          this.classList.replace("btn-default", "btn-warning");
      } else {
        this.classList.replace("btn-warning", "btn-default");
        deleteOder(this.value, this);
      }
      numberFormatCurencyWhenValChange();
      changeLocalSessionStorage();
    });
  });
// format date for url
	formatDateForUrl = () =>{
		 let  dateOld=$("[name=startDate]").val();
		 if(dateOld == "") return false;
		 
		 let  year = dateOld.slice(0,4);
		 let  month= dateOld.slice(5,7);
		 let  day = dateOld.slice(8,10);
		 return month+"%2F"+day+"%2F"+year;
	}
	
// load Page and make new url
	 loadPageWhenChangeDate = () => {
		  let presentpatName = window.location.pathname;
		  let locationOrigin = window.location.origin;
		  
		  if(!formatDateForUrl()) return false;
		  let url = locationOrigin+presentpatName + "?ngayKH="+formatDateForUrl() + "&idTrip="+urlParam("idTrip");
		  window.location.href = url;
	 };
	
	  $("[name=startDate]").change(()=>{
      if(formatCurentDateTime()< Date.now()){
    	  checkValidateChoseDateTime();
      }else loadPageWhenChangeDate();	
		   
    });
	
	  setTimeout(function(){ if(formatCurentDateTime()< Date.now())checkValidateChoseDateTime(); }, 1000);
	
	function checkValidateChoseDateTime(){
		 let now = new Date();
	        let retunDate = now.getFullYear()+"-"
	        +String((Number(now.getMonth())+1)).padStart(2, '0')+"-"
	        +String(now.getDate()).padStart(2, '0');
	        let retunDatePlus = now.getFullYear()+"-"
	        +String((Number(now.getMonth())+1)).padStart(2, '0')+"-"
	        +String(now.getDate()+1).padStart(2, '0');
	        console.log(retunDate);
	        if(checkVaidateDateNow())
	        	 $("[name=startDate]").val("");
	        else
	        	$("[name=startDate]").val("");
	        alert("Chuyến Xe Mà Bạn Chọn Đã Đi Vụi Lòng Chuyến Xe Khác Hoặc Thời Gian Khác Chọn Lại");
	} 
	  
    // validate chose time
    function formatCurentDateTime(){
      var timeTodate = new Date($("[name='startDate']").val());
      var timeForInput= $("[name='startTime']").val(); 
  
      var dd = String(timeTodate.getDate()).padStart(2, '0');
      var mm = String(timeTodate.getMonth() + 1).padStart(2, '0'); // January
																	// is 0!
      var yyyy = timeTodate.getFullYear();
      var h = timeForInput.slice(0, 2);
      var mus = timeForInput.slice(3, 5);
      timeTodate = new Date(Number(yyyy),Number(mm-1),Number(dd),Number(h),Number(mus)).getTime();
  
      return timeTodate;
    }
    
    function checkVaidateDateNow(){
    	let arrayDateNow =  $("[name='startDate']").val().split("-");
    	let dateNow = arrayDateNow[2];
    	let dateNowNew = new Date().getDate();
    	return Number(dateNow) == Number(dateNowNew) ? true : false; 
    }
});

let codeChairOder = document.getElementById("codeChairOder");
let arrcodeChairOder = []; // mảng chứa mã ghế

innitSetatBooking();

// khởi tạo
function innitSetatBooking(){
	if (codeChairOder != null) {
		  codeChairOder.value = ""; // set lại khi load lại
		}
	
	readLocalSessionStorage();
	statusChairWhenloadIntoSesstion();
	codeChairOder.value = arrcodeChairOder;
	numberFormatCurencyWhenValChange();
}

// add status when init
function statusChairWhenloadIntoSesstion(){
	 $(".btn-chair").each(function(){
		if(this.classList.contains("btn-default") && arrcodeChairOder.includes(this.value)){
			 this.classList.replace("btn-default", "btn-warning");
		} else if(!this.classList.contains("btn-default") && arrcodeChairOder.includes(this.value)){
			sessionStorage.clear();
			alert("Ghế Của bạn đã có người đặt vui lòng chọn lại");
			arrcodeChairOder=[];
		}
	 });
}

// read local storage
function readLocalSessionStorage(){
    let dataString = sessionStorage.getItem(urlParam("idTrip")+$("[name=startDate]").val());
    if(dataString){
    	arrcodeChairOder=dataString.split(",");
    }else arrcodeChairOder =[];
}

// add local storage
function changeLocalSessionStorage(){
	let converDataString = arrcodeChairOder.join(",")
	sessionStorage.setItem(urlParam("idTrip")+$("[name=startDate]").val(), converDataString);
}

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
// xóa mã ghế
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
// kiểm tra có mã ghế trong mảng
function checkElementOderExist(object) {
  return arrcodeChairOder.includes(object);
}
// nhảy khi chọn ghế
function numberFormatCurencyWhenValChange(){
	 let totalPrice = Number(parseInt($("#fare")[0].dataset.price) * arrcodeChairOder.length);
	$("#fare").val(new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(totalPrice));
}
// get parameter
function urlParam(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results==null) {
       return null;
    }
    return decodeURI(results[1]) || 0;
}