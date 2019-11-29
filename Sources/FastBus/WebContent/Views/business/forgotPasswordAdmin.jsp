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
  <body class="bg-gradient-primary" style="margin-top:10%;">
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
                <div class="col-lg-6">
                  <div class="p-5">
                    <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-2">
                        Quên Mật Khẩu
                      </h1>
                      <p class="mb-4">
                        Bạn Vui Lòng Mà Bạn Nhập Gmail Đã Đăng Ký Chúng Tôi Sẽ
                        Gửi Email Cho bạn
                      </p>
                    </div>
                    <form class="user">
                      <div class="form-group">
                        <input
                          type="email"
                          class="form-control form-control-user"
                          id="inputEmailResetPasswork"
                          name="inputEmailResetPasswork"
                          aria-describedby="emailHelp"
                          placeholder="Nhập Địa Chỉ Email Của bạn"
                        />
                      </div>
                      <button
                        class="btn btn-primary btn-user btn-block"
                        value="btnResetPasswork"
                        name="btnResetPasswork"
                      >
                        Nhận Email
                      </button>
                    </form>
                    <hr />
                    <div class="text-center">
                      <a class="small" href="register.html"
                        >Create an Account!</a
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
    </div>
  </body>
</head>
<!-- add file jquery -->
<%@ include file="common/botAdmin.jsp"%>
<!-- end add file jquery -->
</html>
