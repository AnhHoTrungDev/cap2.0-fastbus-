<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal Accept -->
<div class="modal fade" id="modalAcceptBs" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Chấp Nhận Doanh Nghiệp Mới</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="modalAcceptBs">
					<div class="row">
						<label class="col-4  p-2"> ID Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="idBusiness" id="idBusiness" readonly>
						<label class="col-4  p-2"> Name Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="nameBusiness" id="nameBusiness" readonly>
						<label class="col-4  p-2"> Email Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="emailBusiness" id="emailBusiness" readonly>
						<div class="w-100 text-center"> <button class="btn btn-primary " name="btnAcceptBs" value="btnAcceptBs">Xác Nhận</button></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- moDal Accept -->
<!-- moDal no Accept -->
<div class="modal fade" id="modalNoAcceptBs" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Không Chấp Nhận Doanh Nghiệp Mới</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="modalAcceptBs">
					<div class="row">
						<label class="col-4 p-2"> ID Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="idNoBusiness" id="idNoBusiness" readonly>
						<label class="col-4 p-2"> Name Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="nameNoBusiness" id="nameNoBusiness" readonly>
						<label class="col-4 p-2"> Email Business :</label>
						<input class="form-control my-1 bg-white border-0  col-8" name="emailNoBusiness" id="emailNoBusiness" readonly>
						<div class="w-100 text-center"> <button class="btn btn-danger " name="btnNoAcceptBs" value="btnNoAcceptBs">Xác Nhận</button></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- moDal no Accept -->
<script type="text/javascript">
 $("[data-target='#modalAcceptBs']").each(function(){
	 $("#idBusiness").val($(this).parent().parent().prev().prev().prev().prev().prev().children().html());
	 $("#nameBusiness").val($(this).parent().parent().prev().prev().prev().prev().children().html());
	 $("#emailBusiness").val($(this).parent().parent().prev().prev().prev().children().html());
 });
 $("[data-target='#modalNoAcceptBs']").each(function(){
	 $("#idNoBusiness").val($(this).parent().parent().prev().prev().prev().prev().prev().children().html());
	 $("#nameNoBusiness").val($(this).parent().parent().prev().prev().prev().prev().children().html());
	 $("#emailNoBusiness").val($(this).parent().parent().prev().prev().prev().children().html());
 });
</script>