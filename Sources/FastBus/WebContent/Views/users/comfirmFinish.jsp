<%@page import="model.bean.ChuyenXe"%>
<%@page import="model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Fastbus</title>
<!-- link css -->
<%@ include file="common/topbootstrap.jsp"%>
</head>

<body>
	<!--::header part start::-->
	<%@ include file="common/menu.jsp"%>
	<!-- Header part end-->
	<section>
		<div id="steps" class="container tientrinh">
			<ul class="list-steps clearfix">
				<li>Chọn ghế</li>
				<li>Thông tin khách hàng</li>
				<li class="active first">Xác nhận</li>
			</ul>
		</div>
	</section>
	<section>
		<div class="container my-5">
			<form action="SeatBookingInformationServlet"
				id="SeatBookingInformationServlet">
				<div class="row">
					<div class="col-sm-6">
						<div class="card">
							<div class="card-body">
								<legend>
									<h3 class="text-danger">Thông Tin Khách Hàng</h3>
								</legend>
								<%
									User user = (User) session.getAttribute("getUser");
									String seat = (String) session.getAttribute("seat");
									ChuyenXe trip = (ChuyenXe) session.getAttribute("tripInfo");
								%>
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="fullName:" class="col-sm-5 col-form-label">Họ
										& Tên &nbsp; </label>
									<div class="col-sm-7 ">
										<input type="text"
											class="form-control-plaintext  border-bottom" id="fullName"
											name="name" placeholder="Nhập họ và tên"
											value="<%=user.getName()%>" readonly />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="email:" class="col-sm-5 col-form-label">Email&nbsp;
									</label>
									<div class="col-sm-7 ">
										<input type="text"
											class="form-control-plaintext  border-bottom" id="email"
											name="email" placeholder="Enter email"
											value="<%=user.getEmail()%>" readonly />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="email:" class="col-sm-5 col-form-label">Phone
										&nbsp; </label>
									<div class="col-sm-7 ">
										<input type="number"
											class="form-control-plaintext  border-bottom" id="phone"
											name="phone" placeholder="Số Điện thoại"
											value="<%=user.getPhone()%>" readonly />
									</div>
								</div>
								<!-- end -->
								<!--  -->
								<div class="form-group">
									<label for="phone" class="col-form-label">địa chỉ</label>
									<textarea class="form-control-plaintext border-bottom"
										id="address" rows="1" name="address" placeholder="Địa chỉ"
										readonly><%=user.getAddess()%></textarea>
								</div>
								<!--  -->
								<div id="accpPayOption">
									<div class="form-check form-check-inline">
										<input type="radio" id="payOffline" name="payOption"
											class="form-check-input" value="payOffline" checked>
										<label class="form-check-label" for="payOption">Thanh
											toán tại chổ</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="payOnline" name="payOption"
											class="form-check-input" value="payOnline"> <label
											class="form-check-label" for="payOption">Thanh toán
											qua momo </label>
									</div>
								</div>
								<!--  -->
								<!-- show qr momo-->
								<div class="w-100 my-2" id="qrPay" style="display: none;">
									<div class="w-50 m-auto">
										<img src="Views/users/assets/img/butget/momo.jpg" alt="QRpay">
									</div>
									<p class="text-center">Dùng tài khoản momo quét mã QR trên
										và nhấn xác nhận</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="card">
							<div class="card-body">
								<legend>
									<h3 class="text-danger">Thông Tin Vé</h3>
								</legend>
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="Tuyen" class="col-sm-5 col-form-label">Tuyến&nbsp;</label>
									<div class="col-sm-7">
										<input type="text" readonly
											class="form-control-plaintext border-bottom" id="Tuyen"
											name="trip"
											value="<%=trip.getStartPlace()%> - <%=trip.getEndPlace()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="locationEnd" class="col-sm-5 col-form-label">Nhà
										Xe &nbsp;</label>
									<div class="col-sm-7">
										<input type="text" readonly
											class="form-control-plaintext border-bottom" name="business"
											id="locationEnd" value="<%=trip.getNameBusiness()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="departureDay" class="col-sm-5 col-form-label">Ngày
										khởi hành&nbsp;</label>
									<div class="col-sm-7 ">
										<input type="text" readonly
											class="form-control-plaintext  border-bottom"
											id="departureDay" name="startDate"
											value="<%=trip.getStartDate()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="departureTime" class="col-sm-5 col-form-label">Giờ
										khởi hành &nbsp;</label>
									<div class="col-sm-7 ">
										<input type="time" readonly
											class="form-control-plaintext border-bottom"
											id="departureTime" name="startTime"
											value="<%=trip.getStartTime()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->

								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="departureDay" class="col-sm-5 col-form-label">Thời
										gian đi &nbsp;</label>
									<div class="col-sm-7">
										<input type="time" readonly
											class="form-control-plaintext border-bottom"
											id="departureDay" name="totalTime" value="16:20" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="timeFinishExpected" class="col-sm-5 col-form-label">Giờ
										đến dự kiến &nbsp;</label>
									<div class="col-sm-7">
										<input type="time" readonly
											class="form-control-plaintext border-bottom"
											id="timeFinishExpected" name="endTime" value="06:00" />
									</div>
								</div>
								<!-- end -->
								<div class="form-group row">
									<label for="codeChairOder" class="col-sm-5 col-form-label">Ghế đã chọn &nbsp;</label>
									<div class="col-sm-7  ">
										<input type="text" readonly
											class="form-control-plaintext border-bottom"
											id="codeChairOder" value="<%=seat%>"
											placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-5 col-form-label ">Giá Vé &nbsp;</label>
									<div class="col-7">
										<div class="input-group border-bottom">
											<input type="text" readonly class="form-control-plaintext"
												id="fare" name="price" value="<%=trip.getPrice()%>" />
										</div>
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-5 col-form-label ">Địa chỉ đón: &nbsp;</label>
									<div class="col-sm-7">
										<div class="input-group border-bottom">
											<input type="text" readonly class="form-control-plaintext"
												id="fare" name="price" value="<%=trip.getPrice()%>" />
										</div>
									</div>
								</div>
								<!-- end -->
							</div>
						</div>
					</div>
					<div class="col-sm-5 m-auto">
						<a href="#" class="mr-2" id="comeBackHistory">Quay Lại</a>
						<button type="submit" class="btn btn-primary my-3"
							id="confirmFinish" name="confirmFinish" value="Xác nhận">Xác
							nhận</button>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- footer part start-->
	<%@ include file="common/footer.jsp"%>

	<!-- Link jquery -->
	<%@ include file="common/botbootstrap.jsp"%>
	<script>
		let confirmFinish = document.getElementById("confirmFinish");
		let accpPayOption = document.getElementById("accpPayOption");
		let comeBackHistory = document.getElementById("comeBackHistory");

		confirmFinish.addEventListener("click", function() {
			sessionStorage.clear();
		})

		comeBackHistory.addEventListener("click", function() {
			window.history.back();
		})

		accpPayOption.addEventListener("change", function() {
			if (payOnline.checked == true) {
				$(qrPay).fadeIn("slow")
			} else
				$(qrPay).fadeOut("slow")
		})
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.conbobox-pickUpLocation').select2();
		});
	</script>
</body>

</html>