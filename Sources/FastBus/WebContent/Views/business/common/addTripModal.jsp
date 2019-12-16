<%@page import="model.bean.Bus"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal-->
<!-- Modal add tríp -->
<div class="modal fade" id="modalAddtrip" tabindex="-1" role="dialog"
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
				<form action="LoadListTripBusinessServlet" id="addTripbs">
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
<script type="text/javascript">
	$("document").ready(function(){
		function checkBusAddTtip(){		
		}
		$("#idBusgo").change(function(){
			if($("#idBusgo").val() == $("#idBusReturn").val()){
				alert("Bạn  Phải Chọn 2 Bus Khác Nhau");
				$("#idBusgo").val("");
				$("#idBusgo").valid();
			}
		});
		
		$("#idBusReturn").change(function(){
			if($("#idBusgo").val() == $("#idBusReturn").val()){
				alert("Bạn  Phải Chọn 2 Bus Khác Nhau");
				$("#idBusReturn").val("");
				$("#idBusReturn").valid();
			}
		});
		
		$("[name='cbAddressDepart']").change(function(){
			  if($("[name='cbAddressEnd']").val()!= ""){
				  if($("[name='cbAddressEnd']").val() == $("[name='cbAddressDepart']").val()){
					  $("[name='cbAddressDepart']").val("");
					  $(this).valid();
					  alert("Nơi Đi Và Nơi Đến Trùng Nhau");
				  }
			  }
			  $("[name='cbAddressEnd']").change(function(){
				  if($("[name='cbAddressDepart']").val()!= ""){
					  if($("[name='cbAddressEnd']").val() == $("[name='cbAddressDepart']").val()){
						  $("[name='cbAddressEnd']").val("");
						  $(this).valid();
						  alert("Nơi Đi Và Nơi Đến Trùng Nhau");
					  }
				  } 
			  });
		  });
		
		$("#inputTimeStart").change(function(){
			$(this).valid();
		});
		
		$("#inputTimeEnd").change(function(){
			$(this).valid();
		});
		
		$("form#addTripbs").validate({
			rules:{
				cbAddressDepart:{
					required: true
				},
				cbAddressEnd:{
					required:true
				},
				idBusgo:{
					required:true
				},
				idBusReturn:{
					required:true
				},
				inputTimeStart:{
					required:true
				},
				inputTimeEnd:{
					required:true
				},
				inputPrice:{
					required:true
				}
			},
			messages:{
				cbAddressDepart:{
					required: "Vui Lòng Chon Trường Này"
				},
				cbAddressEnd:{
					required: "Vui Lòng Chọn Trường Này"
				},
				idBusgo:{
					required: "Vui Lòng Chọn Trường Này"
				},
				idBusReturn:{
					required: "Vui Lòng Chọn Trường Này"
				},
				inputTimeStart:{
					required: "Vui Lòng Nhập Trường Này"
				},
				inputTimeEnd:{
					required: "Vui Lòng Nhập Trường Này"
				},
				inputPrice:{
					required: "Vui Lòng Nhập Trường Này"
				}
			},
			errorElement : "em",
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
	});
</script>
<!-- End moDal-->