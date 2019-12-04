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
											<th>Số Ghế</th>
											<th>Giá Tiên</th>
											<th>Action</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Người Đặt</th>
											<th>Chuyến Xe</th>											
											<th>Ngày Đi</th>											
											<th>Số Ghế</th>
											<th>Giá Tiền</th>
											<th>Action</th>
										</tr>
									</tfoot>
									<tbody>
										<tr>
											<td><span class="d-block my-2">Hồ Trung Anh</span></td>
											<td><span class="d-block my-2">Đà Nẵng - Đà Lạt</span></td>											
											<td><input type="date" readonly class="form-control-plaintext noborder" value="2019-12-20"></td>
											<td><span class="d-block my-2">A1,A2,A3</span></td>
											<td><span class="show-price-format d-block my-2">20000</span></td>
											<td>
											<a href="#conFirm" title="Xác Nhận"><i class="fa fa-check-circle text-info" aria-hidden="true"></i></a>
											<a href="#Edit" title="Edit"><i class="fas fa-edit mx-1"></i></a>
											<a href="#Edit" title="Hủy vé" data-toggle="modal" data-target="#modalTickerConfrim" id="100"><i class="fa fa-ban text-danger" aria-hidden="true"></i></a></td>															
										</tr>
										<tr>
											<td><span class="d-block my-2">Không có tên</span></td>
											<td><span class="d-block my-2">Đà Nẵng - Đà Lạt</span></td>											
											<td><input type="date" readonly class="form-control-plaintext noborder" value="2019-12-20"></td>
											<td><span class="d-block my-2">A1,A2,A3</span></td>
											<td><span class="show-price-format d-block my-2">20000</span></td>
											<td>
											<a href="#conFirm" title="Xác Nhận"><i class="fa fa-check-circle text-info" aria-hidden="true"></i></a>
											<a href="#Edit" title="Edit"><i class="fas fa-edit mx-1"></i></a>
											<a href="#Edit" title="Hủy vé" data-toggle="modal" data-target="#modalTickerConfrim" id="12"><i class="fa fa-ban text-danger" aria-hidden="true"></i></a></td>															
										</tr>
												
										<tr>
											<td><span class="d-block my-2">Quốc ML</span></td>
											<td><span class="d-block my-2">Đà Nẵng - Đà Lạt</span></td>											
											<td><input type="date" readonly class="form-control-plaintext noborder" value="2019-12-20"></td>
											<td><span class="d-block my-2">A1,A2,A3</span></td>
											<td><span class="show-price-format d-block my-2">20000</span></td>
											<td>
											<a href="#conFirm" title="Xác Nhận"><i class="fa fa-check-circle text-info" aria-hidden="true"></i></a>
											<a href="#Edit" title="Edit"><i class="fas fa-edit mx-1"></i></a>
											<a href="#Edit" title="Hủy vé" data-toggle="modal" data-target="#modalTickerConfrim" id="1"><i class="fa fa-ban text-danger" aria-hidden="true"></i></a></td>															
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
	<!-- end add file jquery -->
	<%@ include file="common/addTripModal.jsp"%>
	<%@ include file="common/deletteCornfirmModal.jsp"%>
	<script type="text/javascript">
	$(".show-price-format").each(function(){
		$(this).html((new Intl.NumberFormat('it-IT',
    			{ style: 'currency', currency: 'VND' }).format(Number(parseInt($(this).html())))));
	});
	</script>
</body>
</html>
