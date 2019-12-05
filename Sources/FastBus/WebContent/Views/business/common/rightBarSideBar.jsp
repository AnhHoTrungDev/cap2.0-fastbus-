<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Sidebar -->
<ul
	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
	id="accordionSidebar">

	<!-- Sidebar - Brand -->
	<a
		class="sidebar-brand d-flex align-items-center justify-content-center my-3"
		href="index.html">
		<div class="sidebar-brand-icon rotate-n-15">
			<img alt="" src="https://img.icons8.com/clouds/100/000000/bus.png">		
		</div>
		<div class="sidebar-brand-text mx-3">
		</div>
	</a>

	<!-- Divider -->
	<hr class="sidebar-divider my-0">

	<!-- Nav Item - Dashboard -->
	<li class="nav-item active">
		<a class="nav-link" href="index.html">
			<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
		</a>
	</li>
	<!-- end Nav Item - Dashboard -->

	<!-- Divider -->
	<hr class="sidebar-divider">

	<!-- Heading -->
	<div class="sidebar-heading">Quản Lý Chuyến Xe</div>

	<!-- Nav Item - Pages Collapse Menu -->
	<li class="nav-item"><a class="nav-link collapsed" href="#"
		data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
		aria-controls="collapseTwo" id="managerBusTrip"> <i class="fas fa-fw fa-cog"></i> <span>Quản Lý Chuyến Xe</span>
	</a>
		<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
			data-parent="#accordionSidebar">
			<div class="bg-white py-2 collapse-inner rounded">
				<h6 class="collapse-header">Hành Động</h6>
				<a class="collapse-item" href="<%=request.getContextPath() %>/LoadListBusBusinessServlet">Danh Sách Xe Bus</a>
				<a class="collapse-item" href="<%=request.getContextPath() %>/LoadListTripBusinessServlet">Danh Sách Chuyến Xe</a>
				<a class="collapse-item" href="<%=request.getContextPath() %>/LoadListConfirmTicketBusinessServlet">Xác Nhận Vé</a>
				<a class="collapse-item" href="#">Đặt vé cho khách</a>
				<a class="collapse-item" href="#">Hủy Vé Cho Khách</a>
			</div>
		</div>
	</li>

	<!-- Divider -->
	<hr class="sidebar-divider d-none d-md-block">

	<!-- Sidebar Toggler (Sidebar) -->
	<div class="text-center d-none d-md-inline">
		<button class="rounded-circle border-0" id="sidebarToggle"></button>
	</div>

</ul>
<!-- End of Sidebar -->