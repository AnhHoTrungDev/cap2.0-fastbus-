<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<header class="main_menu">
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="<%=request.getContextPath() %>/LoadHomePageServlet"> <img src="https://img.icons8.com/clouds/100/000000/bus.png"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="hompage.jsp">Trang chủ</a>
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
                                    <li class="nav-item">
                                        <a class="nav-link" href="">Đăng ký</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="" data-toggle="modal" data-target="#myModal">Đăng Nhập</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    