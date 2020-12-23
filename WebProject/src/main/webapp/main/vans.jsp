<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <title>Vans</title>
    <link
            rel="shortcut icon"
            href="./images/Vans%20Old%20Skool%20True%20White.webp"
            type="image/x-icon"
    />
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>
    <meta
            name="keywords"
            content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
    />
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="main/css/bootstrap.css"/>
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="main/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="main/css/font-awesome.css" rel="stylesheet"/>
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link
            href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700"
            rel="stylesheet"
    />
    <link
            href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900"
            rel="stylesheet"
    />
    <!-- //Fonts -->
</head>

<body>
<!-- mian-content -->
<div
        class="main-banner"
        id="home"
        style="background: none !important; height: 18vh"
>
    <!-- header -->
    <header
            class="header"
            style="
          background-color: #229434 !important;
          box-shadow: 0px 0px 10px 5px #c9c9c9;
        "
    >
        <div class="container-fluid px-lg-5">
            <!-- nav -->
            <nav class="py-4">
                <div id="logo">
                    <h1><a href="../index.jsp">SKED</a></h1>
                </div>

                <label for="drop" class="toggle">Menu</label>
                <input type="checkbox" id="drop"/>
                <ul class="menu mt-2">
                    <li><a href="../index.jsp">TRANG CHỦ</a></li>
                    <li><a href="product.jsp">SẢN PHẨM</a></li>
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li>
                        <label for="drop-2" class="toggle">DANH MỤC</label>
                        <a href="#"
                        >DANH MỤC<span
                                class="fa fa-angle-down"
                                aria-hidden="true"
                        ></span
                        ></a>
                        <input type="checkbox" id="drop-2"/>
                        <ul>
                            <li><a href="nike.jsp">NIKE</a></li>
                            <li><a href="adidas.jsp">ADIDAS</a></li>
                            <li><a href="vans.jsp">VANS</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="cart.jsp"
                        ><i class="fa fa-shopping-cart" aria-hidden="true"></i>GIỎ
                            HÀNG</a
                        >
                    </li>
                    <li class="a-login">
                        <a href=""
                        ><i class="fa fa-user-o" aria-hidden="true"></i>ĐĂNG NHÂP</a
                        >
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <!-- //header -->
    <!--/banner-->

    <!--// banner-inner -->
</div>
<!--//main-content-->
<!---->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="../index.jsp">TRANG CHỦ</a>
    </li>
    <li class="breadcrumb-item">
        <a href="product.jsp">SẢN PHẨM</a>
    </li>
    <li class="breadcrumb-item active">VANS</li>
</ol>
<!---->
<!-- banner -->
<section class="ab-info-main py-md-5 py-4">
    <div class="container py-md-3">
        <!-- top Products -->
        <div class="row">
            <!-- product left -->
            <div class="side-bar col-lg-4">
                <div class="search-bar w3layouts-newsletter">
                    <h3 class="sear-head">TÌM KIẾM</h3>
                    <form action="#" method="post" class="d-flex">
                        <input
                                type="search"
                                placeholder="TÊN SẢN PHẨM"
                                name="search"
                                class="form-control"
                                required=""
                        />
                        <button class="btn1">
                            <span class="fa fa-search" aria-hidden="true"></span>
                        </button>
                    </form>
                </div>
                <!--preference -->
                <div class="left-side my-4">
                    <h3 class="sear-head">TÌM THEO NHU CẦU</h3>
                    <ul class="w3layouts-box-list">
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span">CHẠY BỘ</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span">DÃ NGOẠI</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span">ĐI HỌC</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span">ĐI LÀM</span>
                        </li>
                    </ul>
                </div>
                <!-- // preference -->
                <!-- discounts -->
                <div class="left-side">
                    <h3 class="sear-head">TÌM THEO KHUYẾN MÃI</h3>
                    <ul class="w3layouts-box-list">
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=5%/Sản Phẩm</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=10%/Sản Phẩm</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=15%/Sản Phẩm</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=20%/Sản Phẩm</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=30%/Sản Phẩm</span>
                        </li>
                    </ul>
                </div>
                <!-- //discounts -->
                <div class="left-side">
                    <h3 class="sear-head">TÌM THEO GIÁ</h3>
                    <ul class="w3layouts-box-list">
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=$50</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=$100</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=$150</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=$200</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span"><=$250</span>
                        </li>
                        <li>
                            <input type="checkbox" class="checked"/>
                            <span class="span">>$250></span>
                        </li>
                    </ul>
                </div>
                <!-- deals -->

                <!-- //deals -->
            </div>
            <!-- //product left -->
            <!-- product right -->
            <div class="left-ads-display col-lg-8">
                <div class="row">
                    <div class="col-md-4 product-men">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img
                                        src="images/Vans%20Old%20Skool%20Classic%20Black.jpg"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="product-single.jsp"
                                    >Vans Old Skool Classic Black
                                    </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money">$675.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 product-men">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img
                                        src="images/Vans%20Old%20Skool%20True%20White.webp"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="product-single.jsp">Vans Old Skool True White </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money">$875.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 product-men">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img
                                        src="images/Vans%20Style%2036%20Retro%20Sport%20biking%20Red.webp"
                                        class="img-fluid"
                                        alt=""
                                />
                            </div>
                            <div class="item-info-product">
                                <h4>
                                    <a href="product-single.jsp">Vans Style Retro Sport Biking Red </a>
                                </h4>

                                <div class="product_price">
                                    <div class="grid-price">
                                        <span class="money">$875.00</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //contact -->
