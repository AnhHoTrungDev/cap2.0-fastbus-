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
						<div class="card-header py-3 my-2">
							<div class="w-100">
							<div class="row w-50 mx-auto" style="display:none;">
									<label class="col-md-4">IDtrip</label>
									<!-- cho cái ID trip vô đây nghe ba -->
									<input class="col-md-6 form-control w-50" type="text" value="100" id="idTrip" >
								</div>
								<div class="row w-50 mx-auto">
									<label class="col-md-4">Chọn Ngày</label>
									<input class="col-md-6 form-control w-50" type="date" value="2019-12-19" id="dateChoseShowRevenue" >
								</div>
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Đi Từ</label>
									<input class="col-md-6 form-control w-50" type="text" value="Đà Nẵng" id="startPlace" readonly>
								</div>
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Đến</label>
									<input class="col-md-6 form-control w-50" type="text" value="Đà Lạt" id="endPlace" readonly>
								</div>
								
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Giờ Chạy</label>
									<input class="col-md-6 form-control w-50" type="time" value="14:20:00" id="timeDep" readonly>
								</div>
								
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Số Ghế Đã Được Đặt</label>
									<input id="numberOfBookingSeat" class="col-md-6 form-control w-50" type="text" readonly>
								</div>
								
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Giá vé</label>
									<!-- load giá vé vô đây Value=".." -->
									<input id="priceTrip" class="col-md-6 form-control w-50 price" type="text" value="300000" readonly>
								</div>
								<!-- ta lấy  giá vé  phía trên xử  lý giá trị ni  -->
								<div class="row w-50 my-2 mx-auto">
									<label class="col-md-4">Tổng Danh Thu / Ngày</label>
									<input id="totalPriceFollowingDate" class="col-md-6 form-control w-50 price" type="text" readonly>
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
								
										<tr>
										<td class="numberTicket"><span class="d-block my-2">1</span></td>
										<td><span class="d-block my-2">Quốc Lê</span></td>
										<td><span class="d-block my-2">20/12/2019</span></td>
										<td><span class="d-block my-2">A4, A5, A6, G1</span></td>
										<!-- Cái  Tổng Giá vé Phía Dưới  ko cần Nhập ta tính trên ni rồi-->
										<td><span class="d-block my-2 "><input class="form-control border-0 price bg-white total-price" readonly></span></td>										
										<td><span class="d-block my-2">
										<a href="#Delete" title="Xóa" data-toggle="modal" data-target="#DeteteTicketWasConfirm" data-id-trip="100"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
										</span></td>				
										</tr>
												
												<tr>
										<td class="numberTicket"><span class="d-block my-2">1</span></td>
										<td><span class="d-block my-2">Quốc Lê</span></td>
										<td><span class="d-block my-2">20/12/2019</span></td>
										<td><span class="d-block my-2">A4, A5, A6, G1</span></td>
										<td><span class="d-block my-2 "><input class="form-control border-0 price bg-white total-price" readonly></span></td>										
										<td><span class="d-block my-2">
										<a href="#Delete" title="Xóa" data-toggle="modal" data-target="#DeteteTicketWasConfirm" data-id-trip="100"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
										</span></td>				
										</tr>
										<tr>
										<td class="numberTicket"><span class="d-block my-2">1</span></td>
										<td><span class="d-block my-2">Quốc Lê</span></td>
										<td><span class="d-block my-2">20/12/2019</span></td>
										<td><span class="d-block my-2">A4, A5, A6, G1</span></td>
										<td><span class="d-block my-2 "><input class="form-control border-0 price bg-white total-price" readonly></span></td>										
										<td><span class="d-block my-2">
										<a href="#detroyTicket" title="Xóa" data-toggle="modal" data-target="#DeteteTicketWasConfirm" data-id-trip="100"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
										</span></td>				
										</tr>
														
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
