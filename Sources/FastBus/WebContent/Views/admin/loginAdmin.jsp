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

</head>
  <body class="bg-gradient-secondary" style="margin-top:10%;">
    <div class="container">
      <!-- Outer Row -->
      <div class="row justify-content-center">
        <div class="col-xl-10 col-lg-12 col-md-9">
          <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
              <!-- Nested Row within Card Body -->
              <div class="row">
                <div class="col-lg-6 d-none d-lg-block">
                  <div class="my-5 mx-auto w-75 text-center">
                    <h1 class="mt-5 text-primary text-center">Fast Bus</h1>
                    <h5 class="text-primary text-center">
                      <small>For Admin</small>
                    </h5>
                  </div>
                  <div class="my-5 mx-auto w-75 text-center">
                    <img
                      src="https://img.icons8.com/clouds/100/000000/bus.png"
                      alt="incon"
                    />
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                    </div>
                    <form id="loginBs" class="user" action="LoginBusinessServlet" method="post">
                      <div class="form-group">
                        <input
                          type="email"
                          class="form-control form-control-user"
                          id="inputEmail"
                          name="inputEmail"
                          aria-describedby="emailHelp"
                          placeholder="Enter Email Address..."
                        />
                      </div>
                      <div class="form-group">
                        <input
                          type="password"
                          class="form-control form-control-user"
                          id="inputPassword"
                          name="inputPassword"
                          placeholder="Password"
                        />
                      </div>
                      <button
                        type="submit"
                        class="btn btn-primary btn-user btn-block"
                        value="btnBusinessLogin"
                        name="businessLogin"
                      >
                        Đăng Nhập
                      </button>
                    </form>
                    <hr />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
<!-- add file jquery -->
<%@ include file="common/botAdmin.jsp"%>
<!-- end add file jquery -->
<script type="text/javascript">
	$(document).ready(function() {
		$("#loginBs").validate({
			rules:{
				inputEmail:{
					email : true,
					required : true
				},
				inputPassword:{
					required : true,
					minlength : 6
				}
			},
			messages : {
				inputEmail : {
					required : "Vui lòng nhập Email",
					email : "Kiểm  tra xem có theo vd EX@gmail.com"
				},
				inputPassword : {
					required : "Vui lòng nhập password",
					minlength : "password có ít nhất 6 ký tự"
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
</html>
