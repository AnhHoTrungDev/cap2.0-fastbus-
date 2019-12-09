<%@page import="model.bean.Bus"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal-->
<!-- Modal edit tríp -->
<div class="modal fade" id="modalEdittrip" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">
	<%
		List<DiaDiem> listPlace= (List<DiaDiem>)request.getAttribute("listPlace");
	%>
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
				<form action="LoadListTripBusinessServlet">
					<div class="form-group">
						<label for="cbAddressDepart">Nơi Đi: </label> 
						<select
							class="form-control" name="cbAddressDepart" id="cbAddressDepart">
							<option value="">Tỉnh/Thành Phố</option>
							<%
								for(DiaDiem startPlace : listPlace){
									
							%>
							<option value="<%=startPlace.getIdPlace()%>"><%=startPlace.getNamePlace() %></option>
							<%} %>
						</select>
					</div>
					<div class="form-group">
						<label for="cbAddressDepart">Nơi Đến: </label> 
						<select class="form-control" name="cbAddressEnd" id="cbAddressEnd">
							<option value="">Tỉnh Thành Phố</option>
							<%
								for(DiaDiem endPlace : listPlace){
							%>
							<option value="<%=endPlace.getIdPlace()%>"><%=endPlace.getNamePlace() %></option>
							<%}%>
						</select>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="idBusgo">Xe Đi</label>
								<select class="form-control" id="idBusgo" name="idBusgo">
								<option value="">Chọn Xe</option>
								<%
									for(Bus startBus : (List<Bus>)request.getAttribute("listBus")){
								%>
								<option value="<%= startBus.getIdBus()%>"><%=startBus.getNameBus() %></option>
								<%} %>
								</select>
								
						</div>
						<div class="form-group col-md-6">
							<label for="idBusReturn">Xe Về</label>
								<select class="form-control" id="idBusReturn" name="idBusReturn">
								<option value="">Chọn Xe</option>
								<%
									for(Bus endBus : (List<Bus>)request.getAttribute("listBus")){
								%>
								<option value="<%= endBus.getIdBus()%>"><%=endBus.getNameBus() %></option>
								<%} %>
								</select>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPrice">Giá Tiền</label> 
						<input type="number"
							class="form-control" id="inputPrice" name="inputPrice"
							placeholder="Giá Tiền">
					</div>
					<div class="form-group">
						<label for="inputTimeStart">Giờ Chạy</label> 
						<input type="time"
							class="form-control" id="inputTimeStart" name="inputTimeStart"
							placeholder="Time">
					</div>
					<div class="form-group">
						<label for="inputTimeStart">Giờ Dự Kiến Đến</label> 
						<input
							type="time" class="form-control" id="inputTimeEnd"
							name="inputTimeEnd" placeholder="Time">
					</div>
					<div class="float-right">
						<button type="button" class="btn btn-secondary text-center m-auto"
							data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary text-center m-auto" value="btnAddTrip"
							name="btnAddTrip">Thêm Mới</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- End moDal-->