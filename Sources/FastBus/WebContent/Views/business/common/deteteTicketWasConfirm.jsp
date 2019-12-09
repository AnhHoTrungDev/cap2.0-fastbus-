<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- #DeteteTicketWasConfirm -->
<div class="modal fade" id="DeteteTicketWasConfirm" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Xác Nhận Hủy vé</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form id="DeteteTicketWasConfirm">
					<div style="display:none;">
						<div class="form-group">
							<label for="CodeChairsForDetroy">Mã Ghế</label> <input type="text"
							class="form-control" id="CodeChairsForDetroy" name="CodeChairsForDetroy">
						</div>
						
						<div class="form-group">
							<label for="tripIdForDetroy">TripID</label> <input type="text"
							class="form-control" id="tripIdForDetroy" name="tripIdForDetroy">
						</div>
						
						<div class="form-group">
							<label for="startDateForDetroy">Ngày Đi</label> <input type="date"
							class="form-control" id="startDateForDetroy" name="startDateForDetroy">
						</div>
					</div>
					
					<div class="form-group">
							<label for="showInforConfirm">Xác Nhận Hủy vé của <strong class="text-primary"></strong></label> <input type="text"
							class="form-control text-center bg-white" id="showInforConfirm" readonly>
					</div>
					<div class="form-group text-center">
						<button type="submit" class="btn btn-primary" name="btnDetroyTicket" value="btnDetroyTicket"> Xác Nhận Hủy Vé </button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- #DeteteTicketWasConfirm  -->

<script type="text/javascript">
	$("[data-target='#DeteteTicketWasConfirm']").each(function(){
		$(this).click(function(){
			$("#CodeChairsForDetroy").val($(this).parent().parent() .prev().prev().children().html().split(", ").join(","));
			$("#tripIdForDetroy").val($("#idTrip").val());
			$("#startDateForDetroy").val($("#dateChoseShowRevenue").val());
			$("#showInforConfirm").val(
					"Chuyến "+$("#startPlace").val()+" - "+$("#endPlace").val()+" - "+$("#timeDep").val()
			);
			console.log($(this).parent().parent().prev().prev().prev().prev().children().html())
			$("[for='showInforConfirm']").children().html(
				$(this).parent().parent().prev().prev().prev().prev().children().html()		
			);
			
		});
	})
</script>
