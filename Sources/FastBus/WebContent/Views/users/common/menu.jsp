<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="main_menu">
	<div class="main_menu_iner">
		<div class="container">
			<div class="row align-items-center ">
				<div class="col-lg-12">
					<nav
						class="navbar navbar-expand-lg navbar-light justify-content-between">
						<a class="navbar-brand"
							href="<%=request.getContextPath()%>/LoadHomePageServlet"> <img
							src="https://img.icons8.com/clouds/100/000000/bus.png">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div
							class="collapse navbar-collapse main-menu-item justify-content-center"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link"
									href="<%=request.getContextPath()%>/LoadHomePageServlet">Trang
										chủ</a></li>
								<li class="nav-item"><a class="nav-link" href="">Vé xe</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="">Đặt xe</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="">Giới
										Thiệu</a></li>
								<li class="nav-item"><a class="nav-link" href="">Liên
										lạc</a></li>
								<li class="nav-item" id="accountNav"><a class="nav-link"
									href="" data-toggle="modal" data-target="#myModal"
									id="menuNotLogin">Đăng Nhập</a>
									<div class="dropdown nav-link" id="menuIsLogin">
										<a class="dropdown-toggle" id="dropdownMenuButton"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"> <%=session.getAttribute("acc_name")%>
										</a>
										<div class="bg-white dropdown-menu mt-2 px-2 highlights-box-menu"
										style=""
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item " href="#"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Thông Tin Cá Nhân</a>
											<a class="dropdown-item " href="#">abc</a>											
											<a id="btnLogout" class="dropdown-item border-top" href="LogoutServlet">
												<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>Thoát
											</a>
										</div>
									</div></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>
