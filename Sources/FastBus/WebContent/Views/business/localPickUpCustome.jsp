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
					<h1 class="h3 mb-2 text-gray-800">Quản Lý Điểm Đón</h1>
					<p class="mb-4"></p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">
								<a href="#addPickUPlocatio" id="addPickUPlocation"><i
									class="fas fa-plus m-2"></i>Thêm Địa Điểm Đón</a>
							</h6>
							<form action="" id="addPickUPlocation" style="display: none;">
								<div class="row">
									<div class="col-md-4">
										<input class="form-control" placeholder="Nhập Địa Điểm Đón"
											name="inputAddressDetailPichup">
									</div>
									<div class="col-md-4">
										<select class="form-control" name="cbChoseCity">
											<option value="">Tỉnh/Thành Phố</option>
											<option value="1">Tỉnh/Thành Phố</option>
										</select>
									</div>
									<div class="col-md-4">
										<button class="btn btn-primary" name="btnaddPickUPlocation"
											value="btnaddPickUPlocation">Thêm Điểm Đón</button>
									</div>
								</div>
							</form>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>Stt</th>
											<th>Địa Điểm Đón</th>
											<th>Thành Phố</th>
											<th>Hành Động</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Stt</th>
											<th>Địa Điểm Đón</th>
											<th>Thành Phố</th>
											<th>Hành Động</th>
										</tr>
									</tfoot>
									<tbody>

										<tr>
											<th>1</th>
											<td>Bếnh Xe Trung Tâm Đà Nẵng</td>
											<td>ĐÀ Nẵng</td>
											<td><a href="#edit"><i class="fas fa-edit"></i></a> <a
												href="#delete"><i class="far fa-trash-alt text-danger"></i></a>
											</td>
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
	<script type="text/javascript">
		$(document).ready(function() {
			$("#addPickUPlocation").click(function() {
				$(this).parent().next().toggle();
			});

			$("form#addPickUPlocation").validate({
				rules : {
					inputAddressDetailPichup : {
						required : true,
						validateSpecialCharacters:true,
						minlength : 6
					},
					cbChoseCity : {
						required : true,
					}
				},
				messages : {
					inputAddressDetailPichup : {
						required : "Vui Lòng Nhập Trường Này",
						minlength : "Nhập lớn  Hớn 6 Ký Tự"
					},
					cbChoseCity : {
						required : "Vui Lòng Chọn Trường Này"
					}	
				},
				errorElement : "em",
				highlight : function(element, errorClass) {
					$(element).addClass("is-invalid").removeClass("is-valid");
				},
				unhighlight : function(element, errorClass) {
					$(element).addClass("is-valid").removeClass("is-invalid");
				}
			});
			
			$.validator
			.addMethod(
					"validateSpecialCharacters",
					function(value, element) {
						return (this.optional(element) || /^[0-9a-zA-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s]+$/
								.test(value));
					}, "Không nhập ký tự đặt biệt");
		});
	</script>

</body>
</html>
