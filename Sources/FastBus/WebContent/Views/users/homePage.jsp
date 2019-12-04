<%@page import="model.bean.Business"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/Views/users/assets/css/homepage.css">
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
							<p>Let’s start your journey with us, your trip will be fast and safe</p>
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
									<form action="<%=request.getContextPath()%>/SearchTripServlet" method="post" id="searchForm">
										<div class="form-row">
											<div class="form_colum">
												<select class="w-100 js-example-basic-single "
													name="startPlace" id="startPlace">
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
												<select class="w-100 js-example-basic-single "
													name="endPlace">
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
												<input id="datepicker3" placeholder="Ngày đi"
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
				<% 
					List<Business> listBusiness =(List<Business>)request.getAttribute("listBusiness");
				%>
					<!-- card 1 cho 1 cái cố đinh có active moi chay dc -->
					<div class="carousel-item col-md-4  active">
						<div class="card">
							<img src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg" class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title"><%=listBusiness.get(1).getName() %></h5>
								<p class="card-text " style="height: 135px;overflow: hidden;">
									<%=listBusiness.get(1).getDescription() %>
								</p>
							</div>
							<div class="card-footer text-right">
								<a href="BusinessDetailServlet?idBusiness=<%=listBusiness.get(1).getIdBusiness() %>" class="w-100 textcenter">Chi tiết nhà xe</a>
							</div>
						</div>
					</div>
					<!-- end card 1 -->
					<!-- car element  từ  cái thứ 2 trở đi như nhau-->
					<%
						for(Business bs : listBusiness){
							if(bs.getIdBusiness()==listBusiness.get(1).getIdBusiness()){
								continue;
							}else{
					%>
					<div class="carousel-item col-md-4  ">
						<div class="card">
							<img
								src="https://nhatrangtoday.vn/images/photos/ben-xe-phuong-nam-nha-trang-2.jpg"
								class="card-img-top" alt="..." />
							<div class="card-body">
								<h5 class="card-title"><%=bs.getName() %></h5>
								<p class="card-text" style="height: 135px;overflow: hidden;" ><%=bs.getDescription() %></p>
							</div>
							<div class="card-footer text-right">
								<a href="BusinessDetailServlet?idBusiness=<%=bs.getIdBusiness() %>" class="">Chi tiết nhà xe</a>
							</div>
						</div>
					</div>
					<%
							}
						}
					%>
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
	<script>
		$(document).ready(function() {
			$('.js-example-basic-single').select2();
		});
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#searchForm").submit(function(e){
			if(!validateDataForSearch()){ e.preventDefault()};	
		})
		function validateDataForSearch(){
			if($("[name='startPlace']").val()==""){
				alert("Bạn chưa chọn nơi đi")
				return false;
			}
			if($("[name='endPlace']").val()==""){
				alert("Bạn chưa chọn nơi đến")
				return false;
			}
			if($("[name='startDate']").val()==""){
				alert("Bạn chưa chọn ngày đi")
				return false;
			}
			if($("[name='startTime']").val()==""){
				alert("Bạn chưa chọn thời gian đi")
				return false;
			}
			if($("[name='startPlace']").val()==$("[name='endPlace']").val()){
				alert("Bạn không thể chọn nơi đi và nơi đến trùng nhau")
				return false;
			}
			return true;
		}
	});
	</script>
</html>
<script type="text/javascript">
function formatCurentDateSubtractOneDate(){
	var today = new Date();
	var dd = String(Number(today.getDate())-1).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();

	today = yyyy + ','+mm+ ','+ dd;
	return today;
}

function formatCurentDate(){
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();

	today = yyyy + ','+mm+ ','+ dd;
	return today;
}

$('#datepicker3').datepicker({
    todayBtn: "linked",
    language: "it",
    minDate: new Date(formatCurentDate()),
    autoclose: true,
    todayHighlight: true,
    format: 'dd/mm/yyyy'
});
</script>
<!-- fix interface combobox -->
	<script type="text/javascript">
	

	$("[name='startTime']").change(function(){
		CheckTimeValidate()
	})

	function CheckTimeValidate(){
		if(timeCurentChose($("[name='startDate']").val(),$("[name='startTime']").val()) <= formatCurentDateTime()&& 
			$("[name='startDate']").val() != "" && $("[name='startTime']").val() != "" ){
			if(formatCurentDateTime() <= new Date().getTime())
			{	
				$("[name='startTime']").val("");
				alert("Thời Giạn Bạn Chọn Nhỏ Hơn Thời Gian hiện Tại Vui lòng Chọn Lại Thời Gian");
			}
		}
	}

	function formatCurentDateTime(){
		var timeTodate = new Date();

		var dd = String(timeTodate.getDate()).padStart(2, '0');
		var mm = String(timeTodate.getMonth() + 1).padStart(2, '0'); //January is 0!
		var yyyy = timeTodate.getFullYear();
		var h = String(timeTodate.getHours()).padStart(2, '0');
		var mus = String(timeTodate.getMinutes()).padStart(2, '0');
		timeTodate = new Date(Number(yyyy),Number(mm-1),Number(dd),Number(h),Number(mus)).getTime();
		console.log(mus);
		return timeTodate;
		
	}
	
	function timeCurentChose(date,time){
		let arrayTime=time.split(":");
		h= arrayTime[0];
		m=arrayTime[1];
		
		let arrayDate = date.split("/");
		let dd = arrayDate[0];
		let mm = arrayDate[1];
		let yyyy = arrayDate[2];
		
		
		timeTodate = new Date(Number(yyyy),Number(mm-1),Number(dd),Number(h),Number(m)).getTime();
		console.log("arrayDate"+Number(yyyy),Number(mm-1),Number(dd),Number(h),Number(m));
		
		return timeTodate;
	}

	function validateTimeStartDate(){
		let timeCurentChose = new Date($("[name='startDate']").val());
		if(timeCurentChose < new Date(formatCurentDate())){
			alert("Bạn Đã Chọn Ngày trong Quá Khứ")
			return false
		}

		return true;
	}
    </script>
<script
	src="<%=request.getContextPath()%>/Views/users/assets/js/fixComboxJqery.js"></script>