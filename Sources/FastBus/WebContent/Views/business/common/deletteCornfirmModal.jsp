<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal-->
<!-- Modal 1-->
<div class="modal fade" id="modalDeleteTrip" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Xóa</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="deleteTrip">
					<input id="getIDdleteTrip" style="display: none;" name="confirmDetlete">
					<div class="w-100">
					<div class=" w-50 mx-auto">
						<button type="submit" class="btn btn-primary text-center w-100 "
							name="btnConfirmDetlete" value="btnConfirmDetlete">Xác
							Nhận Xóa</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- End moDal-->

<!-- confirm ticker -->
<div class="modal fade" id="modalTickerConfrim" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Hủy Vé Đợi</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="deleteTrip">
					<input id="getIDdlete" style="display: none;" name="confirmDetlete">
					<div class="w-100">
					<div class=" w-50 mx-auto">
						<button type="submit" class="btn btn-primary text-center w-100 "
							name="btnConfirmDetleteTrickerConfrim" value="btnConfirmDetleteTrickerConfrim">Xác
							Nhận Xóa</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end confirm ticker -->
<script type="text/javascript">
	$("[data-target='#modalTickerConfrim']").click(function() {
		$(this).each(function() {
			console.log($(this).attr("id"));
			$("input#getIDdlete").val($(this).attr("id"));
		});
	});
	
	$("[data-target='#modalDeleteTrip']").click(function() {
		$(this).each(function() {
			console.log($(this).attr("id"));
			$("input#getIDdleteTrip").val($(this).attr("id"));
		});
	});
</script>