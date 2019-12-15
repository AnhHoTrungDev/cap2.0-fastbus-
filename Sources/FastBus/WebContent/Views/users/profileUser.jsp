<%@page import="model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta
  name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no"
  />
  <title>Fastbus</title>
  <!-- link css -->
  <%@ include file="common/topbootstrap.jsp" %>
</head>
<body>
  <!--::header part start::-->
  <%@ include file="common/menu.jsp" %>
  <!-- Header part end-->
  <section>
    <div class="container">
      <div
      class="row mt-3 mb-5 p-3"
      style="-webkit-box-shadow: 0px 10px 13px 4px rgba(0,0,0,0.44); 
      box-shadow: 0px 10px 13px 4px rgba(0,0,0,0.44);"
      >
      <div class="col-md-12 ">
        <div class="col-md-6 ml-auto">
        	<h1 class="mx-auto m-3 text-primary">Thông Tin Users </h1>
        </div>
      </div>
      <div class="col-md-4">
        <div class="my-5 mx-auto w-75 text-center">
          <h1 class="mt-5 text-primary text-center">Fast Bus</h1>
          <h5 class="text-primary text-center">
            <small>For Users</small>
          </h5>
        </div>
        <div class="my-5 mx-auto w-75 text-center">
          <img
          src="https://img.icons8.com/clouds/100/000000/bus.png"
          alt="incon"
          />
        </div>
      </div>

          <div class="col-md-8">
           <form action="UserInformationServlet" method="post" id="userInformation">
           <% 
           		User user= (User)request.getAttribute("user");
           		String messageUpdatePass= (String)request.getAttribute("messageUpdatePass");
           		String messageUpdateUser= (String)request.getAttribute("messageUpdateUser");
           %>
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="inputFullName"> Họ và Tên :</label>
                    <span class="text-danger">*</span>
                    <input
                      name="fullName"
                      type="text"
                      class="form-control"
                      id="inputFullName"
                      placeholder="Họ và Tên"
                      value="<%=user.getName() %>"
                    />
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="inputGmail">Gmail :</label>
                    <span class="text-danger">*</span>
                    <input
                      name="mail"
                      type="text"
                      class="form-control "
                      id="inputGmail"
                      placeholder="Gmail" readonly="readonly"
                      value="<%=user.getEmail() %>"
                    />
                  </div>
                </div>
              </div>
              <!--  -->
              <!--1 dong  -->
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="inputPhone">Số điện thoại</label>
                    <span class="text-danger">*</span>
                    <input
                      type="text"
                      class="form-control"
                      id="inputUpdatePhone"
                      placeholder="Số Điện Thoại Của Bạn"
                      name="inputUpdatePhone"
                      value="<%=user.getPhone() %>"
                    />
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="form-group">
                    <label for="inputAddress"> Địa chỉ :</label>
                    <span class="text-danger">*</span>
                    <input
                      type="text"
                      class="form-control"
                      id="inputUpdateAddress"
                      placeholder="Địa chỉ"
                      name="inputUpdateAddress"
                      value="<%=user.getAddess() %>"
                    />
                  </div>
                </div>
              </div>
              <!--  -->
              <div class="row text-center ml-1 ">
                <p>
                  (<span class="text-danger">*</span>) là những thông tin bắt
                  buộc phải nhập
                </p>
              </div>

              <div class="row">
                <div class="col-12 text-center mt-3 mb-2">
                	<a class="btn btn-primary mb-3 shadow"  href="UserInformationServlet?change=changePassword">Đổi Mật Khẩu
                	</a>
                    <button class="btn btn-primary mb-3 shadow" type="submit"  name="btnupdateInfor" value="btnupdateInfor">Cập nhập Thông tin
                	</button>
                </div>
              </div>
            </form>
          </div>
        </div>       
   </div>
</section>

<!-- footer part start-->
<%@ include file="common/footer.jsp" %>
<!-- footer part end-->

<!-- Link jquery -->
<%@ include file="common/botbootstrap.jsp" %>
<script>
  $(window).on("load", function() {
	  showMessChangeSus(<%= (String)request.getAttribute("messageUpdatePass") %>,"Đổi Mật Khẩu Thành Công");
	  showMessChangeSus(<%= (String)request.getAttribute("messageUpdateUser") %>,"Cập Nhật Thông Tin Thành Công ");
  });
  console.log(<%=(String)request.getAttribute("messageUpdateUser") %>);
  $("document").ready(function(){
	  $("form#userInformation").validate({
		  rules:{
			  fullName:{
				  required:true 
			  },
			  inputUpdatePhone:{
				  required:true,
				  validateVietNamPhone:true
			  },
			  inputUpdateAddress:{
				  required:true
			  }
			  
		  },
		  messages:{
			  fullName:{
				  required:"Vui Lòng Nhập Trường Này" 
			  },
			  inputUpdatePhone:{
				  required:"Vui Lòng Nhập Trường Này" 
				  
			  },
			  inputUpdateAddress:{
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
			}
			
	  });
	// validate số điện thoại
		$.validator
				.addMethod(
						"validateVietNamPhone",
						function(value, element) {
							return (this.optional(element) || /^(09|03|04|07|08|05)([0-9]{8})$/
									.test(value));
						}, "Đây không phải số điện thoại Việt nam ");
  });
</script>
</body>
</html>
