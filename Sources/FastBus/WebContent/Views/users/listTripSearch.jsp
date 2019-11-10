<%@page import="java.util.List"%>
<%@page import="model.bean.ChuyenXe"%>
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

    <!-- banner part start-->
    <!-- <section class="banner_part">
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
    </section> -->
    <!-- banner part start-->
    
    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h3>Danh sách chuyến xe bạn tìm</h3>
                    </div>
                </div>
            </div>
            <%
            	List<ChuyenXe> listTrip=(List<ChuyenXe>)request.getAttribute("listTrip");
            %>
            <div class="row">
            
                <h4>Tìm thấy <%=listTrip.size() %> kết quả</h4>
            </div>
            <div class="row car-container mx-auto">
            <%
            	for(ChuyenXe trip : listTrip)
            	{
            %>
            <div class="card m-4" style="width: 18rem;">
            <img src="https://www.baolau.com/blog/wp-content/uploads/2017/02/futabus-1.jpg" class="card-img-top" alt="bus" />
            <div class="card-body">
              <h5 class="card-title"><%=trip.getNameBusiness() %></h5>
              <span class="card-text">
                Chuyến xe: từ <%=trip.getStartPlace() %> Đến <%=trip.getEndPlace() %>
              </span>
             <div class="clearfix align-items-center my-2">
                <div class="pull-left rating-container mx-auto">
                  <!-- id cua chuyen xe vo day  value-star = so diem trung binh-->
                  <div id="<%=trip.getIdTrip() %>" class="show-poin-start-read" value-star="3.7" ></div>
                  <div class="counter"></div>
                </div>
                <div>
                  <span id="<%=trip.getIdTrip() %>" class="poinRead"></span><span> Điểm </span>
                </div>
              </div>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <span class="font-weight-bold">Loại xe: </span
                ><span>Giường nằm 44 chổ</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Số Ghế Trống: </span
                ><span>10 chổ</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Thời Gian Dự Kiến: </span
                ><span>10 Tiếng</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Thời Gian Khởi Hành: </span
                ><span><%=trip.getStartTime()%></span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Ngày Khởi Hành: </span
                ><span><%=trip.getStartDate()%></span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Giá vé: </span
                ><span class="fare" value="<%=trip.getPrice()%>"><%=trip.getPrice()%></span>
              </li>
            </ul>
            <div class="card-body text-center">
              <a href="SeatBookingServlet?idTrip=<%= trip.getIdTrip() %>" class="card-link check-login"> Đặt vé</a>
              <a  href="#" class="card-link">Thông tin nhà xe</a>
            </div>
          </div>
            <%} %>
            </div>
        </div>
    </section>

    <section class="top_place section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h3>Những chuyến xe liên quan</h3>
                    </div>
                </div>
            </div>

            <div class="row">
            
                <h4>Tìm thấy <%=listTrip.size() %> kết quả</h4>
            </div>
            <div class="row car-container mx-auto">
            <%
            	for(ChuyenXe trip : listTrip)
            	{
            %>
            <div class="card m-4" style="width: 18rem;">
            <img src="https://www.baolau.com/blog/wp-content/uploads/2017/02/futabus-1.jpg" class="card-img-top" alt="bus" />
            <div class="card-body">
              <h5 class="card-title"><%=trip.getNameBusiness() %></h5>
              <span class="card-text">
                Chuyến xe: từ <%=trip.getStartPlace() %> - <%=trip.getEndPlace() %>
              </span>
             <div class="clearfix align-items-center my-2">
                <div class="pull-left rating-container mx-auto">
                  <!-- id cua chuyen xe vo day  value-star = so diem trung binh-->
                  <div id="<%=trip.getIdTrip() %>" class="show-poin-start-read" value-star="3.7" ></div>
                  <div class="counter"></div>
                </div>
                <div>
                  <span id="<%=trip.getIdTrip() %>" class="poinRead"></span><span> Điểm </span>
                </div>
              </div>
            </div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">
                <span class="font-weight-bold">Loại xe: </span
                ><span>Giường nằm 44 chổ</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Số Ghế Trống: </span
                ><span>10 chổ</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Thời Gian Dự Kiến: </span
                ><span>10 Tiếng</span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Thời Gian Khởi Hành: </span
                ><span><%=trip.getStartTime()%></span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Ngày Khởi Hành: </span
                ><span><%=trip.getStartDate()%></span>
              </li>
              <li class="list-group-item">
                <span class="font-weight-bold">Giá vé: </span
                ><span><%=trip.getPrice()%> ₫</span>
              </li>
            </ul>
            <div class="card-body text-center">
              <a href="SeatBookingServlet?idTrip=<%= trip.getIdTrip() %>" class="card-link check-login"> Đặt vé</a>
              <a  href="#" class="card-link">Thông tin nhà xe</a>
            </div>
          </div>
            <%} %>
            </div>
        </div>
    </section>


    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-5">
                    <div class="single-footer-widget">
                        <h4>Về Fastbus</h4>
                        <ul>
                            <li><a href="#">Thông tin công ty</a></li>
                            <li><a href="#">Nhân sự</a></li>
                            <li><a href="#">Tuyển dụng</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>Đăng kí bản tin</h4>
                        <div class="form-wrap" id="mc_embed_signup">
                            <form target="_blank"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Địa chỉ Email của bạn"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                    required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                        type="text">
                                </div>

                                <div class="info"></div>
                            </form>
                        </div>
                        <p>Theo dõi bản tin của chúng tôi để nhận tin tức cập nhật và cung cấp</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="single-footer-widget footer_icon">
                        <h4>Liên hệ chúng tôi</h4>
                        <p>Công ty TNHH Fastbus, Tòa nhà Novotel, 26 Bạch Đằng, quận Hải Châu, Đà Nẵng
                                +880 362 352 783</p>
                        <span>aqtv@fastbus.com</span>
                        <div class="social-icons">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear())</script> 2019 Fastbus <i class="ti-heart" aria-hidden="true"></i>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->
    <!-- Link jquery -->
    <%@ include file="common/botbootstrap.jsp" %>
    <script>
    $(".fare").each(function(){
    	$(this).html(new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(Number(parseInt(this.textContent))));
    });
    </script>
    

</body>

</html>