<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fastbus</title>
    <!-- link css -->
    <%@ include file="common/topbootstrap.jsp" %>
</head>

<body>
 <!--::header part start::-->
  	<%@ include file="common/menu.jsp" %>
  <!-- Header part end-->
<section>
    <div id="steps" class="container tientrinh">
        <ul class="list-steps clearfix">
            <li class="active first">Chọn ghế</li>
            <li>Thông tin khách hàng</li>
            <li>Xác nhận</li>
        </ul>
    </div>
</section>

<section>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12 box">
                        <h3>Thông tin vé xe</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Tuyến: </label>
                            </div>
                            <div class="col-md-8">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label>Ngày khởi hành: </label>
                            </div>
                            <div class="col-md-7">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Giờ khởi hành: </label>
                            </div>
                            <div class="col-md-8">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Giá vé: </label>
                            </div>
                            <div class="col-md-8">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Địa điểm đón: </label>
                            </div>
                            <div class="col-md-8">
                                <textarea placeholder="Nhập địa điểm đón" rows="5"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <a href="#" class="btn btn-primary btn-lg active" role="button">Quay lại</a>
                            <a href="#" class="btn btn-primary btn-lg active" role="button">Tiếp tục</a>
                        </div>
                    </div>
                    <div class="col-md-12 box">
                        <h3>Thông tin chi tiết chuyến xe</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Giờ khởi hành: </label>
                            </div>
                            <div class="col-md-8">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Giờ đến: </label>
                            </div>
                            <div class="col-md-8">
                                <p></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label>Địa điểm trả khách: </label>
                            </div>
                            <div class="col-md-7">
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-7 box1">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-4">
                        <div class="row">
                            <h4>Ghế đã chọn:</h4>
                            <h4>31</h4>
                        </div>
                        <div class="row">
                            <h4>Tầng trên</h4>
                            <div class="upfloor">
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D1</button>
                                    <button type="button" class="btn btn-primary">E1</button>
                                    <button type="button" class="btn btn-primary">F1</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D2</button>
                                    <button type="button" class="btn btn-primary">E2</button>
                                    <button type="button" class="btn btn-primary">F2</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D3</button>
                                    <button type="button" class="btn btn-primary">E3</button>
                                    <button type="button" class="btn btn-primary">F3</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D4</button>
                                    <button type="button" class="btn btn-primary">E4</button>
                                    <button type="button" class="btn btn-primary">F4</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D5</button>
                                    <button type="button" class="btn btn-primary">E5</button>
                                    <button type="button" class="btn btn-primary">F5</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D6</button>
                                    <button type="button" class="btn btn-primary">E6</button>
                                    <button type="button" class="btn btn-primary">F6</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">D7</button>
                                    <button type="button" class="btn btn-primary">D8</button>
                                    <button type="button" class="btn btn-primary">D9</button>
                                    <button type="button" class="btn btn-primary">D10</button>
                                    <button type="button" class="btn btn-primary">D11</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <div class="row">
                            <h4>Tổng tiền:</h4>
                            <h4></h4>
                        </div>
                        <div class="row">
                            <h4>Tầng dưới</h4>
                            <div class="downfloor">
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A1</button>
                                    <button type="button" class="btn btn-primary">B1</button>
                                    <button type="button" class="btn btn-primary">C1</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A2</button>
                                    <button type="button" class="btn btn-primary">B2</button>
                                    <button type="button" class="btn btn-primary">C2</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A3</button>
                                    <button type="button" class="btn btn-primary">B3</button>
                                    <button type="button" class="btn btn-primary">C3</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A4</button>
                                    <button type="button" class="btn btn-primary">B4</button>
                                    <button type="button" class="btn btn-primary">C4</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A5</button>
                                    <button type="button" class="btn btn-primary">B5</button>
                                    <button type="button" class="btn btn-primary">C5</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A6</button>
                                    <button type="button" class="btn btn-primary">B6</button>
                                    <button type="button" class="btn btn-primary">C6</button>
                                </div>
                                <div class="row">
                                    <button type="button" class="btn btn-primary">A7</button>
                                    <button type="button" class="btn btn-primary">A8</button>
                                    <button type="button" class="btn btn-primary">A9</button>
                                    <button type="button" class="btn btn-primary">A10</button>
                                    <button type="button" class="btn btn-primary">A11</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1"></div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="row note">
                            <div class="controng"></div>
                            <p>Còn trống</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row note">
                            <div class="dadat"></div>
                            <p>Đã đặt</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row note">
                            <div class="dangchon"></div>
                            <p>Đang chọn</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>

<!-- Model Login -->
    	<%@ include file="common/modalCommon.jsp" %>
    <!-- End Model Login -->                            
    
	
	<!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
<!-- custom js -->
<script src="js/custom.js"></script>
</body>

</html>