<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Fastbus</title>
    <link rel="icon" href="<%=request.getContextPath() %>/Views/users/assets/img/buslogo.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/flaticon.css">
    <!-- fontawesome CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/fontawesome/css/all.min.css">
    <!-- magnific CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/gijgo.min.css">
    <!-- niceselect CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/nice-select.css">
    <!-- slick CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/slick.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/Views/users/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/Views/users/assets/css/webstyle.css">
</head>

<body>
   <!--::header part start::-->
   <header class="main_menu">
        <div class="sub_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_social_icon">
                            <a href="#"><i class="flaticon-facebook"></i></a>
                            <a href="#"><i class="flaticon-twitter"></i></a>
                            <a href="#"><i class="flaticon-skype"></i></a>
                            <a href="#"><i class="flaticon-instagram"></i></a>
                            <span><i class="flaticon-phone-call"></i>+880 356 257 142</a></span>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6 fixPosition">
                        <div class="sub_menu_right_content">
                            <div class="row">
                                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                    Đăng nhập
                                </button>
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
                                <button class="btn btn-primary btn-lg">Đăng ký</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.html"> <img src="<%=request.getContextPath() %>/Views/users/assets/img/buslogo.png" alt="logo" class="logo"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.html">Trang chủ</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Vé xe</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Nhà xe</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Đặt xe</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Về Fastbus</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Liên lạc</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
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
                                    <form action="#">
                                        <div class="form-row">
                                            <div class="form_colum">
                                                <select class="nc_select" size="7">
                                                    <option selected>Nơi đi </option>
                                                    <option value="43">Đà Nẵng</option>
                                                    <option value="92">Quảng Nam</option>
                                                    <option value="77">Quy Nhơn</option>
                                                    <option value="77">Huế</option>
                                                    <option value="77">Hà nội</option>
                                                    <option value="77">TP.Hồ Chí Minh</option>
                                                    <option value="77">Quảng Ngãi</option>
                                                    <option value="77">Quảng Trị</option>
                                                </select>
                                            </div>
                                            <div class="form_colum">
                                                <select class="nc_select" size="7">
                                                    <option selected>Nơi đến </option>
                                                    <option value="43">Đà Nẵng</option>
                                                    <option value="92">Quảng Nam</option>
                                                    <option value="77">Quy Nhơn</option>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> 2019 Fastbus <i class="ti-heart" aria-hidden="true"></i>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

    <!-- jquery plugins here-->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery.nice-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery.ajaxchimp.min.js"></script>
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery.form.js"></script>
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/mail-script.js"></script>
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/contact.js"></script>
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/Views/users/assets/js/custom.js"></script>
</body>

</html>