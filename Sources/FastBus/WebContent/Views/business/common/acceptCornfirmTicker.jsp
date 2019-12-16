<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- moDal accept ticker-->
<div class="modal fade" id="modalAcceptTicker" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Vé</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="deleteTrip">
					<input id="idTripForAccept" style="display: none;" name="idTripForAccept">
					<input type="date" id="dateStarForAccept" style="display: none;" name="dateStarForAccept">
					<input id="getChiarTickerForForAccept" style="display: none;" name="getChiarTickerForForAccept">
					<input id="getTotalPriceForAccept" style="display: none;" name="getTotalPrice">
					<div class="w-100">
					<div class=" w-50 mx-auto">
						<button type="submit" class="btn btn-primary text-center w-100 "
							name="btnConfirmAccept" value="btnConfirmAccept">Chắc Chắn Xác Nhận Vé</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("[data-target='#modalAcceptTicker']").click(function() {
		$(this).each(function() {
			$("#idTripForAccept").val($(this).data("idTrip"));
			$("input#getChiarTickerForForAccept").val($(this).parent().prev().prev().prev().children().html().split(", ").join(","));
			$("input#dateStarForAccept").val($(this).parent().prev().prev().prev().prev().children().val());
			$("input#getTotalPriceForAccept").val($(this).parent().prev().children().html().split("&nbsp;").join(" "));
		});
	});
	
</script>
	<!-- End moDal accept ticker-->