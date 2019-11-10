<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fastbus</title>
    <!-- link css -->
    <%@ include file="common/topbootstrap.jsp" %>
</head>

<body>
	<!--::header part start::-->
    <%@ include file="common/menu.jsp" %>
    <!-- Header part end-->
 <section>
      <div class="container my-5">
        <div class="row">
          <div class="col-sm-6">
            <div class="card">
              <div class="card-body">
                <legend>
                  <h3 class="text-danger">Thông Tin Khách Hàng</h3>
                </legend>
                <form>
                  <!--  -->
                  <div class="form-group">
                    <label for="fullName">Họ & Tên</label>
                    <input
                      type="email"
                      class="form-control"
                      id="fullName"
                      name="name"
                      placeholder="Nhập họ và tên"
                    />
                  </div>
                  <!--  -->
                  <!--  -->
                  <div class="form-group">
                    <label for="email">Email</label>
                    <input
                      type="email"
                      class="form-control"
                      id="email"
                      aria-describedby="emailHelp"
                      placeholder="Enter email"
                      name="email"
                    />
                  </div>
                  <!--  -->
                  <!--  -->
                  <div class="form-group">
                    <label for="phone">Phone</label>
                    <input
                      type="number"
                      class="form-control"
                      id="phone"
                      placeholder="Số Điện thoại"
                    />
                  </div>
                  <!--  -->
                  <!--  -->
                  <div class="form-group">
                    <label for="phone">Địa chỉ</label>
                    <textarea
                      class="form-control"
                      id="phone"
                      rows="3"
                      name="address"
                    ></textarea>
                  </div>
                  <!--  -->
                  <!--  -->
                  <div class="form-check">
                    <input
                      type="checkbox"
                      class="form-check-input"
                      id="checkRules"
                      name="checkRules"
                    />
                    <label class="form-check-label" for="exampleCheck1"
                      >Chấp Nhận điều khoản Đặt vé Của Fasbus</label
                    >
                  </div>
                  <!--  -->

                  <!--  -->
                  <a href="" class="mr-2">Quay Lại</a>
                  <button type="submit" class="btn btn-primary my-3">
                    Submit
                  </button>
                </form>
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="card">
              <div class="card-body">
                <legend><h3 class="text-danger">Điều Khoản & Lưu Ý</h3></legend>
                <p>
                  <strong class="text-danger">(*)</strong> Quý khách vui lòng
                  mang email có chứa mã vé đến văn phòng để đổi vé lên xe trước
                  giờ xuất bến ít nhất
                  <strong class="text-danger">60 phút</strong> để chúng tôi
                  trung chuyển.
                </p>
                <p>
                  <strong class="text-danger">(*)</strong> Thông tin hành khách
                  phải chính xác, nếu không sẽ không thể lên xe hoặc hủy/đổi vé
                </p>
                <p>
                  <strong class="text-danger">(*)</strong> Quý khách không được
                  đổi / trả vé vào các ngày Lễ Tết ( ngày thường qúy khách được
                  quyền chuyển đổi hoặc hủy vé
                  <strong class="text-danger"> một lần </strong>
                  duy nhất trước giờ xe chạy 24 giờ), phí hủy vé 10%.
                </p>
                <p>
                  <strong class="text-danger">(*)</strong> Nếu quý khách có nhu
                  cầu trung chuyển, vui lòng liên hệ số điện thoại
                  <strong class="text-danger" style="font-size: 1.2em;"
                    >090525853</strong
                  >
                  trước khi đặt vé. Chúng tôi sẽ không đón/ trung chuyển tại
                  những điểm xe trung chuyển không thể tới được.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
     <%@ include file="common/footer.jsp" %>
     <!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
</body>

</html>