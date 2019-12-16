<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- moDal add Bus -->
<div class="modal fade" id="modalAddBus" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Thêm Xe</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="addBus" action="LoadListBusBusinessServlet">
					<div class="form-group">
						<label for="codeCarControl">Biển Kiểm Soát</label> 
						<input type="text"
							class="form-control" id="codeCarControl" name="codeCarControl">
					</div>
					<div class="form-group">
						<label for="codeCarControl">Hãng Xe</label> 
						<input type="text"
							class="form-control" list="busBrands" value="" id="busBrand" name="busBrand">
							 <datalist id="busBrands">
							    <option value="Hyundai">Hyundai</option>
							    <option value="Suzuki">Suzuki</option>
							    <option value="Toyota">Toyota</option>
							    <option value="Kia">Kia</option>
							    <option value="Mitsubishi">Mitsubishi</option>
							    <option value="Mercedes-Benz">Mercedes-Benz</option>
							    <option value="Volvo">Volvo</option>
							    <option value="SsangYong">SsangYong</option>
							    <option value="Honda">Honda</option>
							    <option value="Isuzu">Isuzu</option>
							    <option value="Thaco Bus">Thaco Bus</option>
							  </datalist>
					</div>
					<div class="form-group">
						<label for="busColor">Màu Sắc</label> <input type="text"
							class="form-control" id="busColor" name="busColor">
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary" name="btnAddbus" value="btnAddbus">Thêm Bus</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- moDal add Bus -->
<!-- moDal edit Bus -->
<div class="modal fade" id="modalEditBus" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Update Bus</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="editBus">
					<div class="form-group" style="display:none;">
					 <input type="text" class="form-control" id="idBusForEdit" name="idBusForEditidBusForEdit">
					</div>
					<div class="form-group">
						<label for="codeCarControlEdit">Biển Kiểm Soát</label> <input type="text"
							class="form-control" id="codeCarControlEdit" name="codeCarControlEdit">
					</div>
					<div class="form-group">
						<label for="codeCarControlEdit">Hãng Xe</label> <input type="text"
							class="form-control" id="codeCarControlEdit" name="codeCarControlEdit">
					</div>
					<div class="form-group">
						<label for="codeCarControlEdit">Màu Sắc</label> <input type="text"
							class="form-control" id="codeCarControlEdit" name="codeCarControlEdit">
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary" name="btnEdibus" value="btnEdibus">Chỉnh sửa Bus</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- moDal edit Bus -->
<!-- moDal delete Bus -->
<div class="modal fade" id="modalDeleteBus" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Delete Bus</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="">
					 <div class="form-group" style="display:none;">
					 <input type="text" class="form-control" id="idBusForDelete" name="idBusForDelete">
					</div>
					<div class="form-group text-center">
					<button class="btn btn-primary"  name="btnDeletebus" value="btnDeletebus"> Xác Nhận Xóa Bus </button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- moDal delete Bus -->

<script type="text/javascript">
	$("[data-target='#modalEditBus']").each(function(){
		$(this).click(function(){
			$("#idBusForEdit").val($(this).data("idBus"));		
		});
	});
	$("[data-target='#modalDeleteBus']").each(function(){
		$(this).click(function(){
			$("#idBusForDelete").val($(this).data("idBus"));		
		});
	});
	$("document").ready(function(){
		$("form#addBus").validate({
			rules:{
				codeCarControl:{
					required : true,
					minlength: 9,
					maxlength: 10,
					checkDuplicateBus:true
				},
				busBrand:{
					required : true,
					maxlength: 20
				},
				busColor:{
					required : true,
					maxlength: 20
				},
			},
			messages:{
				codeCarControl:{
					required : "Vui Lòng Nhập Trường Này",
					minlength: "Ít Nhất Có 9 ký Tự",
					maxlength: "Nhiều Nhất Có 10 ký Tự",
				},
				busBrand:{
					required : "Vui Lòng Nhập Trường Này",
					maxlength: "Nhiều Nhất Có 20 ký Tự",
				},
				busColor:{
					required : "Vui Lòng Nhập Trường Này",
					maxlength: "Nhiều Nhất Có 20 ký Tự",
				},
			},
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
				"checkDuplicateBus",
				function (value,element){
					let rs= true;
					$("span[data-bus-brand='true']").each(function(){
						if($(this).html() == value)
							rs=false;
					})
					return rs;
				}, "Xe Đã Tồn Tại");
	});
</script>