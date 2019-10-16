<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!-- Model Login -->
<div
  class="modal fade"
  id="myModal"
  tabindex="-1"
  role="dialog"
  aria-labelledby="myModalLabel"
  aria-hidden="true"
>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Đăng nhập</h4>
        <button type="button" class="close" data-dismiss="modal">
          <span aria-hidden="true">&times;</span
          ><span class="sr-only">Close</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="login-form">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <label for="inputEmail3" class="col-sm-2 control-label"
                >Email</label
              >
              <label
                class="col-sm-12  control-label my-notificationError"
                id="notificationEmail"
              ></label>
              <div class="col-sm-10">
                <input
                  type="email"
                  class="form-control"
                  id="inputEmail3"
                  placeholder="Email"
                  required
                />
              </div>
            </div>
            <div class="form-group">
              <label for="inputPassword3" class="col-sm-4 control-label"
                >Mật khẩu</label
              ><label
                class="col-sm-12  control-label my-notificationError"
                id="notificationPassWord"
              ></label>
              <div class="col-sm-10">
                <input
                  type="password"
                  class="form-control"
                  id="inputPassword3"
                  placeholder="Mật khẩu"
                  required
                />
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                  <label> <input type="checkbox" /> Remember me </label>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" id="btnLogin">
                  Đăng nhập
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Model Login -->
