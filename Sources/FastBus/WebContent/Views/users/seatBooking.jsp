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
        <div class="row mb-3">
          <!--Bên  phải Thông tin  -->
          <div class="col-md-4 mt-3 ">
            <form>
              <div class="border div-background-shadow">
                <div class=" pt-3 px-2">
                  <h3 class="text-center mb-3">Thông tin vé xe</h3>
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="Tuyen" class="col-sm-5 col-form-label"
                      >Tuyến&nbsp;:</label
                    >
                    <div class="col-sm-7">
                      <input
                        type="text"
                        readonly
                        class="form-control-plaintext border-bottom"
                        id="Tuyen"
                        value="Đà Nẵng  Đà Lạt"
                      />
                    </div>
                  </div>
                  <!-- end -->
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="departureDay" class="col-sm-5 col-form-label"
                      >Ngày khởi hành&nbsp;:</label
                    >
                    <div class="col-sm-7 ">
                      <input
                        type="date"
                        readonly
                        class="form-control-plaintext  border-bottom"
                        id="departureDay"
                        value="2019-02-04"
                      />
                    </div>
                  </div>
                  <!-- end -->
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="departureTime" class="col-sm-5 col-form-label"
                      >Giờ khởi hành &nbsp;:</label
                    >
                    <div class="col-sm-7 ">
                      <input
                        type="time"
                        readonly
                        class="form-control-plaintext border-bottom"
                        id="departureTime"
                        value="16:20"
                      />
                    </div>
                  </div>
                  <!-- end -->
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="codeChairOder" class="col-sm-5 col-form-label"
                      >Ghế đã chọn &nbsp;:</label
                    >
                    <div class="col-sm-7  ">
                      <input
                        type="text"
                        readonly
                        class="form-control-plaintext border-bottom"
                        id="codeChairOder"
                        value=""
                        placeholder="Bạn chưa chọn ghế nào"
                      />
                    </div>
                  </div>
                  <!-- end -->
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="fare" class="col-sm-5 col-form-label "
                      >Giá Vé &nbsp;:</label
                    >
                    <div class="col-7">
                      <div class="input-group border-bottom">
                        <input
                          type="text"
                          readonly
                          class="form-control-plaintext text-right pr-1"
                          id="fare"
                          value="10000000"
                        />
                        <div class="input-group-prepend">
                          <span
                            class="form-control-plaintext"
                            id="currency"
                          ></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- end -->
                  <!-- 1 dòng -->
                  <div class="form-group row">
                    <label for="pickUpLocation:" class="col-sm-5 col-form-label"
                      >Địa điểm đón: &nbsp;:</label
                    >
                    <div class="col-sm-7 ">
                      <textarea
                        type="text"
                        style="resize: none;"
                        placeholder="Nhập địa điểm đón"
                        rows="1"
                        class="form-control-plaintext border-bottom"
                        id="pickUpLocation"
                      ></textarea>
                    </div>
                  </div>
                  <!-- end -->
                  <div class="col-sm-12 text-center mb-3 ">
                    <a class="mr-2" href="#">Quay Lại</a>
                    <button class="btn btn-primary ml-2">Tiếp Tục</button>
                  </div>
                </div>
              </div>
            </form>
            <!-- bên phải dưới -->
            <div class="border div-background-shadow my-3 px-2">
              <h3 class="text-center mb-3 my-3">Thông tin chi tiết vé xe</h3>
              <!-- 1 dòng -->
              <div class="form-group row">
                <label for="departureDay" class="col-sm-5 col-form-label"
                  >Giờ khởi hành&nbsp;:</label
                >
                <div class="col-sm-7">
                  <input
                    type="time"
                    readonly
                    class="form-control-plaintext border-bottom"
                    id="departureDay"
                    value="16:20"
                  />
                </div>
              </div>
              <!-- end -->
              <!-- 1 dòng -->
              <div class="form-group row">
                <label for="timeFinishExpected" class="col-sm-5 col-form-label"
                  >Giờ đến dự kiến &nbsp;:</label
                >
                <div class="col-sm-7">
                  <input
                    type="time"
                    readonly
                    class="form-control-plaintext border-bottom"
                    id="timeFinishExpected"
                    value="06:00"
                  />
                </div>
              </div>
              <!-- end -->
              <!-- 1 dòng -->
              <div class="form-group row">
                <label for="locationEnd" class="col-sm-5 col-form-label"
                  >Giờ đến dự kiến &nbsp;:</label
                >
                <div class="col-sm-7">
                  <input
                    type="text"
                    readonly
                    class="form-control-plaintext border-bottom"
                    id="locationEnd"
                    value="Bến xe Đà Lạt"
                  />
                </div>
              </div>
              <!-- end -->
            </div>
            <!-- end bên phải dưới -->
          </div>
          <!-- end  Bên  phải Thông tin-->
          <div class="col-md-1"></div>
          <!-- CHỌN GHẾ  BÊNH TRÁI -->
          <div class="col-md-6 mt-3">
            <div
              class="col-md-12 border div-background-shadow pt-3 px-2 text-center"
            >
              <!-- chọn tầng -->
              <ul
                class="nav nav-pills mb-3 border-bottom"
                id="pills-tab"
                role="tablist"
              >
                <li class="nav-item">
                  <a
                    class="nav-link active"
                    id="pills-1stfloor-tab"
                    data-toggle="pill"
                    href="#pills-1stfloor"
                    role="tab"
                    aria-controls="pills-1stfloor"
                    aria-selected="true"
                    >Tầng dưới</a
                  >
                </li>
                <li class="nav-item">
                  <a
                    class="nav-link"
                    id="pills-2ndfloor-tab"
                    data-toggle="pill"
                    href="#pills-2ndfloor"
                    role="tab"
                    aria-controls="pills-2ndfloor"
                    aria-selected="false"
                    >Tầng trên</a
                  >
                </li>
              </ul>
              <!-- end chọn tầng -->
              <div class="tab-content" id="pills-tabContent">
                <!-- tầng 1 -->
                <div
                  class="tab-pane fade show active"
                  id="pills-1stfloor"
                  role="tabpanel"
                  aria-labelledby="pills-1stfloor-tab"
                >
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A1">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A1</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button
                        class="btn btn-danger btn-chair"
                        value="B1"
                        disabled
                      >
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B1</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-warning btn-chair" value="C1">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C1</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A2</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="B2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B2</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="C2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C2</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A3</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="B3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B3</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="C3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C3</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A4</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="B4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B4</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="C4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C4</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A5</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="B5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B5</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="C5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C5</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="A6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A6</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="B6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>B6</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="C6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>C6</small></p>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="A7">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A7</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="A8">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A8</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="A9">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A9</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="A10">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A10</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="A11">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>A11</small></p>
                    </div>
                  </div>
                </div>
                <!-- end tầng 1 -->
                <!--tầng 2 -->
                <div
                  class="tab-pane fade"
                  id="pills-2ndfloor"
                  role="tabpanel"
                  aria-labelledby="pills-2ndfloor-tab"
                >
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D1">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D1</small></p>
                    </div>

                    <div class="col-sm-4">
                      <button
                        class="btn btn-danger btn-chair"
                        value="E1"
                        disabled
                      >
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E1</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-warning btn-chair" value="F1">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F1</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D2</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="E2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E2</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="F2">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F2</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D3</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="E3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E3</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="F3">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F3</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D4</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="E4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E4</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="F4">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F4</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D5</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="E5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E5</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="F5">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F5</small></p>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="D6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D6</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="E6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>E6</small></p>
                    </div>
                    <div class="col-sm-4">
                      <button class="btn btn-default btn-chair" value="F6">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>F6</small></p>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="D7">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D7</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="D8">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D8</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="D9">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D9</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="D10">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D10</small></p>
                    </div>
                    <div class="col-sm">
                      <button class="btn btn-default btn-chair" value="D11">
                        <div class="btn-icon"></div>
                      </button>
                      <p><small>D11</small></p>
                    </div>
                  </div>
                </div>
                <!-- end tầng 2 -->
              </div>
              <!-- end -->
              <!-- hướng dẫng -->
              <div class="row">
                <div class="text-center mb-3 col-4">
                  <button class="btn btn-danger" disabled>
                    <img
                      src="./Views/users/assets/images/chairtest.png"
                      alt=""
                    />
                  </button>
                  <small>Đã được đặt</small>
                </div>
                <div class="text-center mb-3 col-4">
                  <button class="btn btn-default">
                    <img src="./Views/users/assets/images/chair.png" alt="" />
                  </button>
                  <small>Có thể chọn</small>
                </div>
                <div class="text-center mb-3 col-4">
                  <button class="btn btn-warning">
                    <img src="./Views/users/assets/images/chair.png" alt="" />
                  </button>
                  <small>Đang được Chọn</small>
                </div>
              </div>
              <!-- end hướng dẫng -->
            </div>
          </div>
          <!-- end CHỌN GHẾ  BÊNH TRÁI  -->
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
