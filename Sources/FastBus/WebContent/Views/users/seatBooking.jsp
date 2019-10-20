<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
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
      <div id="steps" class="container tientrinh">
        <ul class="list-steps clearfix">
          <li class="active first">Chọn ghế</li>
          <li>Thông tin khách hàng</li>
          <li>Xác nhận</li>
        </ul>
      </div>
    </section>

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="row">
              <div class="col-md-12 box">
                <h3>Thông tin vé xe</h3>
                <div class="row">
                  <div class="col-md-4">
                    <label>Tuyến: </label>
                  </div>
                  <div class="col-md-8">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-5">
                    <label>Ngày khởi hành: </label>
                  </div>
                  <div class="col-md-7">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <label>Giờ khởi hành: </label>
                  </div>
                  <div class="col-md-8">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <label>Ghế đã chọn: </label>
                  </div>
                  <div class="col-md-8">
                    <input
                      type="text"
                      id="codeChairOder"
                      readonly
                      class="form-control-plaintext"
                      name="codeChairOder"
                      value=""
                    />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <label>Giá vé: </label>
                  </div>
                  <div class="col-md-8">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <label>Địa điểm đón: </label>
                  </div>
                  <div class="col-md-8">
                    <textarea
                      placeholder="Nhập địa điểm đón"
                      rows="5"
                    ></textarea>
                  </div>
                </div>
                <div class="row">
                  <a
                    href="#"
                    class="btn btn-primary btn-lg active"
                    role="button"
                    >Quay lại</a
                  >
                  <a
                    href="#"
                    class="btn btn-primary btn-lg active"
                    role="button"
                    >Tiếp tục</a
                  >
                </div>
              </div>
              <div class="col-md-12 box">
                <h3>Thông tin chi tiết chuyến xe</h3>
                <div class="row">
                  <div class="col-md-4">
                    <label>Giờ khởi hành: </label>
                  </div>
                  <div class="col-md-8">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <label>Giờ đến: </label>
                  </div>
                  <div class="col-md-8">
                    <p></p>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-5">
                    <label>Địa điểm trả khách: </label>
                  </div>
                  <div class="col-md-7">
                    <p></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-7 box1">
            <div class="row">
              <div class="col-md-1"></div>
              <div class="col-md-4">
                <div class="row">
                  <h4>Ghế đã chọn: &nbsp;</h4>
                  <h4>31</h4>
                </div>
                <div class="row">
                  <h4>Tầng trên</h4>
                  <div class="upfloor">
                    <div class="row">
                      <button
                        type="button"
                        class="btn  btn-chair btn-primary"
                        value="D1"
                      >
                        D1
                      </button>
                      <button
                        type="button"
                        class="btn  btn-chair btn-primary"
                        value="E1"
                      >
                        E1
                      </button>
                      <button
                        type="button"
                        class="btn  btn-chair btn-primary"
                        value="F1"
                      >
                        F1
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-chair btn-primary"
                        value="D2"
                      >
                        D2
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="E2"
                      >
                        E2
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="F2"
                      >
                        F2
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D3"
                      >
                        D3
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="E3"
                      >
                        E3
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="F3"
                      >
                        F3
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D4"
                      >
                        D4
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="E4"
                      >
                        E4
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="F4"
                      >
                        F4
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D5"
                      >
                        D5
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="E5"
                      >
                        E5
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="F5"
                      >
                        F5
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D6"
                      >
                        D6
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="E6"
                      >
                        E6
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="F6"
                      >
                        F6
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D7"
                      >
                        D7
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D8"
                      >
                        D8
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D9"
                      >
                        D9
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D10"
                      >
                        D10
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="D11"
                      >
                        D11
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-2"></div>
              <div class="col-md-4">
                <div class="row">
                  <h4>Tổng tiền: &nbsp;</h4>
                  <h4></h4>
                </div>
                <div class="row">
                  <h4>Tầng dưới</h4>
                  <div class="downfloor">
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A1"
                      >
                        A1
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B1"
                      >
                        B1
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C1"
                      >
                        C1
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A2"
                      >
                        A2
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B2"
                      >
                        B2
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C2"
                      >
                        C2
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A3"
                      >
                        A3
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B3"
                      >
                        B3
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C3"
                      >
                        C3
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A4"
                      >
                        A4
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B4"
                      >
                        B4
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C4"
                      >
                        C4
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A5"
                      >
                        A5
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B5"
                      >
                        B5
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C5"
                      >
                        C5
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A6"
                      >
                        A6
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="B6"
                      >
                        B6
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="C6"
                      >
                        C6
                      </button>
                    </div>
                    <div class="row">
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A7"
                      >
                        A7
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A8"
                      >
                        A8
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A9"
                      >
                        A9
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A10"
                      >
                        A10
                      </button>
                      <button
                        type="button"
                        class="btn btn-primary btn-chair"
                        value="A11"
                      >
                        A11
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-1"></div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="row note">
                  <div class="controng"></div>
                  <p>Còn trống</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="row note">
                  <div class="dadat"></div>
                  <p>Đã đặt</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="row note">
                  <div class="dangchon"></div>
                  <p>Đang chọn</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <%@ include file="common/footer.jsp" %>

    <!-- Model Login -->
    <%@ include file="common/modalCommon.jsp" %>
    <!-- End Model Login -->

    <!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
  </body>
</html>
