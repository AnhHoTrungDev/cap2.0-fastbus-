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
					<h1 class="h3 mb-2 text-gray-800">Quản Lý Bus</h1>
					<p class="mb-4">
						
					</p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary"><a href="#addBus" data-toggle="modal" data-target="#modalAddBus"><i class="fas fa-plus m-2"></i>Thêm bus</a></h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Stt</th>
											<th>Biển Kiểm Soát Bus</th>	
											<th>Hãng Xe</th>
											<th>Màu Sắc</th>	
											<th>Hành Động</th>									
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Stt</th>
											<th>Biển Kiểm Soát Bus</th>	
											<th>Hãng Xe</th>
											<th>Màu Sắc</th>	
											<th>Hành Động</th>		
										</tr>
									</tfoot>
									<tbody>
								
										<tr>
										<td><span class="d-block my-2">1</span></td>
										<td><span class="d-block my-2">43C1-31.2</span></td>
										<td><span class="d-block my-2">HuynDai</span></td>
										<td><span class="d-block my-2">Đỏ</span></td>
										<td><span class="d-block my-2">
										<a href="#Edit" title="Thông tin chi tiết" data-toggle="modal" data-target="#modalEditBus" data-id-bus="100"><i class="fas fa-edit mx-1"></i></a>
										<a href="#Delete" title="Xóa" data-toggle="modal" data-target="#modalDeleteBus" data-id-bus="100"><i class="fas fa-trash-alt mx-1 text-danger"></i></a>
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
	<!-- end add file jquery -->
	<%@ include file="common/_AddEdetShowBus.jsp"%>
</body>
</html>
