<%@page import="model.bean.SeatBooking"%>
<%@page import="model.bean.ChuyenXe"%>
<%@page import="java.util.List"%>
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

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- right Sidebar -->
		<%@ include file="common/rightBarSideBar.jsp"%>
		<!-- End right of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="common/topAdminBarSideBar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">Vé xe Đặt Theo ngày</h1>
					<p class="mb-4">
						
					</p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
					<% ChuyenXe trip= (ChuyenXe)request.getAttribute("trip"); %>
						<div class="card-header py-3 my-2">
							<div class="w-100 row">
							<div class="row" style="display:none;">
									<label class="col-md-4"><%=trip.getIdTrip() %></label>
									<!-- cho cái ID trip vô đây nghe ba -->
									<input class="col-md-6 form-control w-50" type="text" value="<%=trip.getIdTrip() %>" id="idTrip" >
								</div>
								<div class="col-md-6">
									<div class="row  mx-auto">
										<label class="col-md-4">Chọn Ngày</label>
										<input class="col-md-6 form-control w-50" type="date" value="<%=trip.getStartDate()%>" id="dateChoseShowRevenue" >
									</div>
									<div class="row my-2 mx-auto">
										<label class="col-md-4">Đi Từ</label>
										<input class="col-md-6 form-control w-50" type="text" value="<%=trip.getStartPlace() %>" id="startPlace" readonly>
									</div>
									<div class="row my-2 mx-auto">
										<label class="col-md-4">Đến</label>
										<input class="col-md-6 form-control w-50" type="text" value="<%=trip.getEndPlace()%>" id="endPlace" readonly>
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="row my-2 mx-auto">
										<label class="col-md-6">Giờ Chạy</label>
										<input class="col-md-6 form-control w-50" type="time" value="<%=trip.getStartTime() %>" id="timeDep" readonly>
									</div>
								
									<div class="row my-2 mx-auto">
										<label class="col-md-6">Số Ghế Đã Được Đặt</label>
										<input id="numberOfBookingSeat" class="col-md-6 form-control w-50" type="text" readonly>
									</div>
									
									<div class="row my-2 mx-auto">
										<label class="col-md-6">Giá vé</label>
										<!-- load giá vé vô đây Value=".." -->
										<input id="priceTrip" class="col-md-6 form-control w-50 price" type="text" value="<%=trip.getPrice() %>" readonly>
									</div>
								</div>
								<!-- ta lấy  giá vé  phía trên xử  lý giá trị ni  -->
								<div class="row w-50 my-2 mx-auto text-center">
									<label class="col-md-12">Tổng Danh Thu / Ngày</label>
									<input id="totalPriceFollowingDate" class="col-md-12 form-control w-50 price text-center" type="text" readonly>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Stt</th>
											<th>Người Đặt vé</th>	
											<th>Ngày Đi</th>
											<th>Ghế Đã Đặt Đã Trả Tiền</th>	
											<th>Tổng Giá vé</th>	
											<th>Hủy vé</th>									
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Stt</th>
											<th>Người Đặt vé</th>	
											<th>Ngày Đi</th>
											<th>Ghế Đã Đặt Đã Trả Tiền</th>
											<th>Tổng Giá vé</th>										
											<th>Hủy vé</th>									
										</tr>
									</tfoot>
									<tbody>
										<%
											for(SeatBooking seat : (List<SeatBooking>)request.getAttribute("listSeat")){
										%>
										<tr>
											<td class="numberTicket"><span class="d-block my-2">1</span></td>
											<td><span class="d-block my-2"><%=seat.getSeatMail() %></span></td>
											<td><span class="d-block my-2"><%=seat.getSeatStartDate() %></span></td>
											<td><span class="d-block my-2"><%=seat.getSeatName() %></span></td>
											<!-- Cái  Tổng Giá vé Phía Dưới  ko cần Nhập ta tính trên ni rồi-->
											<td><span class="d-block my-2 "><input class="form-control border-0 price bg-white total-price" readonly></span></td>										
											<td><span class="d-block my-2">
											<a href="#Delete" title="Xóa" data-toggle="modal" data-target="#DeteteTicketWasConfirm" data-id-trip="100"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
											</span></td>				
										</tr>
										<%} %>		
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="common/footerAdminPage.jsp"%>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->

	<!-- End Scroll to Top Button-->

	<!-- Logout Modal-->
	<%@ include file="common/logoutModal.jsp"%>
	<!-- end Logout Modal-->

	<!-- add file jquery -->
	<%@ include file="common/botAdmin.jsp"%>
	
	<%@ include file="common/deteteTicketWasConfirm.jsp"%>
</body>
<script type="text/javascript">
	$(".total-price").each(function(){
		console.log($(this).parent())
		$(this).val(
			$(this).parent().parent().prev().html().split(", ").length * Number($("#priceTrip").val())
		);	
	});
	
	function totalPriceFollowingDate(){
		let sum =0;
		$(".total-price").each(function(){
			sum+=Number($(this).val());
		});
		return 	sum;
	}
	$("#numberOfBookingSeat").val(sumSeat());

	function sumSeat(){
		let sum = 0;
		$(".total-price").each(function(){
			console.log($(this).parent())		
				sum+=$(this).parent().parent().prev().html().split(", ").length;
		});
		return sum;
	}
	$("#totalPriceFollowingDate").val(totalPriceFollowingDate());
	
	$(".price").each(function(){
		$(this).val(new Intl.NumberFormat('it-IT',
    			{ style: 'currency', currency: 'VND' }).format(Number($(this).val())));
	});
</script>
</html>