<!-- footer -->
<div class="footer_container">
    <footer>
        <div class="container">
            <div class="row footer-top">
                <div class="col-lg-4 footer-grid_section_w3layouts">
                    <h2 class="logo-2 mb-lg-4 mb-3">
                        <a href="../index.jsp">SKED</a>
                    </h2>
                    <p class="titleShop">Cam kết sneakers chính hãng nhập khẩu Mỹ</p>
                    <h4 class="sub-con-fo ad-info my-4">Mạng Xã Hội</h4>
                    <ul class="w3layouts_social_list list-unstyled">
                        <li>
                            <a href="#" class="w3pvt_facebook">
                                <span class="fa fa-facebook-f"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#" class="w3pvt_twitter">
                                <span class="fa fa-twitter"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="w3pvt_dribble">
                                <span class="fa fa-dribbble"></span>
                            </a>
                        </li>
                        <li class="ml-2">
                            <a href="#" class="w3pvt_google">
                                <span class="fa fa-google-plus"></span>
                            </a>
                        </li>
                    </ul>
                    <div style="margin: 1rem 0">
                        <a style="color: #D3EFDE ;font-family: Tahoma;font-size: 18px" href="../admin/login.jsp"
                        >Quản lí cửa hàng
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 footer-right">
                    <div class="row bottom-w3layouts-sec-nav mx-0">
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                TRANG
                            </h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <li>
                                    <a href="../index.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="nike.jsp">Nike</a>
                                </li>
                                <li>
                                    <a href="adidas.jsp">Adidas</a>
                                </li>
                                <li>
                                    <a href="vans.jsp">VANS</a>
                                </li>
                                <li class="mt-3">
                                    <a href="contact.jsp">Liên Hệ</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                Thẻ
                            </h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <li>
                                    <a href="../index.jsp">Chạy Bộ</a>
                                </li>
                                <li>
                                    <a href="shop.html">DÃ NGOẠI</a>
                                </li>
                                <li>
                                    <a href="shop.html">Đi Học</a>
                                </li>
                                <li>
                                    <a href="shop.html">Đi Làm</a>
                                </li>
                            </ul>
                        </div>

                        <div
                                class="col-md-4 footer-grid_section_w3layouts my-md-0 my-5"
                        >
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                THÔNG TIN LIÊN HỆ
                            </h3>
                            <div class="contact-info">
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-2">Điện Thoại</h4>
                                    <p>0869104353</p>
                                </div>
                                <div class="footer-address-inf my-4">
                                    <h4 class="ad-info mb-2">Email</h4>
                                    <p>
                                        khanh2104@gmail.com
                                    </p>
                                </div>
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-2">Địa Chỉ</h4>
                                    <p>Tầng 80 Landmark, Bình Thạnh, HCM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cpy-right text-left row">
                        <p class="col-md-10">
                            <a href="http://w3layouts.com"> </a>
                        </p>
                        <!-- move top icon -->
                        <a href="#home" class="move-top text-right col-md-2"
                        ><span class="fa fa-long-arrow-up" aria-hidden="true"></span
                        ></a>
                        <!-- //move top icon -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
<!-- //footer -->
<!-- form login -->
<div class="login-container hidden">
    <form action="action_page.php" method="post">
        <div class="imgcontainer">
            <h2 style="color: white">Đăng Nhập</h2>
        </div>

        <div class="container">
            <label for="uname"><b>Tên</b></label>
            <input
                    type="text"
                    placeholder="Vui lòng nhập tên"
                    name="uname"
                    required
            />

            <label for="psw"><b>Mật Khẩu</b></label>
            <input
                    type="password"
                    placeholder="Vui Lòng Nhập Password"
                    name="psw"
                    required
            />

            <button type="submit">Đăng Nhập</button>
            <label>
                <input type="checkbox" checked="checked" name="remember"/> Lưu mật
                khẩu
            </label>
        </div>

        <div
                style="
            display: flex;
            justify-content: space-around;
            align-items: center;
            background-color: rgb(255, 182, 47);
            padding: 0 !important;
            margin: 0 !important; ;
          "
                class="container"
                style="background-color: #f1f1f1"
        >
            <button type="button" class="cancelbtn">Hủy</button>
            <div
                    style="
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
            "
            >
            <span class="psw"
            >Quên <a href="forgot-password.jsp">mật khẩu?</a></span
            >
                <span class="psw">Chưa <a href="register.jsp">đăng kí?</a></span>
            </div>
        </div>
    </form>
</div>
<div class="wrapper hidden"></div>

<!-- form login -->
</body>
<script src="./script/main.js"></script>
</html>
