<%@page import="java.util.List"%>
<%@page import="model.bean.SeatBooking"%>
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
					<h1 class="h3 mb-2 text-gray-800"></h1>
					<p class="mb-4">
						
					</p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">Xác Nhận  Đặt Vé</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Người Đặt</th>
											<th>Chuyến Xe</th>											
											<th>Ngày Đi</th>											
											<th>Ghế Đã Đặt</th>
											<th>Giá Vé</th>
											<th>Tổng Tiền</th>
											<th>Action</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Người Đặt</th>
											<th>Chuyến Xe</th>											
											<th>Ngày Đi</th>											
											<th>Ghế Đã Đặt</th>
											<th>Giá Vé</th>
											<th>Tổng Tiền</th>
											<th>Action</th>
										</tr>
									</tfoot>
									<tbody>
									<%
										for(SeatBooking seat : (List<SeatBooking>) request.getAttribute("listSeat")){
											
									%>
										<tr>
											<td><span class="d-block my-2"><%=seat.getUserName() %></span></td>
											<td><span class="d-block my-2"><%=seat.getStartPlace() %> - <%=seat.getEndPlace() %></span></td>											
											<td><input type="date" readonly class="form-control-plaintext noborder" value="<%=seat.getSeatStartDate()%>"></td>
											<td><span class="d-block my-2"><%=seat.getSeatName() %></span></td>
											<td><span class="show-price-format d-block my-2"><%=seat.getPrice() %></span></td>
											<td><span class="show-price-format d-block my-2"><%=seat.getTotalSeat()*Float.parseFloat(seat.getPrice())%></span></td>
											<td>
											<a href="#conFirm" data-toggle="modal" data-target="#modalAcceptTicker" title="Xác Nhận" data-id-trip="100"><i class="fa fa-check-circle text-info" aria-hidden="true"></i></a>
											<a href="#Edit" title="Edit"><i class="fas fa-edit mx-1"></i></a>
											<a href="#Edit" title="Hủy vé" data-toggle="modal" data-target="#modalTickerConfrim" id="100"><i class="fa fa-ban text-danger" aria-hidden="true"></i></a></td>															
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
	<!-- end add file jquery -->
	<%@ include file="common/deletteCornfirmModal.jsp"%>
	<%@ include file="common/acceptCornfirmTicker.jsp"%>
	<script type="text/javascript">
	$(".show-price-format").each(function(){
		$(this).html((new Intl.NumberFormat('it-IT',
    			{ style: 'currency', currency: 'VND' }).format(Number(parseInt($(this).html())))));
	});
	</script>
</body>
</html>
