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
							class="form-control" id="busBrand" name="busBrand">
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
				<form id="addBus">
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
</script>