<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <title>Tất Cả Sản Phẩm</title>
    <link rel="shortcut icon" href="/main/images/Jordan1-Retro.jpg" type="image/x-icon"/>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Bootie Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <!-- //Meta tag Keywords -->
    <link rel="stylesheet" href="/main/css/menu.css">

    <!-- Custom-Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/bootstrap.css"/>
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="${pageContext.request.contextPath}/main/css/font-awesome.css" rel="stylesheet"/>
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link rel="stylesheet" href="main/css/design.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<div>
    <!-- Start: Header -->
    <div class="header-blue" style="height: 15vh;">
        <jsp:include page="/main/menu.jsp"/>
    </div>
    <!-- End: Header -->
</div>
<%--products--%>
<section class="ab-info-main py-md-5 py-4">
    <div class="container py-md-3">
        <!-- top Products -->
        <div class="row">
            <div class="side-bar col-lg-4">
                <div class="search-bar w3layouts-newsletter">
                    <h3 class="sear-head">TÌM KIẾM</h3>
                    <form action="#" method="post" class="d-flex">
                        <input type="search" placeholder="TÊN SẢN PHẨM" name="search" class="form-control"
                               required=""/>
                        <button class="btn1">
                            <span class="fa fa-search" aria-hidden="true"></span>
                        </button>
                    </form>
                </div>
                <div class="sidebar">
                    <div class="row"
                         style="width: 250PX;padding: 10px;color: var(--light);border-color: var(--white);">
                        <div class="col">
                            <div>
                                <a class="btn btn-primary" data-toggle="collapse" aria-expanded="true"
                                   aria-controls="collapse-1" href="#collapse-1" role="button"
                                   style="color: var(--white);font-weight: 600;font-style: normal;width: 100%;padding: 0;padding-bottom: 5px;padding-top: 10px;border-color: var(--white);border-bottom-color: var(--white);background: #172a74;margin-right: 0px;padding-right: 60px;text-align: center;">
                                    GIÁ SẢN PHẨM
                                </a>
                                <div class="collapse show" id="collapse-1">
                                    <c:forEach items="${categories}" var="category">
                                        <c:if test="${category.status == 1}">
                                            <div class="form-check"
                                                 style="width: 100%;background: var(--white);padding-left: 30px;color: var(--gray);">
                                                <input class="form-check-input" type="radio" id="formCheck-1">
                                                <label class="form-check-label" for="formCheck-1"
                                                       style="color: var(--gray);">${category.name}</label>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar">
                    <div class="row"
                         style="width: 250PX;padding: 10px;color: var(--light);border-color: var(--white);">
                        <div class="col">
                            <div>
                                <a class="btn btn-primary" data-toggle="collapse" aria-expanded="true"
                                   aria-controls="collapse-1" href="#collapse-1" role="button"
                                   style="color: var(--white);font-weight: 600;font-style: normal;width: 100%;padding: 0;padding-bottom: 5px;padding-top: 10px;border-color: var(--white);border-bottom-color: var(--white);background: #172a74;margin-right: 0px;padding-right: 60px;text-align: center;">
                                    GIÁ SẢN PHẨM
                                </a>
                                <div class="collapse show" id="collapse-1">
                                    <c:forEach items="${tags}" var="tag">
                                        <c:if test="${tag.status == 1}">
                                            <div class="form-check"
                                                 style="width: 100%;background: var(--white);padding-left: 30px;color: var(--gray);">
                                                <input class="form-check-input" type="radio" id="formCheck-1">
                                                <label class="form-check-label" for="formCheck-1"
                                                       style="color: var(--gray);">${tag.name}</label>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar">
                    <div class="row"
                         style="width: 250PX;padding: 10px;color: var(--light);border-color: var(--white);">
                        <div class="col">
                            <div>
                                <a class="btn btn-primary" data-toggle="collapse" aria-expanded="true"
                                   aria-controls="collapse-1" href="#collapse-1" role="button"
                                   style="color: var(--white);font-weight: 600;font-style: normal;width: 100%;padding: 0;padding-bottom: 5px;padding-top: 10px;border-color: var(--white);border-bottom-color: var(--white);background: #172a74;margin-right: 0px;padding-right: 60px;text-align: center;">
                                    GIÁ SẢN PHẨM
                                </a>
                                <div class="collapse show" id="collapse-1">
                                    <c:forEach items="${sizes}" var="size">
                                        <div class="form-check"
                                             style="width: 100%;background: var(--white);padding-left: 30px;color: var(--gray);">
                                            <input class="form-check-input" type="radio" id="formCheck-1">
                                            <label class="form-check-label" for="formCheck-1"
                                                   style="color: var(--gray);">${size}</label>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="left-ads-display col-lg-8">
                <div class="row">
                    <c:forEach items="${products}" var="item">
                        <div class="col-md-4 product-men">
                            <div class="product-shoe-info shoe text-center">
                                <div class="men-thumb-item">
                                    <img src="${item.img}" class="img-fluid" alt=""/>
                                </div>
                                <div class="item-info-product">
                                    <h4>
                                        <a href="/products/product-single?id=${item.productId}">${item.productId}</a>
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
                </div>
                <div class="container">
                    <div class="row justify-content-center">
                        <nav align="center" style="text-align: center;height: 100px;margin: 0px;">
                            <ul class="pagination">
                                <%--prev--%>
                                <c:if test="${pagesCount >  1}">
                                    <li>
                                        <a style="padding: 10px 15px; background: #2d2f35; border: 1px solid whitesmoke"
                                                <c:if test="${currentPage >1}">
                                                    href="/products?category=${currentCategory}&pages=${currentPage -1}"
                                                </c:if> aria-label="Previous">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                </c:if>
                                <%--prev--%>
                                <c:forEach var="i" begin="1" end="${pagesCount}">
                                    <li>
                                        <a style="padding: 10px 15px; background: #2d2f35;border: 1px solid whitesmoke"
                                           href="/products?category=${currentCategory}&pages=${i}">${i}</a>
                                    </li>
                                </c:forEach>
                                <%--next--%>
                                <c:if test="${pagesCount > 1}">
                                    <li>
                                        <a style="padding: 10px 15px; background: #2d2f35; border: 1px solid whitesmoke"
                                                <c:if test="${currentPage < pagesCount}">
                                                    href="/products?category=${currentCategory}&pages=${currentPage +1}"
                                                </c:if> aria-label="Next">
                                            <span aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<jsp:include page="/main/footer.jsp"/>
<%--<jsp:include page="/main/login.jsp"/>--%>
<script src="/main/script/main.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>