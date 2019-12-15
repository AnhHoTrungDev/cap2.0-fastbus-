<%@page import="model.bean.Ward"%>
<%@page import="model.bean.District"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Province"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Fasbus-Manage</title>

<!-- add thư vien top-->
<%@ include file="common/topAdmin.jsp"%>
<!-- end add thư vien top-->
 <body class="bg-gradient-primary my-5">
    <div class="container">
      <div class="my-5">
        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-5 d-none d-lg-block">
                <div class="my-5 mx-auto w-75 text-center">
                  <h1
                    class="text-primary text-center"
                    style="
                  margin-top: 50%;"
                  >
                    Fast Bus
                  </h1>
                  <h5 class="text-primary text-center">
                    <small>For Business</small>
                  </h5>
                </div>
                <div class="my-5 mx-auto w-75 text-center">
                  <img
                    src="https://img.icons8.com/clouds/100/000000/bus.png"
                    alt="incon"
                  />
                </div>
              </div>
              <div class="col-lg-7">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 mb-4 text-primary">
                      Tạo Tài Khoản Business
                    </h1>
                  </div>
                  <form class="user" action="RegisterBusunessServlet" method="post" id="registerBs">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control form-control-user"
                        id="businessName"
                        name="businessName"
                        placeholder="Tên Nhà xe"
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="email"
                        class="form-control form-control-user"
                        id="emailAddress"
                        name="emailAddress"
                        placeholder="Địa chỉ email"
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control form-control-user"
                        id="phone"
                        name="phone"
                        placeholder="Số điện thoại"
                      />
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                        <input
                          type="password"
                          class="form-control form-control-user"
                          id="inputPassword"
                          name="inputPassword"
                          placeholder="Mật Khẩu"
                        />
                      </div>
                      <div class="col-sm-6">
                        <input
                          type="password"
                          class="form-control form-control-user"
                          id="inputRepeatPassword"
                          name="inputRepeatPassword"
                          placeholder="Nhập Lại Mật Khẩu"
                        />
                      </div>
                    </div>
                    <div class="form-group">
                      <select class="form-control rounded-pill allCb" name="cbCity" id="cbProvince">
                        <option value="">Tỉnh / Thành Phố</option>
                        <%
                        	for(Province pro : (List<Province>)request.getAttribute("listProvinces")){
                        		
                        %>
                        <option value="<%=pro.getIdProvince()%>"><%=pro.getNameProvince() %></option>
                        <%} %>
                      </select>
                    </div>
                    <div class="form-group">
                      <select
                        class="form-control rounded-pill allCb"
                        name="cbDistrict"
                        id="cbDistrict"
                      >
                        <option value="">Quận / Huyện</option>
                        <%
                        	for(District dis : (List<District>)request.getAttribute("listDistricts")){
                        %>
                        <option value="<%=dis.getIdDistrict()%>"><%=dis.getNameDistrict() %></option>
                        <%} %>
                      </select>
                    </div>
                    <div class="form-group">
                      <select class="form-control rounded-pill allCb" name="cbWard"  id="cbWard">
                        <option  value="">Phường / xã</option>
                        <%
                        	for(Ward ward : (List<Ward>)request.getAttribute("listWards")){
                        %>
                        <option value="<%=ward.getIdWard()%>"><%=ward.getNameWard() %></option>
                        <%} %>
                      </select>
                    </div>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control form-control-user"
                        id="addressDeail"
                        name="addressDeail"
                        placeholder="Địa chỉ"
                      />
                    </div>
                    <button
                      class="btn btn-primary btn-user btn-block"
                      name="btnRegister"
                      value="btnRegister"
                    >
                      Đăng ký
                    </button>
                    <hr />
                  </form>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html"
                      >Forgot Password?</a
                    >
                  </div>
                  <div class="text-center">
                    <a class="small" href="login.html"
                      >Already have an account? Login!</a
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</head>
<!-- add file jquery -->
<%@ include file="common/botAdmin.jsp"%>
<!-- end add file jquery -->
<script>

