<%@page import="java.util.List"%>
<%@page import="model.bean.ChuyenXe"%>
<%@page import="model.bean.SeatBooking"%>
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
    <section class="mb-3 " style="min-height: 500px;">
      <div class="container">
        <div class="row p-3 ">
          <div class="col-md-12 bg-light mt-3 highlights-box-menu">
          <div class="w-100 text-center p-3"><h1><strong>Vé Vừa Đặt</strong></h1></div>
           <table class="table  table-bordered" style="border: none;" >
            <thead>
              <tr style="border: none;">
                <th scope="col" style="border: none;" class="text-center border-bottom">Ngày Đi</th>
                <th scope="col" style="border: none;" class="text-center border-bottom">Từ Đâu đến</th>
                <th scope="col" style="border: none;" class="text-center border-bottom">Giá vé</th>
                <th scope="col" style="border: none;" class="text-center border-bottom">Chi tiết</th>
              </tr>
            </thead>
            <tbody>
              <!-- 1 vé -->
				<%
					for(ChuyenXe trip : (List<ChuyenXe>)request.getAttribute("listChuyen")){
						for(SeatBooking seat : (List<SeatBooking>)request.getAttribute("list")){
							if(trip.getIdTrip()==seat.getTripId() && trip.getStartDate()==seat.getSeatStartDate()){	
							//	int totalSeat=seat.getTotalSeat();
                %>
              <tr style="border: none;">
                <td style="border: none;" class="text-center border-bottom">
                <input type="date" class="form-control-plaintext w-75 mx-auto text-center" value="<%=seat.getSeatStartDate() %>">
                </td>
                <td style="border: none;" class="text-center border-bottom">
                <span class="d-block mt-2"><%=trip.getStartPlace() %> - <%=trip.getEndPlace() %></span>
                </td>
                <td style="border: none;" class="text-center border-bottom"><span class="d-block mt-2 format-price"><%=trip.getPrice() %></span></td>
                <td style="border: none;" class="text-center border-bottom"><a href="#" class="infor-ticker-history"><span class="d-block mt-2">Chi tiêt</span></a></td>
              </tr>
              <tr style="border: none;" class="ticker-none ">
                <td style="border: none;" class="mx-auto text-center border-bottom" colspan="4">
                  <div class="w-75 m-auto bg-light">
                    <div class="card-body highlights-box-menu">
                      <legend>
                        <h3 class="text-danger">Thông Tin Vé</h3>
                      </legend>
                      <!-- 1 dòng -->
                     
                      <div class="form-group row">
                        <label for="Tuyen" class="col-sm-5 col-form-label">Tuyến&nbsp;</label>
                        <div class="col-sm-7">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom" id="Tuyen"
                          name="trip"
                          value="<%=trip.getStartPlace() %> - <%=trip.getEndPlace() %>" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="locationEnd" class="col-sm-5 col-form-label">Nhà
                        Xe &nbsp;</label>
                        <div class="col-sm-7">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom" name="business"
                          id="locationEnd" value="<%=trip.getNameBusiness() %>" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="departureDay" class="col-sm-5 col-form-label">Ngày
                        khởi hành&nbsp;</label>
                        <div class="col-sm-7 ">
                          <input type="date" readonly
                          class="form-control-plaintext  border-bottom"
                          id="departureDay" name="startDate"
                          value="<%=seat.getSeatStartDate() %>" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="departureTime" class="col-sm-5 col-form-label">Giờ
                        khởi hành &nbsp;</label>
                        <div class="col-sm-7 ">
                          <input type="time" readonly
                          class="form-control-plaintext border-bottom"
                          id="departureTime" name="startTime"
                          value="<%=trip.getStartTime() %>" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->

                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="totalTime" class="col-sm-5 col-form-label">Thời
                        gian đi &nbsp;</label>
                        <div class="col-sm-7">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom"
                          id="totalTime" name="totalTime" value="<%=trip.getTotalTime() %> tiếng" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="timeFinishExpected" class="col-sm-5 col-form-label">Giờ
                        đến dự kiến &nbsp;</label>
                        <div class="col-sm-7">
                          <input type="time" readonly
                          class="form-control-plaintext border-bottom"
                          id="timeFinishExpected" name="endTime" value="<%=trip.getEndTime() %>" />
                        </div>
                      </div>
                      <!-- end -->
                      <div class="form-group row">
                        <label for="codeChairOder" class="col-sm-5 col-form-label">Ghế đã chọn &nbsp;</label>
                        <div class="col-sm-7  ">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom"
                          id="codeChairOder" value="<%=seat.getSeatName() %>"
                          placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="fare" class="col-sm-5 col-form-label ">Tổng Giá Vé &nbsp;</label>
                        <div class="col-7">
                          <div class="input-group border-bottom">
                            <input type="text" readonly class="form-control-plaintext format-price"
                            id="fare" name="price" data-price-chare="<%=trip.getPrice()%>" data-amount-chair="<%=seat.getTotalSeat() %>" value="không biết" />
                          </div>
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="fare" class="col-sm-5 col-form-label ">Địa chỉ đón: &nbsp;</label>
                        <div class="col-sm-7">
                          <div class="input-group border-bottom">
                            <input type="text" readonly class="form-control-plaintext"
                            id="fare" name="pickUpPlace" value="<%=trip.getStartPlace() %>" />
                          </div>
                        </div>
                      </div>
                      <!-- end -->
                    </div>
                  </div>
                </td>
              </tr>
              <%   
							}else{
								continue;
							}
              			}
                    }
              %>
              <!-- end 1 vé -->
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- footer part start-->
<%@ include file="common/footer.jsp" %>
<!-- footer part end-->

<!-- Link jquery -->
<%@ include file="common/botbootstrap.jsp" %>
<script type="text/javascript">
  $(document).ready(function() {
   $(".conbobox-pickUpLocation").select2({ width: '100%' });
 });
</script>
<script type="text/javascript">
  $(document).ready(function() {
   let $getTickerHistory = $(".infor-ticker-history");

   $(".ticker-none").each(function(index, el) {
    $(el).hide();
   });

   function addEventListenerAllTickerHistory(){
     $getTickerHistory.each(function(index, iteam) {
       iteam.addEventListener("click", function() {
        $(".ticker-none").each(function(index, el) {
          if(!$(el).is(":visible")) {
             console.log(el);
            $(el).hide();
          }
        });
        showDetaiTickerHistory(iteam);
      });
     });
   };

   function showDetaiTickerHistory(iteam){
    // cosole("abcd");
    $(iteam)
    .parent()
    .parent()
    .next()
    .toggle();
  };

  function setEndForSumTime() {
   $(".timeForFromAToB").each(function(index, iteam){
     $(iteam).val($(iteam).val() + " Tiếng");
   });
 };

 addEventListenerAllTickerHistory();
 setEndForSumTime();
});
</script>
<script type="text/javascript">
  $(document).ready(function() {
    $("[name=price]").each(function(){
      let value = Number($(this).data("amountChair")) * Number($(this).data("priceChare"));
      $(this).val(value);
    });

    setTimeout(function(){
      $(".format-price").each(function(){
        $(this).val(new Intl.NumberFormat('it-IT',
              { style: 'currency', currency: 'VND' }).format(Number($(this).val())));
      });
    }, 500);
    setTimeout(function(){
      $(".format-price").each(function(){
        $(this).html(new Intl.NumberFormat('it-IT',
              { style: 'currency', currency: 'VND' }).format(Number($(this).html())));
      });
    }, 500);

  });  
</script>
</body>
</html>
