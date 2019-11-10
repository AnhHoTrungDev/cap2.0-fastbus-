<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/homepage.css">
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Fastbus</title>
<!-- link css -->
<%@ include file="common/topbootstrap.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Views/users/assets/css/multiplecarousel.css">
</head>

<body>
	<!--::header part start::-->
	<%@ include file="common/menu.jsp"%>
	<!-- Header part end-->

	<!-- banner part start-->
	<section class="banner_part full-image">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-10">
					<div class="banner_text text-center">
						<div class="banner_text_iner">
							<h1>Fast Bus</h1>
							<p>Let’s start your journey with us, your trip will be fast
								and safe</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->

	<!-- booking part start-->
	<section class="booking_part">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="booking_menu">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="hotel-tab">Tìm Kiếm Chuyến Xe</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="booking_content">
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="hotel" role="tabpanel"
								aria-labelledby="hotel-tab">
								<div class="booking_form">
									<form action="<%=request.getContextPath() %>/SearchTripServlet">
										<div class="form-row">
											<div class="form_colum">
												<select class="nc_select" name="startPlace">
													<option selected value="">Nơi đi</option>
													<%
														for (DiaDiem lPlace : (List<DiaDiem>) request.getAttribute("listPlace")) {
													%>
													<option value="<%=lPlace.getNamePlace()%>"><%=lPlace.getNamePlace()%></option>
													<%
														}
													%>
												</select>
											</div>
											<div class="form_colum">
												<select class="nc_select" name="endPlace">
													<option selected value="">Nơi đến</option>
													<%
														for (DiaDiem lPlace : (List<DiaDiem>) request.getAttribute("listPlace")) {
													%>
													<option value="<%=lPlace.getNamePlace()%>"><%=lPlace.getNamePlace()%></option>
													<%
														}
													%>
												</select>
											</div>
											<div class="form_colum">
												<input id="datepicker_1" placeholder="Ngày đi"
													name="startDate">
											</div>
											<div class="form_colum">
												<input id="datepicker_2" type="time" name="startTime"
													placeholder="Giờ đi">
											</div>
											<div class="form_btn">
												<input type="submit" class="btn_1" value="Tìm Kiếm"
													name="search" />
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Header part end-->

	<!--top place start-->
	<section class="" style="margin-top: 400px;">
		<div>
			<h1 class="text-center my-5">Danh Sách Nhà Xe</h1>
		</div>
		<div class="container my-4">
			<div id="carouselExample" class="carousel slide" data-ride="carousel"
				data-interval="9000">
				<div class="carousel-inner row w-100 mx-auto" role="listbox">
					<!-- card 1 cho 1 cái cố đinh có active moi chay dc -->
					<div class="carousel-item col-md-4  active">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end card 1 -->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								 <a href="#" class="">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title">Nhà xe Phương Trang</h5>
								<p class="card-text">Với đội ngũ hướng dẫn viên nhiệt tình,
									chu đáo, đội ngũ lái xe an toàn, kinh nghiệm lâu năm, nhà xe
									Phương Trang mong muốn đem đến cho khách hàng một trải nghiệm
									dịch vụ tốt nhất. Đặc biệt “nói không với tệ nạn móc túi” – một
									trường hợp không hiếm gặp khi đi xe khách..</p>
							</div>
							<div class="card-footer text-right">
								<a href="#" class="w-100 textcenter">xem thêm</a>
							</div>
						</div>
					</div>
					<!-- end  element-->
				</div>
				<a class="carousel-control-prev" href="#carouselExample"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next text-faded" href="#carouselExample"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>

	<!--top place end-->


	<!-- footer part start-->
	<%@ include file="common/footer.jsp"%>

	<!-- Link jquery -->
	<%@ include file="common/botbootstrap.jsp"%>
	<script
		src="<%=request.getContextPath()%>/Views/js/multiplecarousel.js"></script>
</html>