<%@page import="model.bean.Bus"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- moDal-->
<!-- Modal add tríp -->
<div class="modal fade" id="modalEditTrip" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	<div class="modal-dialog " role="document">
	<%
		List<DiaDiem> listPlaceEdit= (List<DiaDiem>)request.getAttribute("listPlace");
	%>
		<div class="modal-content p-3">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Sửa Giá
					Tiền</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			
			<div class="modal-body">
				<form action="">
					  <div class="form-group">
					 	<input id="getIDForEditPricebs" name="getIDForEditPricebs" style="display:none;" >
					  	<input class="form-control" id="editPricebs" name="editPricebs" placeholder="Giá Mới">
					  </div>
					  <div class="form-group text-center">
					  	<button class="btn btn-primary" name="btnEditPrice" value="btnEditPrice">Sửa Gía</button>
					  </div>
				</form>
			</div>
		</div>

	</div>
</div>
<!-- End moDal-->

<script type="text/javascript">
	$("[data-target='#modalEditTrip']").each(function(){
		$(this).click(function(){
			$("#getIDForEditPricebs").val($(this).attr("id"));
		})
	})
</script>