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
        <div class="row my-4">
          <div class="col-12 shadow bg-light rounded">
          <h3 class="text-center text-danger my-3">Đăng Ký</h3>
            <form id="register" action="<%=request.getContextPath() %>/RegisterServlet">
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputFullName"> Họ và Tên :</label>
                    <span class="text-danger">*</span>
                    <input
                      name="fullName"
                      type="text"
                      class="form-control"
                      id="inputFullName"
                      placeholder="Họ và Tên"
                    />
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputGmail">Gmail :</label>
                    <span class="text-danger">*</span>
                    <input
                      name="mail"
                      type="text"
                      class="form-control "
                      id="inputGmail"
                      placeholder="Gmail"
                    />
                  </div>
                </div>
              </div>
              <!--  -->
              <!--1 dong  -->
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputPassword">Mật Khẩu :</label>
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
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputConfirmpassword">
                      Xác nhận Mật khẩu :</label
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
              </div>
              <!--  -->
              <!--1 dong  -->
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputPhone">Số điện thoại</label>
                    <span class="text-danger">*</span>
                    <input
                      type="text"
                      class="form-control"
                      id="inputPhone"
                      placeholder="Your phone"
                      name="phone"
                    />
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="inputAddress"> Địa chỉ :</label>
                    <span class="text-danger">*</span>
                    <input
                      type="text"
                      class="form-control"
                      id="inputAddress"
                      placeholder="Địa chỉ"
                      name="address"
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
                  <input type="submit" class="btn btn-primary mb-3 shadow" name="register" value="Đăng Ký" />
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
  </body>
</html>
