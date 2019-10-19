<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Fastbus</title>
    <!-- link css -->
    <%@ include file="common/topbootstrap.jsp" %>
</head>
<body>
	<!--::header part start::-->
   <%@ include file="common/menu.jsp" %>
   <!-- Header part end-->
	<section>
		<div class="container">
			<div class="row register-form">
				<div class="col-md-6 form">
					<form role="form">
						<h3>Đăng ký</h3>
						<div class="row">
							<div class="form-group fix1">
								<div class="row fix2">
									<label for="exampleInputName1">Họ tên hành khách</label>
									<span class="text-danger">*</span>
								</div>
								<input type="text" class="form-control" id="exampleInputName1" placeholder="Nhập họ tên khách hàng">
							</div>
						</div>
						<div class="row">
							<div class="form-group fix1">
								<div class="row fix2">
									<label for="exampleInputEmail1">Email</label>
									<span class="text-danger">*</span>
								</div>
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Nhập email">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputPass1">Mật khẩu</label>
										<span class="text-danger">*</span>
									</div>
									<input type="password" class="form-control" id="exampleInputPass1" placeholder="Nhập mật khẩu">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputRePass1">Nhắc lại mật khẩu</label>
										<span class="text-danger">*</span>
									</div>
									<input type="text" class="form-control" id="exampleInputRePass1" placeholder="Nhập lại mật khẩu">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputPhone1">Di động</label>
										<span class="text-danger">*</span>
									</div>
									<input type="text" class="form-control" id="exampleInputPhone1" placeholder="Số di động">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputId1">Số CMND</label>
										<span class="text-danger">*</span>
									</div>
									<input type="text" class="form-control" id="exampleInputId1" placeholder="Số CMND">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputCity1">Tỉnh/TP</label>
										<span class="text-danger">*</span>
									</div>
									<select class="form-control" id="exampleInputCity1">
										<option value="">Chọn Tỉnh/TP</option>
									</select>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputDictrict1">Quận/huyện</label>
										<span class="text-danger">*</span>
									</div>
									<select class="form-control" id="exampleInputDictrict1">
										<option value="">Chọn Quận/huyện</option>
									</select>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputBirth1">Ngày sinh</label>
									</div>
									<input type="date" class="form-control" id="exampleInputBirth1" placeholder="dd/mm/yyyy">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="row fix">
										<label for="exampleInputAddress1">Địa chỉ</label>
									</div>
									<input type="text" class="form-control" id="exampleInputAddress1" placeholder="Nhập địa chỉ liên hệ">
								</div>
							</div>
						</div>
						<div class="row fix">
							<p>(<span class="text-danger">*</span>) là những thông tin bắt buộc phải nhập</p>
						</div>
						<a href="#" class="btn btn-primary btn-lg active" role="button">Đăng ký</a>
					</form>
				</div>
				<div class="col-md-6">
					<img src="img/buslogo.png" alt="" height="60%" width="100%">
				</div>
			</div>
		</div>
	</section>
	
	<!-- footer part start-->
    <%@ include file="common/footer.jsp" %>
    <!-- footer part end-->
    
    <!-- Model Login -->
    	<%@ include file="common/modalCommon.jsp" %>
    <!-- End Model Login --> 
	
    <!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
</body>
</html>