<%@page import="model.bean.SeatBooking"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.ChuyenXe"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>Fastbus</title>
<!-- link css -->
<%@ include file="common/topbootstrap.jsp"%>
<%!public String checkSeat(String seatName, List<SeatBooking> list) {
		String check = "btn btn-default btn-chair";
		for (SeatBooking seat : list) {
			if (seatName.contains(seat.getSeatName())) {
				check = "btn btn-danger btn-chair disabled";
				break;
			}
		}
		return check;
	}%>
</head>

<body>
	<!--::header part start::-->
	<%@ include file="common/menu.jsp"%>
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
			<div class="row mb-5 mt-3">
				<!--Bên  phải Thông tin  -->
				<div class="col-md-4 mt-3 ">
					<form action="SeatBookingInformationServlet" id="SeatBookingInformationServlet" method="post">
						<%
							ChuyenXe trip = (ChuyenXe) request.getAttribute("trip");
						%>
						<div class="border div-background-shadow rounded">
							<div class=" pt-3 pl-3 px-2">
								<h3 class="text-center mb-3">Thông tin vé xe</h3>
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="Tuyen" class="col-sm-5 col-form-label">Tuyến&nbsp;</label>
									<div class="col-sm-7">
										<input type="hidden" value="<%=trip.getIdTrip()%>"
											name="idTrip" /> <input type="text" readonly
											class="form-control-plaintext border-bottom" id="Tuyen"
											name="trip"
											value="<%=trip.getStartPlace()%> - <%=trip.getEndPlace()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="locationEnd" class="col-sm-5 col-form-label">Nhà Xe &nbsp;</label>
									<div class="col-sm-7">
										<input type="text" readonly
											class="form-control-plaintext border-bottom" name="business"
											id="locationEnd" value="<%=trip.getNameBusiness()%>" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="departureDay" class="col-sm-5 col-form-label">Ngày khởi hành&nbsp;</label>
									<div class="col-sm-7 ">
										<input type="text" readonly class="form-control-plaintext  border-bottom"
											id="departureDay" name="startDate" value="<%=trip.getStartDate()%>" />
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
										<input type="text" readonly
											class="form-control-plaintext border-bottom"
											id="departureDay" name="totalTime" value="<%=trip.getTotalTime() %> tiếng" />
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
											id="codeChairOder" value=""
											placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-5 col-form-label ">Giá
										Vé &nbsp;</label>
									<div class="col-7">
										<div class="input-group border-bottom">
											<input type="text" readonly class="form-control-plaintext"
												id="fare" name="price" value="0"
												data-price="<%= Float.parseFloat(trip.getPrice())%>" />
										</div>
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-12 col-form-label ">Địa
										chỉ đón: &nbsp;</label>
									<div class="col-sm-12">
										<div class="input-group border-bottom">
											<select class="w-100 conbobox-pickUpLocation my-5"
												name="pickUplocation">
												<option value="1">Bến xe đà nẵng</option>
												<option value="2">Ngã 3 Huế</option>
												<option value="3">Hội An Quốc Lộ 1A</option>
												<option value="4">Bến xe Quảng nam</option>
											</select>
										</div>
									</div>
								</div>
								<!-- end -->
								<!-- 1 dòng -->
								<div class="mb-3"></div>
								<!-- end -->
								<div class="col-sm-12 text-center mb-3 ">
									<a class="mr-2" href="#" id="comeBackHistory">Quay Lại</a> 
									<input type="submit" name="confirmSeatBooking" class="btn btn-primary ml-2"
										value="Tiếp Tục" id="checkBeforeConfirm" data-mystatus="nologin" />							
								</div>
							</div>
						</div>
					</form>
				</div>
				<!-- end  Bên  phải Thông tin-->
				<div class="col-md-1"></div>
				<!-- CHỌN GHẾ  BÊNH TRÁI -->
				<div class="col-md-6 mt-3">
					<div
						class="col-md-12 border div-background-shadow pt-3 px-2 text-center rounded">
						<!-- chọn tầng -->
						<ul class="nav nav-pills mb-3 border-bottom" id="pills-tab"
							role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="pills-1stfloor-tab" data-toggle="pill"
								href="#pills-1stfloor" role="tab" aria-controls="pills-1stfloor"
								aria-selected="true">Tầng dưới</a></li>
							<li class="nav-item"><a class="nav-link"
								id="pills-2ndfloor-tab" data-toggle="pill"
								href="#pills-2ndfloor" role="tab" aria-controls="pills-2ndfloor"
								aria-selected="false">Tầng trên</a></li>
						</ul>
						<!-- end chọn tầng -->
						<div class="tab-content" id="pills-tabContent">
							<!-- tầng 1 -->
							<div class="tab-pane fade show active" id="pills-1stfloor"
								role="tabpanel" aria-labelledby="pills-1stfloor-tab">
								<div class="row">
									<div class="col-sm-4">
										<%
											List<SeatBooking> list = (List<SeatBooking>) request.getAttribute("listSeat");
										%>
										<button class="<%=checkSeat("A1", list)%>" value="A1">

											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A1</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B1", list)%>" value="B1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B1</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C1", list)%>" value="C1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C1</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("A2", list)%>" value="A2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A2</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B2", list)%>" value="B2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B2</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C2", list)%>" value="C2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C2</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("A3", list)%>" value="A3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A3</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B3", list)%>" value="B3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B3</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C3", list)%>" value="C3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C3</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("A4", list)%>" value="A4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A4</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B4", list)%>" value="B4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B4</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C4", list)%>" value="C4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C4</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("A5", list)%>" value="A5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A5</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B5", list)%>" value="B5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B5</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C5", list)%>" value="C5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C5</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("A6", list)%>" value="A6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>A6</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("B6", list)%>" value="B6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>B6</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("C6", list)%>" value="C6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>C6</small>
										</p>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm">
										<button class="<%=checkSeat("G1", list)%>" value="G1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>G1</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("G2", list)%>" value="G2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>G2</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("G3", list)%>" value="G3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>G3</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("G4", list)%>" value="G4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>G4</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("G5", list)%>" value="G5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>G5</small>
										</p>
									</div>
								</div>
							</div>
							<!-- end tầng 1 -->
							<!--tầng 2 -->
							<div class="tab-pane fade" id="pills-2ndfloor" role="tabpanel"
								aria-labelledby="pills-2ndfloor-tab">
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D1", list)%>" value="D1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D1</small>
										</p>
									</div>

									<div class="col-sm-4">
										<button class="<%=checkSeat("E1", list)%>" value="E1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E1</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F1", list)%>" value="F1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F1</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D2", list)%>" value="D2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D2</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("E2", list)%>" value="E2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E2</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F2", list)%>" value="F2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F2</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D3", list)%>" value="D3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D3</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("E3", list)%>" value="E3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E3</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F3", list)%>" value="F3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F3</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D4", list)%>" value="D4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D4</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("E4", list)%>" value="E4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E4</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F4", list)%>" value="F4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F4</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D5", list)%>" value="D5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D5</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("E5", list)%>" value="E5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E5</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F5", list)%>" value="F5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F5</small>
										</p>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<button class="<%=checkSeat("D6", list)%>" value="D6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>D6</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("E6", list)%>" value="E6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>E6</small>
										</p>
									</div>
									<div class="col-sm-4">
										<button class="<%=checkSeat("F6", list)%>" value="F6">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>F6</small>
										</p>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm">
										<button class="<%=checkSeat("H1", list)%>" value="H1">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>H1</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("H2", list)%>" value="H2">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>H2</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("H3", list)%>" value="H3">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>H3</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("H4", list)%>" value="H4">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>H4</small>
										</p>
									</div>
									<div class="col-sm">
										<button class="<%=checkSeat("H5", list)%>" value="H5">
											<div class="btn-icon"></div>
										</button>
										<p>
											<small>H5</small>
										</p>
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
									<img src="./Views/users/assets/images/chair.png" alt="" />
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

	<%@ include file="common/footer.jsp"%>

	<!-- Link jquery -->
	<%@ include file="common/botbootstrap.jsp"%>
	<script
		src="<%=request.getContextPath()%>/Views/js/ServletBookingServlet.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
    $('.conbobox-pickUpLocation').select2();
  });
</script>
<script language="JavaScript" type="text/javascript"> 
$(document).ready(function() {
$("#checkBeforeConfirm").each(function() {
});

$("#checkBeforeConfirm").each(function() {
  this.addEventListener(
    "click",
    function(e) {
      if(codeChairOder.value == ""){
    	  alert("Bạn chưa chọn ghế nào");
    	  e.preventDefault();
    	  return false;
      }
      var sseEmail = "<%=session.getAttribute("email")%>";
      var dataSetStatus=$(checkBeforeConfirm).data("mystatus");
      console.log(sseEmail);
      var modal = document.getElementById("myModal");
      if (sseEmail == "null" && dataSetStatus == "nologin" ) {
        $(modal).modal("show");
        $("#messageDiv").html(
          "<font color='blue'>Vui lòng Đăng Nhập Để Tiếp Tục </font>"
        );
        $("#messageDiv").show();
        e.preventDefault();
        return false;
      }
    },
    false
  );
});
});
</script>
<script>		
		let comeBackHistory = document.getElementById("comeBackHistory");
		comeBackHistory.addEventListener("click",function(){
			window.history.back();
		})
</script>
</body>
</html>
