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
          class="row mt-5 mb-5 p-3"
          style="-webkit-box-shadow: 0px 10px 13px 4px rgba(0,0,0,0.44); 
          box-shadow: 0px 10px 13px 4px rgba(0,0,0,0.44);"
        >
          <div class="col-md-12"></div>
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
            <form action="UserInformationServlet" method="post" id="updatePasswordUsers">
              <h1 class="text-center m-3 text-primary">Đổi Mật Khẩu</h1>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="inputPresentPassword">Mật Khẩu Hiện Tại :</label>
                  <span class="text-danger">*</span>
                  <input
                    type="password"
                    class="form-control"
                    id="inputPresentPassword"
                    placeholder="Password"
                    name="inputPresentPassword"
                  />
                </div>
              </div>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="inputPassword">Mật Khẩu Mới :</label>
                  <span class="text-danger">*</span>
                  <input
                    type="password"
                    class="form-control"
                    id="inputPassword"
                    placeholder="Password"
                    name="password"
                  />
                </div>
              </div>
              <div class="col-sm-12">
                <div class="form-group">
                  <label for="inputConfirmpassword">
                    Xác nhận Mật khẩu Mới :</label
                  >
                  <span class="text-danger">*</span>
                  <input
                    type="password"
                    class="form-control"
                    id="inputConfirmpassword"
                    placeholder="Confirm password"
                    name="confirmPassword"
                  />
                </div>
              </div>
              <div class="row">
                <div class="col-12 text-center mt-3 mb-2">
                  <button
                  	type="submit"
                    class="btn btn-primary text-center"
                    name="btnChangePassword"
                    value="btnChangePassword"
                  >
                    Đổi Mật Khẩu
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
    <script type="text/javascript">
    $(window).on("load", function() {
    	console.log(<%=(String)request.getAttribute("messageUpdatePass") %>)
    	showMessChangeFail(<%=(String)request.getAttribute("messageUpdatePass") %>,"Thay Đổi Mật Khẩu Thất Bại"); 
	  });
    $("document").ready(function(){
    	$("form#updatePasswordUsers").validate({
    		rules:{
    			inputPresentPassword:{
    				required:true,
    				minlength:6
    			},
    			password:{
    				required:true,
    				minlength:6
    			},
    			confirmPassword:{
    				required:true,
    				minlength:6,
    				equalTo:"#inputPassword"
    			}
    		},
    		messages:{
    			inputPresentPassword:{
    				required:"Vui Lòng Nhập Trường Này",
    				minlength:"Có Ít Nhất 6 Ký Tự"
    			},
    			password:{
    				required:"Vui Lòng Nhập Trường Này",
    				minlength:"Có Ít Nhất 6 Ký Tự"
    			},
    			confirmPassword:{
    				required:"Vui Lòng Nhập Trường Này",
    				minlength:"Có Ít Nhất 6 Ký Tự",
    				equalTo:"Không Trùng Với Passwork Đã Nhập"
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
    });
    </script>
  </body>
</html>
