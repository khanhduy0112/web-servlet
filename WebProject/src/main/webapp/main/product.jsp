<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <title>Tất Cả Sản Phẩm</title>
    <link
            rel="shortcut icon"
            href="/main/images/Jordan1-Retro.jpg"
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/bootstrap.css"/>
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="${pageContext.request.contextPath}/main/css/font-awesome.css" rel="stylesheet"/>
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
<jsp:include page="/main/menu.jsp"/>
<%--products--%>
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
                    <c:forEach items="${products}" var="item">
                        <div class="col-md-4 product-men">
                            <div class="product-shoe-info shoe text-center">
                                <div class="men-thumb-item">
                                    <img
                                            src="/main/images/Vans%20Old%20Skool%20Classic%20Black.jpg"
                                            class="img-fluid"
                                            alt=""
                                    />
                                </div>
                                <div class="item-info-product">
                                    <h4>
                                        <a href="/products/product-single?id=${item.id}">${item.name}
                                        </a>
                                    </h4>

                                    <div class="product_price">
                                        <div class="grid-price">
                                            <span class="money">${item.price}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Firstname</th>
                            <th>Lastname</th>
                            <th>Email</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>John</td>
                            <td>Doe</td>
                            <td>john@example.com</td>
                        </tr>
                        <tr>
                            <td>Mary</td>
                            <td>Moe</td>
                            <td>mary@example.com</td>
                        </tr>
                        <tr>
                            <td>July</td>
                            <td>Dooley</td>
                            <td>july@example.com</td>
                        </tr>
                        </tbody>
                    </table>
                    <%--                    <div class="col-md-4 product-men">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Adidas%20Alphabounce%20Íntinct.jpg"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp"--%>
                    <%--                                    >Adidas Alphabounce Instinct</a--%>
                    <%--                                    >--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$475.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/New%20Balance%20CRT%20300%20Beige.webp"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">New Balance CRT 300 Beige</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$575.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men my-lg-4">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Adidas%20Ultra%20Boost.png"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Adidas Ultra Boost</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$575.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men my-lg-4">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Nike-Blazer%20mid77.png"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Nike Blazer Mid77</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$575.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men my-lg-4">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Adidas%20Yeezy%20Boost.png"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Adidas Yeezy Boost </a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$575.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Nike-Dunk%20Low.png"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Nike Dunk Low</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$675.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Nike%20Free%20X%20Metcon%202.png"--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Nike Free X metcon2</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$775.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-md-4 product-men">--%>
                    <%--                        <div class="product-shoe-info shoe text-center">--%>
                    <%--                            <div class="men-thumb-item">--%>
                    <%--                                <img--%>
                    <%--                                        src="/main/images/Nike-Air-Force.png "--%>
                    <%--                                        class="img-fluid"--%>
                    <%--                                        alt=""--%>
                    <%--                                />--%>
                    <%--                            </div>--%>
                    <%--                            <div class="item-info-product">--%>
                    <%--                                <h4>--%>
                    <%--                                    <a href="product-single.jsp">Nike Air Force</a>--%>
                    <%--                                </h4>--%>

                    <%--                                <div class="product_price">--%>
                    <%--                                    <div class="grid-price">--%>
                    <%--                                        <span class="money">$875.00</span>--%>
                    <%--                                    </div>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //contact -->
<!-- footer -->


<jsp:include page="/main/footer.jsp"/>
<jsp:include page="/main/login.jsp"/>

<!-- form login -->
</body>
<script src="/main/script/main.js"></script>
</html>
