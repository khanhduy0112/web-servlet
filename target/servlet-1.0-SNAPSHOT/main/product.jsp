<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            href="../main/images/jordan1_retro.jpg"
            type="image/x-icon"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="main/css/bootstrap.css"/>
    <link rel="stylesheet" href="main/css/style.css" type="text/css" media="all"/>
    <link href="main/css/font-awesome.css" rel="stylesheet"/>
</head>

<body>

        <jsp:include page="/main/menu.jsp"/>
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
                        <c:forEach items="${tags}" var="item">
                            <li>
                                <input type="checkbox" class="checked"/>
                                <span class="span">${item.name}</span>
                            </li>
                        </c:forEach>
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

            </div>
            <%--product section--%>
            <div class="left-ads-display col-lg-8">
                <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="col-md-4 product-men">
                            <div class="product-shoe-info shoe text-center">
                                <div class="men-thumb-item">
                                    <img
                                            src="${product.img}"
                                            class="img-fluid"
                                            alt="img"
                                    />
                                </div>
                                <div class="item-info-product">
                                    <h4>
                                        <a href="../main/product-single.jsp"
                                        >${product.name}
                                        </a>
                                    </h4>

                                    <div class="product_price">
                                        <div class="grid-price">
                                            <span class="money">${product.price} vnd</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <%--product section--%>

        </div>
    </div>
</section>
<%--footer--%>
<jsp:include page="/main/footer.jsp"/>
<%--footer--%>
<!-- form login -->
<jsp:include page="/main/login.jsp"/>
<!-- form login -->
<script src="main/script/main.js"></script>
</body>
</html>
