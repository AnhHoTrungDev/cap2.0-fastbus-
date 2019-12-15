<%@page import="model.bean.Images"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.ChuyenXe"%>
<%@page import="model.bean.Business"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>

<body>
	<!--::header part start::-->
	<%@ include file="common/menu.jsp"%>
	<!-- Header part end-->
	<section>
		<div class="container my-5 bg-light p-3 rounded">
			<div class="col-sm-12 text-center mb-5 text-danger">
				<h1>Thông tin nhà xe</h1>
			</div>
			<% 
				Business bs= (Business)request.getAttribute("business");
			%>
			<div class="row">
				<!-- ảnh chay -->
				<div class="col-sm-6 ">
					<div id="carouselExampleControls"
						class="carousel slide shadow m-3 rounded" data-ride="carousel">
						<!-- chứa ảnh -->
						<div class="carousel-inner">
							<!-- cái đầu tiên có active mấy cái sau không cần, nhưng cái đầu   phải có -->
							<%
								for(Images img : (List<Images>)request.getAttribute("listImages") ){

									if(((List<Images>)request.getAttribute("listImages")).indexOf(img)==0){
							%>
							<div class="carousel-item rounded active">
								<!--active -->
								<img style="height: 300px;" class="d-block w-100 rounded"
									src="<%=img.getImgName() %>"
									alt="First slide" />
							</div>
							<% }else{%>
							<!-- mấy cái sau  không cần  -->
							<div class="carousel-item ">
								<img style="height: 300px;" class="d-block w-100 rounded"
									src="<%=img.getImgName() %>"
									alt="Second slide" />
							</div>
							<!-- end mấy cái sau  không cần -->
							<%
								}
							}
							%>
							<!-- end cái đầu tiên có active  -->
						</div>
						<!-- end chứa ảnh -->
						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
					<div class="col-sm-12">
						<h5 class="text-center border-bottom w-50 m-auto pb-3">Hình Ảnh Nhà Xe</h5>
					</div>
				</div>
				<!-- end anh chay -->
				<!-- thông tin  nha xe-->
				<div class="col-sm-6 border-left">
					<!-- 1 dòng -->
					<div class="form-group row">
						<label for="nameGarage:" class="col-sm-5 col-form-label">Tên nhà xe &nbsp; </label>
						<div class="col-sm-7 ">
							<input type="text" class="form-control-plaintext  border-bottom" id="nameGarage" 
								name="nameGarage" placeholder="nameGarage" value="<%=bs.getName() %>" readonly />
						</div>
					</div>
					<!-- end -->
					<!-- 1 dòng -->
					<div class="form-group row">
						<label for="nameGaragePhone:" class="col-sm-5 col-form-label">Số điện thoại nhà xe &nbsp; </label>
						<div class="col-sm-7 ">
							<input type="number"
								class="form-control-plaintext  border-bottom"
								id="nameGaragePhone" name="nameGaragePhone"
								placeholder="nameGaragePhone" value="<%=bs.getPhone() %>" readonly />
						</div>
					</div>
					<!-- end -->
					<!-- 1 dòng -->
					<div class="form-group row">
						<label for="nameGarageGmail:" class="col-sm-5 col-form-label">Gmail nhà xe &nbsp; </label>
						<div class="col-sm-7 ">
							<input type="text" class="form-control-plaintext  border-bottom"
								id="nameGarageGmail" name="nameGarageGmail" placeholder="nameGarageGmail" value="<%=bs.getMail() %>" readonly />
						</div>
					</div>
					<!-- end -->
					<!-- 1 dòng -->
					<div class="form-group row">
						<label for="rangtingBus" class="col-sm-5 col-form-label">Đánh giá &nbsp; </label>
						<div class="col-sm-7 ">
							<div id="rangtingBus" class="show-poin-start-read d-inline-block"
								value-star="2.8"></div>
							<div class="d-inline-block">
								<span id="rangtingBus" class="poinRead"></span>
							</div>
						</div>
					</div>
					<!-- end -->
					<!--  -->
					<div class="form-group">
						<label for="contentGarage" class="col-form-label">Xe khách Phương Trang : </label>
						<textarea class="form-control-plaintext border-bottom" id="contentGarage" rows="10" name="contentGarage"
							placeholder="contentGarage" readonly><%=bs.getDescription() %>
						</textarea>
					</div>
					<!--  -->
				</div>
				<!-- end thông tin  nha xe -->
			</div>
		</div>
	</section>
	<!-- table booking bus -->
	<section class="mb-5">
		<div class="container bg-light p-3 rounded">
			<div class="row">
				<div class="col-sm-12 pt-4">
					<h1 class="text-center">Các Chuyến Xe Nhà Xe Khai Thác</h1>
				</div>
				<div class="col-sm-12">
					<table class="table">
						<!-- tiêu đề -->
						<thead>
							<tr>
								<th scope="col">STT</th>
								<th scope="col">Chuyến đi</th>
								<th scope="col">Loại xe</th>
								<th scope="col">Giờ đi</th>
								<th scope="col">Giá vé</th>
								<th scope="col">Đặt Vé</th>
							</tr>
						</thead>
						<!-- end tiêu đề -->
						<!-- nội dung -->
						<tbody>
							<!-- start content  table 1 dòng -->
							<%
								int dem=1;
								for(ChuyenXe trip : (List<ChuyenXe>)request.getAttribute("listTrip")){
									
							%>
							<tr>
								<td scope="row"><%=dem++ %></td>
								<td><%=trip.getStartPlace() %> - <%=trip.getEndPlace() %></td>
								<td>Giường nằm 46 chổ</td>
								<td scope="col"><%=trip.getStartTime() %></td>
								<td class="curency-table"><%=trip.getPrice()%></td>
								<td>
									<a href="SeatBookingServlet?idTrip=<%= trip.getIdTrip() %>&startTime=<%=trip.getStartTime() %>" class="check-login"> 
									<i class="fa fa-ticket" aria-hidden="true" height="22" width="22"></i> Đặt vé
									</a>
								</td>
							</tr>
							<%} %>
							<!-- end content  table -->
						</tbody>
						<!-- end nội dung -->
					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- footer part start-->
	<%@ include file="common/footer.jsp"%>

	<!-- Link jquery -->
	<%@ include file="common/botbootstrap.jsp"%>
</body>

</html>
<script>
	$(".curency-table").each(function() {
		$(this).html(new Intl.NumberFormat('it-IT', {
			style : 'currency',
			currency : 'VND'
		}).format(Number(parseInt(this.textContent))));
	});
</script>