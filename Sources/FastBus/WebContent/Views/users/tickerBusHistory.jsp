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
        <div class="row">
          <div class="col-8 border p-5 rounded">
            <div class="tab-content" id="nav-tabContent">
            	<!-- phần hiển thị vé hiệu lực -->
              <div
                class="tab-pane fade show active"
                id="list-ticker-on"
                role="tabpanel"
                aria-labelledby="list-ticker-on-list"
              >
                <!-- vé -->
                <div class="card my-4">
                  <div class="card-body">
                    Đà Nẵng - Đà Lat ngày 11/12/2019
                    <a
                      href="#showDtail"
                      class="infor-ticker-history text-right ml-5"
                      >click xem chi tiết
                    </a>
                    <div style="display: none;">
                      <div class="container my-5">
                        <div class="col-sm-12">
                          <div class="card">
                            <div class="card-body">
                              <legend>
                                <h3 class="text-danger">Thông Tin Vé</h3>
                              </legend>
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="Tuyen"
                                  class="col-sm-5 col-form-label"
                                  >Tuyến&nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="Tuyen"
                                    name="trip"
                                    value="Đà Nẵng - Đà Lat"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="locationEnd"
                                  class="col-sm-5 col-form-label"
                                  >Nhà Xe &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    name="business"
                                    id="locationEnd"
                                    value="Qốc ML"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Ngày khởi hành&nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext  border-bottom"
                                    id="departureDay"
                                    name="startDate"
                                    value="11/11/2019"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureTime"
                                  class="col-sm-5 col-form-label"
                                  >Giờ khởi hành &nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="departureTime"
                                    name="startTime"
                                    value="05:20"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->

                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Thời gian đi &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom timeForFromAToB"
                                    id="timeForFromAToB"
                                    name="totalTime"
                                    value="12"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="timeFinishExpected"
                                  class="col-sm-5 col-form-label"
                                  >Giờ đến dự kiến &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="timeFinishExpected"
                                    name="endTime"
                                    value="06:00"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <div class="form-group row">
                                <label
                                  for="codeChairOder"
                                  class="col-sm-5 col-form-label"
                                  >Ghế đã chọn &nbsp;</label
                                >
                                <div class="col-sm-7  ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="codeChairOder"
                                    value=""
                                    placeholder="Bạn chưa chọn ghế nào"
                                    name="codeChairOder"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="fare"
                                  class="col-sm-5 col-form-label "
                                  >Giá Vé &nbsp;</label
                                >
                                <div class="col-7">
                                  <div class="input-group border-bottom">
                                    <input
                                      type="text"
                                      readonly
                                      class="form-control-plaintext"
                                      id="fare"
                                      name="price"
                                      value="0"
                                      data-price=""
                                    />
                                  </div>
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-12 col-form-label ">Địa
										chỉ đón: &nbsp;</label>
									<div class="col-sm-12">
										<div class="input-group border-bottom">
											<select class="w-100 conbobox-pickUpLocation my-5"
												name="pickUplocation" disabled="disabled">
												<option value="1">Bến xe đà nẵng</option>
												<option value="2" selected>Ngã 3 Huế</option>
												<option value="3">Hội An Quốc Lộ 1A</option>
												<option value="4">Bến xe Quảng nam</option>
											</select>
										</div>
									</div>
								</div>
								<!-- end -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end vé -->
                <!-- vé -->
                <div class="card my-4">
                  <div class="card-body">
                    Đà Nẵng - Đà Lat ngày 11/12/2019
                    <a
                      href="#showDtail"
                      class="infor-ticker-history text-right ml-5"
                      >click xem chi tiết
                    </a>
                    <div style="display: none;">
                      <div class="container my-5">
                        <div class="col-sm-12">
                          <div class="card">
                            <div class="card-body">
                              <legend>
                                <h3 class="text-danger">Thông Tin Vé</h3>
                              </legend>
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="Tuyen"
                                  class="col-sm-5 col-form-label"
                                  >Tuyến&nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="Tuyen"
                                    name="trip"
                                    value="Đà Nẵng - Đà Lat"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="locationEnd"
                                  class="col-sm-5 col-form-label"
                                  >Nhà Xe &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    name="business"
                                    id="locationEnd"
                                    value="Qốc ML"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Ngày khởi hành&nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext  border-bottom"
                                    id="departureDay"
                                    name="startDate"
                                    value="11/11/2019"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureTime"
                                  class="col-sm-5 col-form-label"
                                  >Giờ khởi hành &nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="departureTime"
                                    name="startTime"
                                    value="05:20"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->

                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Thời gian đi &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom timeForFromAToB"
                                    id="timeForFromAToB"
                                    name="totalTime"
                                    value="12"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="timeFinishExpected"
                                  class="col-sm-5 col-form-label"
                                  >Giờ đến dự kiến &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="timeFinishExpected"
                                    name="endTime"
                                    value="06:00"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <div class="form-group row">
                                <label
                                  for="codeChairOder"
                                  class="col-sm-5 col-form-label"
                                  >Ghế đã chọn &nbsp;</label
                                >
                                <div class="col-sm-7  ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="codeChairOder"
                                    value=""
                                    placeholder="Bạn chưa chọn ghế nào"
                                    name="codeChairOder"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="fare"
                                  class="col-sm-5 col-form-label "
                                  >Giá Vé &nbsp;</label
                                >
                                <div class="col-7">
                                  <div class="input-group border-bottom">
                                    <input
                                      type="text"
                                      readonly
                                      class="form-control-plaintext"
                                      id="fare"
                                      name="price"
                                      value="0"
                                      data-price=""
                                    />
                                  </div>
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-12 col-form-label ">Địa
										chỉ đón: &nbsp;</label>
									<div class="col-sm-12">
										<div class="input-group border-bottom">
											<select class="w-100 conbobox-pickUpLocation my-5"
												name="pickUplocation" disabled="disabled">
												<option value="1">Bến xe đà nẵng</option>
												<option value="2" selected>Ngã 3 Huế</option>
												<option value="3">Hội An Quốc Lộ 1A</option>
												<option value="4">Bến xe Quảng nam</option>
											</select>
										</div>
									</div>
								</div>
								<!-- end -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end vé -->
                <!-- vé -->
                <div class="card my-4">
                  <div class="card-body">
                    Đà Nẵng - Đà Lat ngày 11/12/2019
                    <a
                      href="#showDtail"
                      class="infor-ticker-history text-right ml-5"
                      >click xem chi tiết
                    </a>
                    <div style="display: none;">
                      <div class="container my-5">
                        <div class="col-sm-12">
                          <div class="card">
                            <div class="card-body">
                              <legend>
                                <h3 class="text-danger">Thông Tin Vé</h3>
                              </legend>
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="Tuyen"
                                  class="col-sm-5 col-form-label"
                                  >Tuyến&nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="Tuyen"
                                    name="trip"
                                    value="Đà Nẵng - Đà Lat"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="locationEnd"
                                  class="col-sm-5 col-form-label"
                                  >Nhà Xe &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    name="business"
                                    id="locationEnd"
                                    value="Qốc ML"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Ngày khởi hành&nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext  border-bottom"
                                    id="departureDay"
                                    name="startDate"
                                    value="11/11/2019"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureTime"
                                  class="col-sm-5 col-form-label"
                                  >Giờ khởi hành &nbsp;</label
                                >
                                <div class="col-sm-7 ">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="departureTime"
                                    name="startTime"
                                    value="05:20"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->

                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="departureDay"
                                  class="col-sm-5 col-form-label"
                                  >Thời gian đi &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom timeForFromAToB"
                                    id="timeForFromAToB"
                                    name="totalTime"
                                    value="12"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="timeFinishExpected"
                                  class="col-sm-5 col-form-label"
                                  >Giờ đến dự kiến &nbsp;</label
                                >
                                <div class="col-sm-7">
                                  <input
                                    type="time"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="timeFinishExpected"
                                    name="endTime"
                                    value="06:00"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <div class="form-group row">
                                <label
                                  for="codeChairOder"
                                  class="col-sm-5 col-form-label"
                                  >Ghế đã chọn &nbsp;</label
                                >
                                <div class="col-sm-7  ">
                                  <input
                                    type="text"
                                    readonly
                                    class="form-control-plaintext border-bottom"
                                    id="codeChairOder"
                                    value=""
                                    placeholder="Bạn chưa chọn ghế nào"
                                    name="codeChairOder"
                                  />
                                </div>
                              </div>
                              <!-- end -->
                              <!-- 1 dòng -->
                              <div class="form-group row">
                                <label
                                  for="fare"
                                  class="col-sm-5 col-form-label "
                                  >Giá Vé &nbsp;</label
                                >
                                <div class="col-7">
                                  <div class="input-group border-bottom">
                                    <input
                                      type="text"
                                      readonly
                                      class="form-control-plaintext"
                                      id="fare"
                                      name="price"
                                      value="0"
                                      data-price=""
                                    />
                                  </div>
                                </div>
                              </div>
                              <!-- end -->
                             <!-- 1 dòng -->
								<div class="form-group row">
									<label for="fare" class="col-sm-12 col-form-label ">Địa
										chỉ đón: &nbsp;</label>
									<div class="col-sm-12">
										<div class="input-group border-bottom">
											<select class="w-100 conbobox-pickUpLocation my-5"
												name="pickUplocation" disabled="disabled">
												<option value="1">Bến xe đà nẵng</option>
												<option value="2" selected>Ngã 3 Huế</option>
												<option value="3">Hội An Quốc Lộ 1A</option>
												<option value="4">Bến xe Quảng nam</option>
											</select>
										</div>
									</div>
								</div>
								<!-- end -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- end vé -->
              </div>
              <!-- end Phần hiển thị vé hiệu lực -->
              <!-- phần hiển thị vé hết hiệu lực-->
              <div
                class="tab-pane fade "
                id="list-ticker-off"
                role="tabpanel"
                aria-labelledby="#list-ticker-off"
              >       
                <!-- vé -->
                <!-- end vé -->
              </div>
              <!-- end phần hiển thị vé hết hiệu lực -->
            </div>
          </div>
          <!-- phần chọn bên phải -->
          <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">
              <a
                class="list-group-item list-group-item-action active"
                id="list-ticker-on-list"
                data-toggle="list"
                href="#list-ticker-on"
                role="tab"
                aria-controls="list-ticker-on"
                >Vé còn hiệu lực</a
              >
              <a
                class="list-group-item list-group-item-action "
                id="list-ticker-off-list"
                data-toggle="list"
                href="#list-ticker-off"
                role="tab"
                aria-controls="home"
                >Vé hết hiệu lực</a
              >
            </div>
          </div>
        </div>
      </div>
       <!-- end phần chọn bên phải -->
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

    	  function addEventListenerAllTickerHistory(){
    	    $getTickerHistory.each(function(index, iteam) {
    	      iteam.addEventListener("click", function() {
    	        showDetaiTickerHistory(iteam);
    	      });
    	    });
    	  };

    	  function showDetaiTickerHistory(iteam){
    	    $(iteam)
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
