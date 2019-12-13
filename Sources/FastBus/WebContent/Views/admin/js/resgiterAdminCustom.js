$(document).ready(() => {
  /*load data district  */
  $("#cbProvince").change(function() {
    console.log();
    $.ajax({
      url: "LoadDistrictWardToProvinceRequest",
      type: "post",
      data: {
        changeProvince: "cbProvince",
        idProvince: $("#cbProvince").val()
      },
      success: function(results) {
        // var arrayDistrict = JSON.parse(results);
        loadAjaxcbDistrict(results);
      }
    });
  });

  /*load data ward  */
  $("#cbDistrict").change(function() {
    console.log();
    $.ajax({
      url: "LoadDistrictWardToProvinceRequest",
      type: "post",
      data: {
        changeDistrict: "cbDistrict",
        idDistrict: $("#cbDistrict").val()
      },
      success: function(results) {
		// var arrayWard = JSON.parse(results);
		loadAjaxcbWard(results);
      }
    });
  });

  const loadAjaxcbDistrict = arrayDistrict => {
    $("#cbDistrict").empty();
    let newData = arrayDistrict
      .map(
        e =>
          `<option value="${e.idDistrict}">${e.nameDistrict}</option>`
      )
	  .join("");
	  let option1 = `<option>Quận / Huyện</option>`
		  
    $("#cbDistrict").append(option1+newData);
    $("#cbDistrict").change();
  };

  const loadAjaxcbWard = arrayWard => {
	$("#cbWard").empty();
	
    let newData = arrayWard
      .map(
        e =>
          `<option value="${e.idWard}">${e.nameWard}</option>`
      )
	  .join("");

	  let option1 = `<option>Phường / Xã</option>`
	  
    $("#cbWard").append(option1+newData);
  };
  
});
