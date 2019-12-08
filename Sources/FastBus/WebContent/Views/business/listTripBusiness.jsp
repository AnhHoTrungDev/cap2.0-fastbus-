<%@page import="java.util.List"%>
<%@page import="model.bean.ChuyenXe"%>
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
					<h1 class="h3 mb-2 text-gray-800">Manage Trip</h1>
					<p class="mb-4">
						
					</p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary"><a href="#addTrip" data-toggle="modal" data-target="#modalAddtrip"><i class="fas fa-plus m-2"></i>Thêm Chuyến</a></h6>
							<h6 class="m-0 font-weight-bold text-primary"><a href="#addShowBus" data-toggle="modal" data-target="#modalAddShowBus"><i class="fas fa-plus m-2"></i>Các Bus Hiện Có</a></h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Nới đi</th>
											<th>Nới Đến</th>											
											<th>Giá</th>											
											<th>Thời Gian Đi</th>
											<th>Thời Gian Đến <sup class="text-danger">(Dự Kiến)</sup></th>
											<th>Hành Động</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Nới đi</th>
											<th>Nới Đến</th>											
											<th>Giá</th>										
											<th>Thời Gian Đi</th>
											<th>Thời Gian Đến <sup class="text-danger">(Dự Kiến)</sup></th>
											<th>Hành Động</th>
										</tr>
									</tfoot>
									<tbody>
									<%
										for(ChuyenXe trip : (List<ChuyenXe>)request.getAttribute("listTrip")){
											
									%>
										<tr>
											<td><span class="d-block my-2"><%=trip.getStartPlace()%></span></td>
											<td><span class="d-block my-2"><%=trip.getEndPlace() %></span></td>											
											<td><span class="show-price-format d-block my-2"><%=trip.getPrice() %></span></td>
											<td><input type="time" readonly class="form-control-plaintext noborder" value="<%=trip.getStartTime()%>"></td>
											<td><input type="time" readonly class="form-control-plaintext noborder" value="<%=trip.getEndTime()%>"></td>
											<td><span class="d-block my-2">
											<a href="#Edit" title="Thông tin chi tiết"><i class="fas fa-info-circle mx-1"></i></a>
											<a href="#Edit" title="Xóa" data-toggle="modal" data-target="#modalDeleteTrip" id="<%=trip.getIdTrip()%>"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
											</span>
											</td>															
										</tr>
										<%}%>
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
	<%@ include file="common/addTripModal.jsp"%>
	<%@ include file="common/deletteCornfirmModal.jsp"%>
	<script type="text/javascript">
	$(".show-price-format").each(function(){
		$(this).html((new Intl.NumberFormat('it-IT',
    			{ style: 'currency', currency: 'VND' }).format(Number(parseInt($(this).html())))));
	});
	</script>
	<script src="<%=request.getContextPath()%>/Views/business/js/addTrip.js"></script>
</body>
</html>
