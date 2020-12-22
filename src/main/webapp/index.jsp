<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <title>Trang Chủ</title>
    <link
            rel="shortcut icon"
            href="main/images/jordan1_retro.jpg"
            type="image/x-icon"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>
    <meta
            name="keywords"
            content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
    />
    <script></script>

    <link rel="stylesheet" href="main/css/bootstrap.css"/>
    <link rel="stylesheet" href="main/css/style.css" type="text/css" media="all"/>
    <link href="main/css/font-awesome.css" rel="stylesheet"/>
    <link
            href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700"
            rel="stylesheet"
    />
    <link
            href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900"
            rel="stylesheet"
    />
    <!--  -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css"/>
    <link
            rel="stylesheet"
            href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <style>
        .swiper-container {
            width: 90%;
            margin: 1rem auto;
            /* background-color: rgb(44, 44, 44); */
            padding: 1rem;
        }

        .swiper-container img {
            /* width: 50%; */
            height: 120px !important;
            /* height: 100%; */
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
    </style>
</head>

<body>
<!-- mian-content -->
<div class="main-banner" id="home">
    <!-- header -->
    <header class="header">
        <div class="container-fluid px-lg-5">
            <!-- nav -->
            <nav class="py-4">
                <div id="logo">
                    <h1><a href="index.jsp">SKED</a></h1>
                </div>

                <label for="drop" class="toggle">Menu</label>
                <input type="checkbox" id="drop"/>
                <ul class="menu mt-2">
                    <li><a href="index.jsp">TRANG CHỦ</a></li>
                    <li><a href="/product">SẢN PHẨM</a></li>
                    <li><a href="main/contact.jsp">LIÊN HỆ</a></li>
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
                            <li><a href="nike.html">NIKE</a></li>
                            <li><a href="adidas.html">ADIDAS</a></li>
                            <li><a href="vans.html">VANS</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="main/cart.jsp"
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
    <div class="banner-info">
        <h4 class="tagret">MỤC TIÊU HÀNG ĐẦU</h4>
        <h3 class="mb-4">Sneaker Chính Hãng</h3>
        <div class="ban-buttons">
            <a href="product.jsp" class="btn">Mua Sắm Ngay</a>
        </div>
        <div class="seachForm">
            <input class="inputSearch" type="text" placeholder="Tìm kiếm"/>
            <button class="btnSearch">
                <i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </div>
    </div>
    <!--// banner-inner -->
</div>
<!--//main-content-->
<!--/ab -->
<section class="about py-md-5 py-5">
    <div class="container-fluid">
        <div class="feature-grids row px-3">
            <div class="col-lg-3 gd-bottom">
                <div class="bottom-gd row">
                    <div class="icon-gd col-md-3 text-center">
                        <span class="fa fa-truck" aria-hidden="true"></span>
                    </div>
                    <div class="icon-gd-info col-md-9">
                        <h3 class="mb-2">MIỄN PHÍ VẬN CHUYỂN</h3>
                        <h6>HÓA ĐƠN TRÊN $100</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 gd-bottom">
                <div class="bottom-gd row bottom-gd2-active">
                    <div class="icon-gd col-md-3 text-center">
                        <span class="fa fa-bullhorn" aria-hidden="true"></span>
                    </div>
                    <div class="icon-gd-info col-md-9">
                        <h3 class="mb-2">MIỄN PHÍ ĐỔI HÀNG</h3>
                        <h6>TRONG VÒNG 30 NGÀY</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 gd-bottom">
                <div class="bottom-gd row">
                    <div class="icon-gd col-md-3 text-center">
                        <span class="fa fa-gift" aria-hidden="true"></span>
                    </div>

                    <div class="icon-gd-info col-md-9">
                        <h3 class="mb-2">ÁP DỤNG KHUYỄN MÃI</h3>
                        <h6>KHI ĐĂNG KÝ THÀNH VIÊN</h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 gd-bottom">
                <div class="bottom-gd row">
                    <div class="icon-gd col-md-3 text-center">
                        <span class="fa fa-usd" aria-hidden="true"></span>
                    </div>
                    <div class="icon-gd-info col-md-9">
                        <h3 class="mb-2">HỖ TRỢ KHÁCH HÀNG</h3>
                        <h6>24/7</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //ab -->
<!--/ab -->
<section class="about py-5">
    <div class="container pb-lg-3">
        <h3 class="tittle text-center">SẢN PHẨM MỚI</h3>
        <div class="row">
            <div class="col-md-4 product-men">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Nike%20Air%20Force%201%20Low%20Travis%20Scott.jpg"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp"
                            >Nike Air Force 1 Low Travis Scott</a
                            >
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="regular-price">$675</span>
                                <span class="money">500$</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Nike-Air-Force-1-Low-G-Dragon-Peaceminusone-Para-Noise-20.jpg"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp"
                            >Nike Air Force 1 Low G-Dragon
                            </a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$475.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Air-Jordan-4-Retro-Fire-Red-2020-GS.jpg"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Jordan 4 Retro Fire Red</a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$575.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men my-lg-4">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img src="main/images/jordan1_tokyo.png" class="img-fluid" alt=""/>
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Jordan-Tokyo</a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$575.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men my-lg-4">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img src="main/images/Nike-Air-Force.png" class="img-fluid" alt=""/>
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Nike-Air-Force </a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$575.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men my-lg-4">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Adidas%20Ultra%20Boost.png"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Adidas Ultra Boost </a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$575.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Nike-Blazer%20mid77.png"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Nike Blazer Mid77 </a>
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
                                src="main/images/Adidas%20Yeezy%20Boost.png"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Adidas Yeezy Boost </a>
                        </h4>

                        <div class="product_price">
                            <div class="grid-price">
                                <span class="money">$775.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 product-men">
                <div class="product-shoe-info shoe text-center">
                    <div class="men-thumb-item">
                        <img
                                src="main/images/Nike%20Free%20X%20Metcon%202.png"
                                class="img-fluid"
                                alt=""
                        />
                        <span class="product-new-top">MỚI</span>
                    </div>
                    <div class="item-info-product">
                        <h4>
                            <a href="main/product-single.jsp">Nike Free Metcon</a>
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
</section>

<section class="about py-5">
    <div class="container pb-lg-3">
        <h3 class="tittle text-center">SẢN PHẨM YÊU THÍCH</h3>
        <div class="row">
            <div class="col-md-6 latest-left">
                <div class="product-shoe-info shoe text-center">
                    <img src="main/images/img1.png" class="img-fluid" alt=""/>
                    <div class="shop-now img1">
                        <a href="product.jsp" class="btn">CHI TIẾT</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 latest-right">
                <div class="row latest-grids">
                    <div class="latest-grid1 product-men col-12">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img
                                        src="main/images/Adidas%20Alphabounce%20Íntinct.jpg"
                                        class="img-fluid"
                                        alt=""
                                />
                                <div class="shop-now img2">
                                    <a href="product.jsp" class="btn">CHI TIẾT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="latest-grid2 product-men col-12 mt-lg-4">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img src="main/images/img3.png" class="img-fluid" alt=""/>
                                <div class="shop-now img3">
                                    <a href="product.jsp" class="btn">CHI TIẾT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //ab -->

<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide">
            <img src="main/images/logoAdidas.png" alt=""/>
        </div>
        <div class="swiper-slide">
            <img src="main/images/logoConverse.png" alt=""/>
        </div>
        <div class="swiper-slide">
            <img src="main/images/logoVans.png" alt=""/>
        </div>
        <div class="swiper-slide">
            <img src="main/images/logoNewBalance.png" alt=""/>
        </div>
    </div>
</div>

<!-- footer -->
<div class="footer_container">
    <footer>
        <div class="container">
            <div class="row footer-top">
                <div class="col-lg-4 footer-grid_section_w3layouts">
                    <h2 class="logo-2 mb-lg-4 mb-3">
                        <a href="index.jsp">SKED</a>
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
                        <a style="color: #D3EFDE ;font-family: Tahoma;font-size: 18px" href="./admin/login.jsp"
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
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="nike.html">Nike</a>
                                </li>
                                <li>
                                    <a href="adidas.html">Adidas</a>
                                </li>
                                <li>
                                    <a href="vans.html">VANS</a>
                                </li>
                                <li class="mt-3">
                                    <a href="main/contact.jsp">Liên Hệ</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                Thẻ
                            </h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <li>
                                    <a href="index.jsp">Chạy Bộ</a>
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
    <form action="" method="post">
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
            >Quên <a href="main/forgot-password.jsp">mật khẩu?</a></span
            >
                <span class="psw">Chưa <a href="main/register.jsp">đăng kí?</a></span>
            </div>
        </div>
    </form>
</div>
<div class="wrapper hidden"></div>
<!-- form login -->
</body>
<script src="main/script/main.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".swiper-container", {
        slidesPerView: 3,
        spaceBetween: 30,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        autoplay: {
            delay: 1000,
        },
    });
</script>
</html>
