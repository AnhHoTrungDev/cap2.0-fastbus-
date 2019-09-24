<%@page import="java.util.List"%>
<%@page import="model.bean.DiaDiem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fastbus</title>
    <link rel="icon" href="<%=request.getContextPath() %>Views/users/assets/img/buslogo.png">
    <!-- Bootstrap CSS -->
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
                            <h1> Fastbus</h1>
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
                    <div class="search">
                        <div class="col-lg-12">
                            <h3>Tìm kiếm chuyến xe</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="booking_content">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab">
                                <div class="booking_form">
                                    <form action="SearchTripServlet" method="post">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select" name="startPlace">
                                                    <option selected>Nơi đi </option>
                                                    <%
                                                    	for(DiaDiem d :(List<DiaDiem>)request.getAttribute("listDiaDiem")) 
                                                    	{	
                                                   	%>
                                                    <option value="<%=d.getIdPlace() %>"><%=d.getNamePlace() %></option>
                                                    <% } %>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <select class="nc_select" name="endPlace">
                                                    <option selected value="">Nơi đến </option>
                                                    <%
                                                    	for(DiaDiem d :(List<DiaDiem>)request.getAttribute("listDiaDiem")) 
                                                    	{	
                                                   	%>
                                                    <option value="<%=d.getIdPlace() %>"><%=d.getNamePlace() %></option>
                                                    <% } %>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <input id="datepicker_1" name="startDate" placeholder="Ngày đi">
                                            </div>
                                            <div class="form_colum">
                                                <select class="nc_select" name="startTime">
                                                    <option selected value="">Giờ Xuất Phát </option>
                                                    <option value="7:00">07:00 </option>
                                                    <option value="9:00">09:00 </option>
                                                    <option value="11:00">11:00 </option>
                                                    <option value="13:00">13:00 </option>
                                                    <option value="15:00">15:00 </option>
                                                    <option value="17:00">17:00 </option>
                                                    <option value="18:00">18:00 </option>
                                                    <option value="18:30">18:30 </option>
                                                    <option value="19:00">19:00 </option>
                                                    <option value="20:00">20:00 </option>
                                                </select>
                                            </div>
                                            <div class="form_btn">
                                                <input name="search" value="Search" type="submit" class="submit_btn"/>  
                                            
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Phương Trang</h3>
                                <p>Hà Nội - TP.Hồ Chí Minh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Sơn Tùng</h3>
                                <p>Đà Nẵng - Quy Nhơn</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Mai Linh</h3>
                                <p>Đà Nẵng - TP.Hồ Chí Minh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Hoàng Long</h3>
                                <p>Hà Nội - Đà Nẵng</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Phương Trang</h3>
                                <p>Hà Nội - TP.Hồ Chí Minh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Sơn Tùng</h3>
                                <p>Đà Nẵng - Quy Nhơn</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Mai Linh</h3>
                                <p>Đà Nẵng - TP.Hồ Chí Minh</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
                                <a href="#" class="place_btn">Details</a>
                                <h3>Hoàng Long</h3>
                                <p>Hà Nội - Đà Nẵng</p>
                                <div class="place_review">
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                    <a href="#"><i class="fas fa-star"></i></a>
                                </div>
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
	<!-- jquery plugins here-->
    <%@ include file="common/botbootstrap.jsp" %>
</body>
</html>