<%@page import="model.bean.Ward"%>
<%@page import="model.bean.District"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Province"%>
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
				<%
					Business business= (Business)request.getAttribute("business");
				%>
				<!-- Begin Page Content -->
				<div class="container-fluid shadow p-3">
					<div class="w-100 text-center text-primary my-3">
						<h3>Cập nhập Thông Tin</h3>
					</div>
					<form action="BusinessProfileServlet" id="profileBs" enctype='multipart/form-data' method="post" >
						<div class="col-10">
							<div class="form-group row">
								<label for="inputNamebs" class="col-4 col-form-label text-right">Tên
									Danh Nghiệp :</label>
								<div class="col-8">
									<input id="inputNamebs" name="inputNamebs"
										placeholder="Name Doanh Nghiệp" class="form-control here"
										type="text" value="<%=business.getName()%>" />
								</div>
							</div>
							<div class="form-group row">
								<label for="gmailBs" class="col-4 col-form-label text-right">Gmail:
								</label>
								<div class="col-8">
									<input id="gmailBs" class="form-control here" type="text"
										readonly name="gmailBs" value="<%=business.getMail()%>" >
								</div>
							</div>
							<div class="form-group row">
								<label for="phoneNumberBs"
									class="col-4 col-form-label text-right">Số Điện Thoại :</label>
								<div class="col-8">
									<input id="phoneNumberBs" name="phoneNumberBs"
										placeholder="Số Điện Thoại" class="form-control here"
										type="number" value="<%=business.getPhone()%>">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputNamebs" class="col-4 col-form-label text-right">Địa
									Chỉ</label>
								<div class="col-8 my-1">
									<input id="inputDetailAddressbs" name="inputDetailAddressbs"
										placeholder="Địa Chỉ" class="form-control here" type="text" value="<%=business.getAddress()%>">
								</div>
								<label for="inputNamebs" class="col-4 col-form-label text-right"></label>
								<div class="col-8 my-1">
									<select name="cbProvince" id="cbProvince" class="form-control">
										<option value="">Tỉnh Thành Phố</option>
										<%
                        				for(Province pro : (List<Province>)request.getAttribute("listProvinces")){
                        					if(pro.getIdProvince().equals(business.getNameProvince())){
                        				%>
										<option value="<%=pro.getIdProvince()%>" selected="selected"><%=pro.getNameProvince() %></option>
										<%}else{%>
										<option value="<%=pro.getIdProvince()%>"><%=pro.getNameProvince() %></option>
											<%}
                        				}
										%>
									</select>
								</div>
								<label for="inputNamebs" class="col-4 col-form-label text-right"></label>
								<div class="col-8 my-1">
									<select name="cbDistrict" id="cbDistrict" class="form-control">
										<option value="">Quận Huyện</option>
										<%
                        				for(District dis : (List<District>)request.getAttribute("listDistricts")){
                        					if(dis.getIdDistrict().equals(business.getNameDistrict())){
                        				%>
										<option value="<%=dis.getIdDistrict()%>" selected="selected"><%=dis.getNameDistrict() %></option>
										<%}else{%>
										<option value="<%=dis.getIdDistrict()%>" ><%=dis.getNameDistrict() %></option>
											<%}
                        				}
										%>
									</select>
								</div>
								<label for="inputNamebs" class="col-4 col-form-label text-right"></label>
								<div class="col-8 my-1">
									<select name="cbWard" id="cbWard" class="form-control">
										<option value="">Phường Xã</option>
										<%
                        				for(Ward ward : (List<Ward>)request.getAttribute("listWards")){
                        					if(ward.getIdWard().equals(business.getNameWard())){
                        				%>
										<option value="<%=ward.getIdWard()%>" selected="selected"><%=ward.getNameWard() %></option>
										<%}else{%>
										<option value="<%=ward.getIdWard()%>"><%=ward.getNameWard() %></option>
											<%}
                        				}
										%>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<label for="imageBS" class="col-4 col-form-label text-right">Thêm
									Ảnh :</label>
								<div class="col-8">
									<div class="custom-file mb-2"">
										<input type="file" class="custom-file-input " id="imageBS1"
											name="imageBS1"
											accept="image/jpg,image/png,image/jpeg,image/gif"> <label
											class="custom-file-label" for="imageBS"
											placeholder="Chọn File"></label>
									</div>

									<div class="custom-file mb-2">
										<input type="file" class="custom-file-input " id="imageBS2"
											name="imageBS2"
											accept="image/jpg,image/png,image/jpeg"> <label
											class="custom-file-label" for="imageBS"
											placeholder="Chọn File"></label>
									</div>
									<div class="custom-file mb-2"">
										<input type="file" class="custom-file-input" id="imageBS3"
											name="imageBS3"
											accept="image/jpg,image/png,image/jpeg"> <label
											class="custom-file-label" for="imageBS"
											placeholder="Chọn File"></label>
									</div>
									<div class="custom-file mb-2"">
										<input type="file" class="custom-file-input " id="imageBS4"
											name="imageBS4"
											accept="image/jpg,image/png,image/jpeg"> <label
											class="custom-file-label" for="imageBS"
											placeholder="Chọn File"></label>
									</div>
									<div class="custom-file mb-2"">
										<input type="file" class="custom-file-input" id="imageBS5"
											name="imageBS5"
											accept="image/jpg,image/png,image/jpeg"> <label
											class="custom-file-label" for="imageBS"
											placeholder="Chọn File"></label>
									</div>

								</div>
							</div>
							<div class="form-group row">
								<label for="contentIntroduceBs"
									class="col-4 col-form-label text-right">Nội Dung Gới
									Thiệu :</label>
								<div class="col-8">
									<textarea id="contentIntroduceBs" name="contentIntroduceBs"
										placeholder="Bạn đang xem tag html textarea, là text có thể nhập được văn bản, và có thể chứa rất nhiều dòng..."
										class="form-control here" rows="20" cols="20"><%=business.getDescription() %></textarea>
								</div>
							</div>
							<div class="col-8 w-100 ml-auto text-center">
								<button class="btn btn-primary" name="btnUpdateBs"
									value="btnUpdateBs">Cập Nhập Thông Tin</button>
							</div>
						</div>
					</form>

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
		$("document")
				.ready(
						function() {
							$(".custom-file-input").on(
									"change",
									function() {
										var duoi = $(this).val().split().pop();
										if(duoi == "png" || duoi == "jpg" || duoi == "jpeg"){
											var fileName = $(this).val()
											.split("\\").pop();
											$(this).siblings(".custom-file-label")
											.addClass("selected").html(
													fileName);
										}else{
											$(this).val("");
											$(this).siblings(".custom-file-label")
											.addClass("selected").html("");
											alert("Chỉ Hổ Trợ  File PNG, JPG, JPEG")
;										}
									});
							
							$("form#profileBs").validate(
									{
										rules : {
											inputNamebs : {
												required : true,
											},
											imageBS1 : {
												required : true,
											},
											imageBS2 : {
												required : true,
											},
											imageBS3 : {
												required : true,
											},
											imageBS4 : {
												required : true,
											},
											imageBS5 : {
												required : true,
											},
											phoneNumberBs : {
												required : true,
												validateVietNamPhone : true
											},
											contentIntroduceBs : {
												required : true,
											},
											cbProvince : {
												required : true,
											},
											cbDistrict : {
												required : true,
											},
											cbWard : {
												required : true,
											}
										},
										messages : {
											inputNamebs : {
												required : "Vui lòng nhập trường này",
											},
											imageBS1 : {
												required : "Vui lòng nhập trường này",
											},
											imageBS2 : {
												required : "Vui lòng nhập trường này",
											},
											imageBS3 : {
												required : "Vui lòng nhập trường này",
											},
											imageBS4 : {
												required : "Vui lòng nhập trường này",
											},
											imageBS5 : {
												required : "Vui lòng nhập trường này",
											},
											phoneNumberBs : {
												required : "Vui lòng nhập trường này",
												validateVietNamPhone : true
											},
											contentIntroduceBs : {
												required : "Vui lòng nhập trường này",
											},
											cbProvince : {
												required : "Vui lòng chọn trường này",
											},
											cbDistrict : {
												required : "Vui lòng chọn trường này",
											},
											cbWard : {
												required : "Vui lòng chọn trường này",
											}

										},
										errorElement : "em",
										highlight : function(element,
												errorClass) {
											$(element).addClass("is-invalid")
													.removeClass("is-valid");
										},
										unhighlight : function(element,
												errorClass) {
											$(element).addClass("is-valid")
													.removeClass("is-invalid");
										}
									});

							$.validator
									.addMethod(
											"validateVietNamPhone",
											function(value, element) {
												return (this.optional(element) || /^(09|03|04|07|08|05)([0-9]{8})$/
														.test(value));
											},
											"Đây không phải số điện thoại Việt nam ");
						});
	</script>
	<script src="<%=request.getContextPath()%>/Views/business/js/resgiterAdminCustom.js"></script>
</body>
</html>
