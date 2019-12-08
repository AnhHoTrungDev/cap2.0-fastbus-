<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal xoa trip-->
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
				<form id="deleteTrip"action="DeleteAndCancelTripBusinessServlet">
					<div class="row">
				 		<input readonly class="form-control text-center" id="inforTripShow" >
				 	</div>
				 	<div class="text-center my-3">
				 		<h4 class="text-danger">Và Chuyến Ngược Lại</h4>
				 	</div>
				 	<div class="row">
				 		<input readonly class="form-control text-center" id="inforTripShowRe">
				 	</div>
				 	<div class="row" style="display: none;">
				 		<input readonly class="form-control" id="starPlaceForDeleteTrip" name="starPlaceForDeleteTrip">
				 	</div>
				 	<div class="row" style="display: none;">
				 		<input readonly class="form-control" id="endPlaceForDeleteTrip" name="endPlaceForDeleteTrip">
				 	</div>
				 	<div class="row" style="display: none;"> 
				 		<input  type="time" readonly class="form-control" id="timeStarForDeleteTrip" name="timeStarForDeleteTrip">
				 	</div>
				 	
					<input id="getIDdleteTrip" style="display: none;" name="confirmDetlete">
					<div class="w-100">
					<div class=" w-50 mx-auto my-4">
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
					<input id="idTripForDelete" style="display: none;" name="idTripForDelete">
					<input id="getCodeConfirmAllCharirTrickerr" style="display: none;" name="getCodeConfirmAllCharirTrickerr">
					<input type="date" id="dateStarForDelete" style="display: none;" name="dateStarForDelete">
					
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
			$("input#idTripForDelete").val($(this).attr("id"));
			$("input#dateStarForDelete").val($(this).parent().prev().prev().prev().prev().children().val());
			$("input#getCodeConfirmAllCharirTrickerr").val($(this).parent().prev().prev().prev().children().html().split(", ").join(","));
		});
	});
	
	$("[data-target='#modalDeleteTrip']").click(function() {
		$(this).each(function() {
			console.log($(this).parent().parent().prev().prev().children().val());
			$("input#getIDdleteTrip").val($(this).attr("id"));
			$("#starPlaceForDeleteTrip").val($(this).parent().parent().prev().prev().prev().prev().prev().children().html());
			$("#endPlaceForDeleteTrip").val($(this).parent().parent().prev().prev().prev().prev().children().html());
			$("#timeStarForDeleteTrip").val($(this).parent().parent().prev().prev().children().val());
			
			$("#inforTripShow").val(
				$(this).parent().parent().prev().prev().prev().prev().prev().children().html()
				+" - "+
				$(this).parent().parent().prev().prev().prev().prev().children().html()
				+" - "+
				$(this).parent().parent().prev().prev().children().val()
			);
			
			$("#inforTripShowRe").val(
					$(this).parent().parent().prev().prev().prev().prev().children().html()
					+" - "+
					$(this).parent().parent().prev().prev().prev().prev().prev().children().html()
					+" - "+
					$(this).parent().parent().prev().prev().children().val()
			);
		});
	});
</script>