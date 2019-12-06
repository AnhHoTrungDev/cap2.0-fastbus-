<%@page import="model.bean.ChuyenXe"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.DiaDiem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta
  name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no"
  />
  <title>Fastbus</title>
  <!-- link css -->
  <%@ include file="common/topbootstrap.jsp" %>
</head>
<body>
  <!--::header part start::-->
  <%@ include file="common/menu.jsp" %>
  <!-- Header part end-->
  <section>
    <div class="container my-5">
    <div class="row p-4">
     <div class="col-10 mx-auto highlights-box-menu p-4 my-3">
	     <form action="">
			<div class="row">
				<div class="col-md-4 my-2">
		     		<select class="form-control cbBoxCity" name="starPlace" id="cbStarPlace">
		     			<option value="">Nơi Đi</option>
	  					<option>Đắk Lắk</option>
	  					<option>Đà Nẵng</option>
	  					<option>Hà Nội</option>
	  					<option>Hồ Chí Minh</option>
	  					<option>Nha Trang</option>
					</select>
		     	</div>
		     	<div class="col-md-4 my-2">
		     	<select class="form-control cbBoxCity" name="starEnd" id="cbEndPlace">
		     			<option value="">Nơi Đến</option>
	  					<option>Đắk Lắk</option>
	  					<option>Đà Nẵng</option>
	  					<option>Hà Nội</option>
	  					<option>Hồ Chí Minh</option>
	  					<option>Nha Trang</option>
					</select>
		     	</div>
		     	<div class="col-md-4 text-center my-2">
		     	<button id="serchListBusiness" type="button" class="btn btn-outline-primary" name="btnSearch" value="search"><i class="fa fa-search" aria-hidden="true"></i>
		     	Tìm Kiếm</button>
		     	</div>
			</div>
	     </form>	
     </div>
    </div>
      <%
      for(DiaDiem place : (List<DiaDiem>)request.getAttribute("listPlace")){

        %>
        <div class="row tablebs-list" data-star-place="<%=place.getNameStartPlace() %>" data-star-end="<%=place.getNameEndPlace() %>">
          <h4 class="text-primary m-3"><strong><%=place.getNameStartPlace() %> - <%=place.getNameEndPlace() %></strong></h4>
          <table class="table border">
            <thead class="">
              <tr>
                <th scope="col">#</th>
                <th scope="col" class="fix-table-Bisiness">Nhà xe</th>
                <th scope="col" class="fix-table-Bisiness-City">Nơi đi</th>
                <th scope="col" class="fix-table-Bisiness-City">Nơi đến</th>
                <th scope="col">Số chuyến</th>
                <th scope="col">Giờ chạy</th>
                <th scope="col">Thông tin nhà xe</th>
              </tr>
            </thead>
            <tbody>
              <%
              int dem=1;
              for(ChuyenXe trip : (List<ChuyenXe>)request.getAttribute("listTrip")){

                if((trip.getEndPlace().equals(place.getNameEndPlace()) && !"Đà Nẵng".equals(place.getNameEndPlace()))
                	||(trip.getStartPlace().equals(place.getNameStartPlace()) && "Đà Nẵng".equals(place.getNameEndPlace()))){


                %>
                <tr class="search tr-show" data-id-trip="<%=trip.getIdTrip() %>" id="<%=trip.getIdBusiness()%>">
                  <td scope="row" ><%=dem++%></td>
                  <td><%=trip.getNameBusiness() %></td>
                  <td><%=trip.getStartPlace() %></td>
                  <td><%=trip.getEndPlace() %></td>
                  <td><%=trip.getTotalTip() %> chuyến/ngày</td>
                  <td> 
                    <a href="#detailBus" id="<%=trip.getIdBusiness() %>"class="detailBus" >Chi tiết</a>
                  </td>
                  <td> <a href="BusinessDetailServlet?idBusiness=<%=trip.getIdBusiness() %>" >Thông tin nhà xe</a>
                  </td>
                </tr>
                <%
              }

            }%>
          </tbody>
        </table>
        <span id="result"></span>
      </div>
      <%} %>
    </div>
  </section>

  <!-- footer part start-->
  <%@ include file="common/footer.jsp" %>
  <!-- footer part end-->

  <!-- Link jquery -->
  <%@ include file="common/botbootstrap.jsp" %>

  <script>
    $(".detailBus").each(function(index,element)
    {
      $(element).click(function()
      {
       $.ajax({
         url : "LoadListTripRequest",
         type  : "post",
         data : {
          idBusiness : $(element).attr("id")
        },
        success : function(results){

          var arrayTrips = JSON.parse(results);
          $(".chilTable").each(function(){
        	  $(this).remove();
       	  });
          $(chilTable(arrayTrips)).insertAfter($(element).parent().parent()).show("slow"); 
        }
      });
     });
    });

  </script>
  <script
		src="<%=request.getContextPath()%>/Views/js/listBusiness.js"></script>
	<script>
		$(document).ready(function() {
			$('.cbBoxCity').select2();
			$(".select2-selection.select2-selection--single").css({"height":"38px","border":"1px solid #007bff"});
			$(".select2-selection__rendered").css({"margin-top":"5px","color":"#007bff"});
			$(".select2-selection__rendered").addClass("text-center");
			
			$("#serchListBusiness").click(function(){
				$(".tablebs-list").each(function(){
					$(this).hide();
				});
				$(".tablebs-list[data-star-place='"+$("#cbStarPlace").val()+"'][data-star-end='"+$("#cbEndPlace").val()+"']").show();
				if($("#cbStarPlace").val() =="" && $("#cbEndPlace").val()==""){
					$(".tablebs-list").each(function(){
						$(this).show();
					});
				}
				if(!showMessEmpty()){
					alert("Không Có Chuyến Xe Nào Được Tìm Thấy");
				}
			});
			function showMessEmpty(){
				let allHide= false;
				$(".tablebs-list").each(function(){
					if($(this).is(":visible")) {
						allHide= true;
					}
				});
				return allHide;
			}
		});
		
	</script>
</body>
</html>
