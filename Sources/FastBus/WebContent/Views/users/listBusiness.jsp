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
      <%
      	for(DiaDiem place : (List<DiaDiem>)request.getAttribute("listPlace")){
      		
      %>
        <div class="row">
          <h4 class="text-primary m-3"><strong>Đà Nẵng - <%=place.getNamePlace() %></strong></h4>
          <table class="table">
            <thead class="">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nhà xe</th>
                <th scope="col">Nơi đi</th>
                <th scope="col">Nơi đến</th>
                <th scope="col">Số chuyến</th>
                <th scope="col">Giờ chạy</th>
                <th scope="col">Thông tin nhà xe</th>
              </tr>
            </thead>
            <tbody>
            <%
            int dem=1;
            	for(ChuyenXe trip : (List<ChuyenXe>)request.getAttribute("listTrip")){
            		
            		if(trip.getEndPlace().equals(place.getNamePlace())){
            			
            			
            %>
              <tr class="search">
                <td scope="row" ><%=dem++%></td>
                  <td><%=trip.getNameBusiness() %></td>
                  <td><%=trip.getStartPlace() %></td>
                  <td> <%=trip.getEndPlace() %></td>
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
    	                	var arrayBusiness = JSON.parse(results);
    	                  //console.log(obj[0].idTrip);
    	                }
    	            });
    	    	});
    	    });
  
    </script>
  </body>
</html>
