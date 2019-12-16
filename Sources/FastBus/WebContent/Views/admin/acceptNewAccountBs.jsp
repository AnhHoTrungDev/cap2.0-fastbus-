<%@page import="java.util.List"%>
<%@page import="model.bean.Business"%>
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

<title>Chấp  Nhân Doanh Nghiệp  Mới</title>

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
					<h1 class="h3 mb-2 text-gray-800">Danh Sách Nhà Xe Chờ Chấp Nhận</h1>
					<p class="mb-4">
						
					</p>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>ID</th>	
											<th>Tên Nhà Xe</th>	
											<th>Email</th>
											<th>Sô Điện Thoại</th>												
											<th>Địa Chỉ</th>																
											<th>Hành Động</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>ID</th>	
											<th>Tên Nhà Xe</th>	
											<th>Email</th>
											<th>Sô Điện Thoại</th>											
											<th>Địa Chỉ</th>																
											<th>Hành Động</th>
										</tr>
									</tfoot>
									<tbody>
									<%
									int dem=1;
										for(Business bs : (List<Business>)request.getAttribute("listBusiness")){
									%>
										<tr>
											<td><span class="d-block my-2"><%=dem++ %></span></td>
											<td><span class="d-block my-2"><%=bs.getName() %></span></td>
											<td><span class="d-block my-2"><%=bs.getMail() %></span></td>
											<td><span class="d-block my-2"><%=bs.getPhone() %> </span></td>											
											<td style="width:300px;"><span class="d-block my-2 " 
											 	style="text-overflow: ellipsis;" data-toggle="tooltip" data-placement="bottom" 
											 	title="<%=bs.getAddress()%>, <%=bs.getNameWard() %>, <%=bs.getNameDistrict() %>, <%=bs.getNameProvince() %>">
											 	<%=bs.getAddress() %>, <%=bs.getNameWard() %>, <%=bs.getNameDistrict() %>, <%=bs.getNameProvince() %></span></td>	
											<td><span class="d-block my-2 text-center">
											<input class="getidbs" value="<%=bs.getIdBusiness()%>" type="hidden" />
											<a href="#accept" title="accept" class="mx-2" data-toggle="modal" data-target="#modalAcceptBs"><i class="fa fa-check" aria-hidden="true"></i></a>
											<a href="#no-accept" title="no-accep" class="mx-2" data-toggle="modal" data-target="#modalNoAcceptBs"><i class="fa fa-times text-danger" aria-hidden="true"></i></a>
											</span>
											</td>															
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
	
	<%@ include file="common/_AcceptNoAcceptModal.jsp"%>
	<script type="text/javascript">
	$(document).ready(function(){
		  $('[data-toggle="tooltip"]').tooltip();   
		});</script>
</body>
</html>
