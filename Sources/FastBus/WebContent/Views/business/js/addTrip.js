$(document).ready(() => {
  renderInputAddress = () => {
    let html = `<div class="numberOfAddAdressForTrip">
      <label for="addAdressForTrip" class="w-100 my-2">Nới Đón <a href="#" class="DeleteInputAddress" ><i class="fa fa-times-circle text-danger deleteAddress" aria-hidden="true"></i></a></label> 
      <input type="text" class="form-control" id="${$(
        ".numberOfAddAdressForTrip"
      ).length + 1}"
           placeholder="Nhập Địa Chỉ">
      </div>`;

    if ($(".numberOfAddAdressForTrip").length == 0) {
      $(html).insertAfter("#btnAddAddress");
    } else {
      $(html).insertAfter(
        $(".numberOfAddAdressForTrip")[
          $(".numberOfAddAdressForTrip").length - 1
        ]
      );
    }
    // offEvenADeleteInputAddress();
    setEvenADeleteInputAddress();
  };

  offEvenADeleteInputAddress = () => {
    $(".DeleteInputAddress").each((index, element) => {
      $(element).off("click");
    });
  };
  setEvenADeleteInputAddress = () => {
    $(".DeleteInputAddress").each((index, element) => {
      console.log($(element));
      $(element).click(() => {
        console.log(this);
        $(element)
          .parent()
          .parent()
          .remove();
        $("#myAdd").change();
      });
    });
  };

  checkNumberOfAddAdressForTrip = () => {
    return $(".numberOfAddAdressForTrip").length < 5 ? true : false;
  };

  renderBtnAdd = () => {
    let htnl = `<button type="button" class="btn btn-primary" id="btnAddAddress">
    Thêm Nơi Đón 
    <i class="fa fa-plus mx-2" aria-hidden="true"></i>
    </button>`;
    $(".addAdressForTrip#myAdd").append(htnl);
  };

  addEventForBtnAdd = () => {
    $("#btnAddAddress").click(() => {
      if (checkNumberOfAddAdressForTrip()) {
        renderInputAddress();
        return true;
      } else {
        alert("Bạn Chỉ Được Nhập 5 Nơi Đón");
        return false;
      }
    });
  };

  addDataSendToSever = () => {
    $("#myAdd").change(() => {
      $("[name='getCustomer']").val("");
      let valueAddress = "";
      $(".numberOfAddAdressForTrip").each(function() {
        if (valueAddress != "") {
          valueAddress =
            valueAddress +
            "|" +
            $(this)
              .children()
              .next()
              .val()
              .trim();
        } else {
          valueAddress =
            valueAddress +
            $(this)
              .children()
              .next()
              .val()
              .trim();
        }
      });
      $("[name='getCustomer']").val(valueAddress);
    });
  };

  CheckDuplicatePlace = () =>{
	  $("[name='cbAddressDepart']").change(()=>{
		  if($("[name='cbAddressEnd']").val()!= ""){
			  if($("[name='cbAddressEnd']").val() == $("[name='cbAddressDepart']").val()){
				  $("[name='cbAddressDepart']").val("");
				  alert("Nơi Đi Và Nơi Đến Trùng Nhau");
			  }
		  }
		  $("[name='cbAddressEnd']").change(()=>{
			  if($("[name='cbAddressDepart']").val()!= ""){
				  if($("[name='cbAddressEnd']").val() == $("[name='cbAddressDepart']").val()){
					  $("[name='cbAddressEnd']").val("");
					  alert("Nơi Đi Và Nơi Đến Trùng Nhau");
				  }
			  } 
		  });
	  });
  }
  
  
  create = () => {
    renderBtnAdd();
    addEventForBtnAdd();
    addDataSendToSever();
    CheckDuplicatePlace();
  };
  create();
});
