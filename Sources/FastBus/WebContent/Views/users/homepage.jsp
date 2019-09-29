<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.DiaDiem"%>
<%@page import="java.util.List"%>
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

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-10">
                    <div class="banner_text text-center">
                        <div class="banner_text_iner">
                            <h1>Fast Bus</h1>
                            <p>Let’s start your journey with us, your trip will be fast and safe</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- booking part start-->
    <section class="booking_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="booking_menu">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                            	<a class="nav-link active" id="hotel-tab">Tìm Kiếm Chuyến Xe</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select">
                                                    <option selected>Nơi đi </option> 
                                                    <% 
                                                    for(DiaDiem lPlace : (List<DiaDiem>)request.getAttribute("listPlace") )
                                                    {
                                                    %>
                                                    <option value="<%=lPlace.getIdDistrict()%>"><%=lPlace.getNamePlace() %></option>
                                                   <%} %>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <select class="nc_select" >
                                                    <option selected>Nơi đến </option>
                                                    <% 
                                                    for(DiaDiem lPlace : (List<DiaDiem>)request.getAttribute("listPlace") )
                                                    {
                                                    %>
                                                    <option value="<%=lPlace.getIdDistrict()%>"><%=lPlace.getNamePlace() %></option>
                                                   <%} %>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_1" placeholder="Ngày đi">
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_2" placeholder="Check in date">
                                            </div>
                                            <div class="form_btn">
                                                <a href="#" class="btn_1">Search</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Header part end-->

    <!--top place start-->
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Danh sách nhà xe</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <!-- <a href="#" class="btn_1 text-cnter">Discover more</a> -->
            </div>
        </div>
    </section>
    <!--top place end-->
    
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>Danh sách chuyến xe trong ngày</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_1.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_2.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_3.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="single_place">
                        <img src="<%=request.getContextPath() %>/Views/users/assets/img/single_place_4.png" alt="">
                        <div class="hover_Text d-flex align-items-end justify-content-between">
                            <div class="hover_text_iner">
                                <a href="#" class="place_btn">Mua vé</a>
                                <h4>Phương Trang</h4>
                                <p>Tuyến: Hà Nội - TP.Hồ Chí Minh</p>
                                <p>Ngày: 22-10-2019</p>
                                <p>Giờ: 3:00</p>
                            </div>
                            <!-- <div class="details_icon text-right">
                                <i class="ti-share"></i>
                            </div> -->
                        </div>
                    </div>
                </div>
                <!-- <a href="#" class="btn_1 text-cnter">Discover more</a> -->
            </div>
        </div>
    </section>

    <!-- footer part start-->
    <%@ include file="common/footer.jsp" %>
    <!-- footer part end-->
    <!-- Model Login -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel">Đăng nhập</h4>
                                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="login-form">
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                                            <div class="col-sm-10">
                                                                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="inputPassword3" class="col-sm-4 control-label">Mật khẩu</label>
                                                            <div class="col-sm-10">
                                                                <input type="password" class="form-control" id="inputPassword3" placeholder="Mật khẩu">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-2 col-sm-10">
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox"> Remember me
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-sm-offset-2 col-sm-10">
                                                                <button type="submit" class="btn btn-default">Đăng nhập</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
    	<!-- End Model Login -->                            
    
	
	<!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
</body>

</html>