</script>
<script src="<%=request.getContextPath()%>/Views/business/js/resgiterAdminCustom.js"></script>
<script type="text/javascript">
	$(document).ready(function() {	
	    $('.allCb').select2();
	 
	    $('.allCb').each(function(){
	    	 $($(this).data('select2').$container).addClass('rounded-pill');
	 	     $($(this).data('select2').$container).children().children().addClass('border-0');
	 	     $($(this).data('select2').$container).addClass('form-control');
	    });
	     $($("[name='cbCity']").data('select2').$container).children().children().blur(function(){	    	
 	    	if($("[name='cbCity']").valid()){
 	    		$(this).parent().parent().addClass("is-valid").removeClass("is-invalid");
 	    	}else{
 	    		$(this).parent().parent().addClass("is-invalid").removeClass("is-valid");
 	    	}
 	    	$($("[name='cbDistrict']").data('select2').$container).children().children().blur();
 	    	$($("[name='cbWard']").data('select2').$container).children().children().blur();
 	    });
	     $($("[name='cbDistrict']").data('select2').$container).children().children().blur(function(){	    	
	 	    	if($("[name='cbDistrict']").valid()){
	 	    		$(this).parent().parent().addClass("is-valid").removeClass("is-invalid");
	 	    	}else{
	 	    		$(this).parent().parent().addClass("is-invalid").removeClass("is-valid");
	 	    	}
	 	    	$($("[name='cbWard']").data('select2').$container).children().children().blur();
	 	    });
	     $($("[name='cbWard']").data('select2').$container).children().children().blur(function(){	    	
	 	    	if($("[name='cbWard']").valid()){
	 	    		$(this).parent().parent().addClass("is-valid").removeClass("is-invalid");
	 	    	}else{
	 	    		$(this).parent().parent().addClass("is-invalid").removeClass("is-valid");
	 	    	}
	 	    });
	     
	    $("#registerBs").validate({
	    	rules:{
	    		businessName:{
	    			required:true
	    		},
	    		emailAddress:{
	    			required:true,
	    			email : true
	    		},
	    		phone:{
	    			required:true,
	    			validateVietNamPhone:true
	    		},
	    		inputPassword:{
	    			required:true,
	    			minlength: 6
	    		},
	    		inputRepeatPassword:{
	    			required:true,
	    			equalTo:"#inputPassword",
	    			minlength: 6
	    		},
	    		cbCity:{
	    			required:true,
	    		},
	    		cbDistrict:{
	    			required:true,
	    		},
	    		cbWard:{
	    			required:true
	    		},
	    		addressDeail:{
	    			required:true
	    		}
	    	},
	    	messages:{
	    		businessName:{
	    			required:"Vui Lòng Nhập Trường Này"
	    		},
	    		emailAddress:{
	    			required:"Vui Lòng Nhập Trường Này",
	    			email:"Kiểm  tra xem có theo vd EX@gmail.com"
	    		},
	    		phone:{
	    			required:"Vui Lòng Nhập Trường Này",
	    		},
	    		inputPassword:{
	    			required:"Vui Lòng Nhập Trường Này",
	    			minlength:"Có Ít Nhất 6 ký Tự"
	    		},
	    		inputRepeatPassword:{
	    			required:"Vui Lòng Nhập Trường Này",
	    			equalTo:"Không Đúng Với Password Đã Nhập",
	    			minlength:"Có Ít Nhất 6 ký Tự"
	    		},
	    		cbCity:{
	    			required:"Vui Lòng Chọn Trường Này 1"
	    		},
	    		cbDistrict:{
	    			required:"Vui Lòng Chọn Trường Này 2"
	    		},
	    		cbWard:{
	    			required:"Vui Lòng Chọn Trường Này 3"
	    		},
	    		addressDeail:{
	    			required:"Vui Lòng Nhập Trường Này"
	    		}
	    	},
	    	errorElement : "em",
			highlight : function(element,
					errorClass) {
				$(element).addClass("is-invalid")
						.removeClass("is-valid");
			},
			unhighlight : function(element,
					errorClass) {
				$(element).addClass("is-valid")
						.removeClass("is-invalid");
			},
	    });
	 // validate số điện thoại
		$.validator
				.addMethod(
						"validateVietNamPhone",
						function(value, element) {
							return (this.optional(element) || /^(09|03|04|07|08|05)([0-9]{8})$/
									.test(value));
						}, "Đây không phải số điện thoại Việt nam  Ex:0905 XXX XXX");

	 $("[name='btnRegister']").click(function(){
		 $($("[name='cbCity']").data('select2').$container).children().children().blur();
		 $($("[name='cbDistrict']").data('select2').$container).children().children().blur();
	     $($("[name='cbWard']").data('select2').$container).children().children().blur(); 
	 });
	});
	
</script>
</html>
