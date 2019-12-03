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
              <tr style="border: none;">
                <td style="border: none;" class="text-center border-bottom">19/12/2019</td>
                <td style="border: none;" class="text-center border-bottom">Đà Nẵng - Đà Lạt</td>
                <td style="border: none;" class="text-center border-bottom">200000</td>
                <td style="border: none;" class="text-center border-bottom"><a href="#" class="infor-ticker-history">Chi tiêt</a></td>
              </tr>
              <tr style="border: none;" class="ticker-none">
                <td style="border: none;" class="mx-auto text-center border-bottom" colspan="4">
                  <div class="w-75 m-auto">
                    <div class="card-body">
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
                          value="" />
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
                          id="locationEnd" value="" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="departureDay" class="col-sm-5 col-form-label">Ngày
                        khởi hành&nbsp;</label>
                        <div class="col-sm-7 ">
                          <input type="text" readonly
                          class="form-control-plaintext  border-bottom"
                          id="departureDay" name="startDate"
                          value="" />
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
                          value="" />
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
                          id="totalTime" name="totalTime" value="20" />
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
                          id="timeFinishExpected" name="endTime" value="06:00" />
                        </div>
                      </div>
                      <!-- end -->
                      <div class="form-group row">
                        <label for="codeChairOder" class="col-sm-5 col-form-label">Ghế đã chọn &nbsp;</label>
                        <div class="col-sm-7  ">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom"
                          id="codeChairOder" value=""
                          placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="fare" class="col-sm-5 col-form-label ">Giá Vé &nbsp;</label>
                        <div class="col-7">
                          <div class="input-group border-bottom">
                            <input type="text" readonly class="form-control-plaintext"
                            id="fare" name="price" value="" />
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
                            id="fare" name="pickUpPlace" value="" />
                          </div>
                        </div>
                      </div>
                      <!-- end -->
                    </div>
                  </div>
                </td>
              </tr>
              <!-- end 1 vé -->
              <!-- 1 vé -->
              <tr style="border: none;">
                <td style="border: none;" class="text-center border-bottom">19/12/2019</td>
                <td style="border: none;" class="text-center border-bottom">Đà Nẵng - Đà Lạt</td>
                <td style="border: none;" class="text-center border-bottom">200000</td>
                <td style="border: none;" class="text-center border-bottom"><a href="#" class="infor-ticker-history">Chi tiêt</a></td>
              </tr>
              <tr style="border: none;" class="ticker-none">
                <td style="border: none;" class="mx-auto text-center border-bottom" colspan="4">
                  <div class="w-75 m-auto">
                    <div class="card-body">
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
                          value="" />
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
                          id="locationEnd" value="" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="departureDay" class="col-sm-5 col-form-label">Ngày
                        khởi hành&nbsp;</label>
                        <div class="col-sm-7 ">
                          <input type="text" readonly
                          class="form-control-plaintext  border-bottom"
                          id="departureDay" name="startDate"
                          value="" />
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
                          value="" />
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
                          id="totalTime" name="totalTime" value="20" />
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
                          id="timeFinishExpected" name="endTime" value="06:00" />
                        </div>
                      </div>
                      <!-- end -->
                      <div class="form-group row">
                        <label for="codeChairOder" class="col-sm-5 col-form-label">Ghế đã chọn &nbsp;</label>
                        <div class="col-sm-7  ">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom"
                          id="codeChairOder" value=""
                          placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="fare" class="col-sm-5 col-form-label ">Giá Vé &nbsp;</label>
                        <div class="col-7">
                          <div class="input-group border-bottom">
                            <input type="text" readonly class="form-control-plaintext"
                            id="fare" name="price" value="" />
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
                            id="fare" name="pickUpPlace" value="" />
                          </div>
                        </div>
                      </div>
                      <!-- end -->
                    </div>
                  </div>
                </td>
              </tr>
              <!-- end 1 vé -->
              <!-- 1 vé -->
              <tr style="border: none;">
                <td style="border: none;" class="text-center border-bottom">19/12/2019</td>
                <td style="border: none;" class="text-center border-bottom">Đà Nẵng - Đà Lạt</td>
                <td style="border: none;" class="text-center border-bottom">200000</td>
                <td style="border: none;" class="text-center border-bottom"><a href="#" class="infor-ticker-history">Chi tiêt</a></td>
              </tr>
              <tr style="border: none;" class="ticker-none">
                <td style="border: none;" class="mx-auto text-center border-bottom" colspan="4">
                  <div class="w-75 m-auto">
                    <div class="card-body">
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
                          value="" />
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
                          id="locationEnd" value="" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="departureDay" class="col-sm-5 col-form-label">Ngày
                        khởi hành&nbsp;</label>
                        <div class="col-sm-7 ">
                          <input type="text" readonly
                          class="form-control-plaintext  border-bottom"
                          id="departureDay" name="startDate"
                          value="" />
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
                          value="" />
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
                          id="totalTime" name="totalTime" value="20" />
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
                          id="timeFinishExpected" name="endTime" value="06:00" />
                        </div>
                      </div>
                      <!-- end -->
                      <div class="form-group row">
                        <label for="codeChairOder" class="col-sm-5 col-form-label">Ghế đã chọn &nbsp;</label>
                        <div class="col-sm-7  ">
                          <input type="text" readonly
                          class="form-control-plaintext border-bottom"
                          id="codeChairOder" value=""
                          placeholder="Bạn chưa chọn ghế nào" name="codeChairOder" />
                        </div>
                      </div>
                      <!-- end -->
                      <!-- 1 dòng -->
                      <div class="form-group row">
                        <label for="fare" class="col-sm-5 col-form-label ">Giá Vé &nbsp;</label>
                        <div class="col-7">
                          <div class="input-group border-bottom">
                            <input type="text" readonly class="form-control-plaintext"
                            id="fare" name="price" value="" />
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
                            id="fare" name="pickUpPlace" value="" />
                          </div>
                        </div>
                      </div>
                      <!-- end -->
                    </div>
                  </div>
                </td>
              </tr>
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
</body>
</html>
