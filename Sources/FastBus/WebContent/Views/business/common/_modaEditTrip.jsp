  
<!-- moDal-->
<!-- Modal add tríp -->
<div class="modal fade" id="modalUpdatetrip" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">

		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Thêm Chuyến
					Đi</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="inputPrice">Giá Tiền</label> <input type="number"
							class="form-control" id="inputPriceUpdate" name="inputPriceUpdate"
							placeholder="Giá Tiền">
					</div>
					<div class="form-group">
						<label for="inputTimeStart">Giờ Chạy</label> <input type="time"
							class="form-control" id="inputTimeStartUpdate" name="inputTimeStartUpdate"
							placeholder="Time">
					</div>
					<div class="form-group">
						<label for="inputTimeStart">Giờ Dự Kiến Đến</label> <input
							type="time" class="form-control" id="inputTimeEndUpdate"
							name="inputTimeEndUpdate" placeholder="Time">
					</div>
					<div class="float-right">
						<button type="button" class="btn btn-secondary text-center m-auto"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary text-center m-auto" value="btnUpdateTrip"
							name="btnUpdateTrip">Sửa</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- End moDal-->