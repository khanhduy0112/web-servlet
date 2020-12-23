<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            href="main/images/Jordan1-Retro.jpg"
            type="image/x-icon"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="main/css/bootstrap.css"/>
    <link rel="stylesheet" href="main/css/style.css" type="text/css" media="all"/>
    <link href="main/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css"/>
    <link
            rel="stylesheet"
            href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <style>
        .swiper-container {
            width: 90%;
            margin: 1rem auto;
            padding: 1rem;
        }

        .swiper-container img {
            height: 120px !important;
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
                    <li><a href="/contact">LIÊN HỆ</a></li>
                    <li>
                        <a href="#">DANH MỤC<span class="fa fa-angle-down" aria-hidden="true"></span></a>
                        <ul>
                            <c:forEach items="${categories}" var="item">
                                <li><a href="nike.html">${item.name}</a></li>
                            </c:forEach>
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
            <a href="main/product.jsp" class="btn">Mua Sắm Ngay</a>
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
                        <a href="main/product.jsp" class="btn">CHI TIẾT</a>
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
                                    <a href="main/product.jsp" class="btn">CHI TIẾT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="latest-grid2 product-men col-12 mt-lg-4">
                        <div class="product-shoe-info shoe text-center">
                            <div class="men-thumb-item">
                                <img src="main/images/img3.png" class="img-fluid" alt=""/>
                                <div class="shop-now img3">
                                    <a href="main/product.jsp" class="btn">CHI TIẾT</a>
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
<jsp:include page="main/footer.jsp"/>
<!-- //footer -->

<!-- form login -->
<jsp:include page="/main/login.jsp"/>
<!-- form login -->
</body>
<script src="main/script/main.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper(".swiper-container", {
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
