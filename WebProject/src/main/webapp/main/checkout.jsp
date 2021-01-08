<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.nlu.model.Cart" %>
<%@ page import="com.nlu.model.CartItem" %>
<%@ page import="java.util.Collection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zxx">
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <title>Thanh Toán</title>
    <link
            rel="shortcut icon"
            href="./images/Jordan1-Retro.jpg"
            type="image/x-icon"
    />
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>

    <!-- Custom-Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/bootstrap.css"/>
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="main/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .submit-now {
            margin-top: 20px;
            font-size: 16px;
            width: 200px;
            height: 50px;
            background-color: #e74c3c;
            border-color: transparent
        }

        .form-control.input {
            border: 0;
            background: 0 0;
            border-bottom: 1px solid silver;
            border-radius: 0 !important
        }

        .getintouch {
            height: auto;
            background-image: url(../../assets/img/Get%20In%20touch/GetInTouch.png);
            background-size: cover;
            background-repeat: no-repeat
        }

        input[type=email], input[type=tel], input[type=text], textarea {
            border-radius: 8px !important
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #4daade;
            border-color: #4daade;
            box-shadow: 0 10px 15px rgba(157, 157, 157, .4)
        }

        .btn-primary:not(:disabled):not(.disabled).active, .btn-primary:not(:disabled):not(.disabled):active, .show > .btn-primary.dropdown-toggle {
            color: #fff;
            background-color: #4daade;
            border-color: #4daade
        }

        .modern-form {
            padding-top: 80px;
            padding-bottom: 80px
        }

        .modern-form__hr {
            border-color: #4daade;
            border-width: 2px;
            width: 121px
        }

        .modern-form__form-container {
            padding-top: 100px
        }

        .modern-form__form-group--padding-r {
            padding-right: 20px
        }

        .modern-form__form-group--padding-t {
            padding-top: 50px
        }

        .modern-form__form-control--textarea {
            height: 95px !important;
            resize: none
        }
    </style>
</head>

<body>
<!-- mian-content -->
<div>
    <!-- Start: Header -->
    <div class="header-blue" style="height: 15vh;">
        <jsp:include page="/main/menu.jsp"/>
    </div>
    <!-- End: Header -->
</div>

<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="../index.jsp">THANH TOÁN</a>
    </li>
    <li class="breadcrumb-item"><a href="product.jsp">SẢN PHẨM</a></li>
    <li class="breadcrumb-item">
        <a href="product-single.jsp">CHI TIẾT SẢN PHẨM</a>
    </li>
    <li class="breadcrumb-item"><a href="cart.jsp">GIỎ HÀNG</a></li>
    <li class="breadcrumb-item active">THANH TOÁN</li>
</ol>
<section style="margin-top: 30px;" class="">
    <div class="checkout_container"
         style="display: flex;justify-content: space-between; flex-direction: row;width: 95%;margin: auto">
        <div style="flex: 6" class="getintouch user_info">
            <div class="container modern-form">
                <div class="text-center">
                    <h4 style="color: #212529;font-size: 45px;height: 0px;">Thông tin địa chỉ giao hàng</h4>
                </div>
                <div class="modern-form__form-container" style="width: 100%;height: 603px;">
                    <form method="post" action="/checkout">
                        <div class="form-row">
                            <div class="col col-contact">
                                <div class="form-group modern-form__form-group--padding-r"><input
                                        class="form-control fullname input input-tr" type="text" name="fullName"
                                        placeholder="Họ Và Tên">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col col-contact">
                                <div class="form-group modern-form__form-group--padding-l"><input
                                        class="form-control phone input input-tr" type="text" name="phone"
                                        placeholder="Điện Thoại">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col col-contact">
                                <div class="form-group modern-form__form-group--padding-r"><input
                                        class="form-control email input input-tr" type="text" name="email"
                                        placeholder="Email">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col col-contact">
                                <div class="form-group modern-form__form-group--padding-r"><input
                                        class="form-control city input input-tr" type="text" name="city"
                                        placeholder="Tỉnh/Thành Phố">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col col-contact">
                                <div class="form-group modern-form__form-group--padding-r"><input
                                        class="form-control address input input-tr" type="text" name="address"
                                        placeholder="Địa Chỉ">
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group modern-form__form-group--padding-t"><textarea
                                        class="form-control note input modern-form__form-control--textarea"
                                        name="note"
                                        placeholder="Chú Thích"></textarea>
                                    <div class="line-box">
                                        <div class="line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col text-center">
                                <button class="btn btn-primary submit-now" type="submit">Đặt Hàng</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End: Modern Contact Form -->
        <%
            Cart cart = Cart.getCart(session);
            Collection<CartItem> data = cart.getData();
            request.setAttribute("data", data);
        %>
        <div style="flex: 4;margin-top: 50px" class="order_info">
            <table class="tableOrder">
                <tr>
                    <th>Sản Phẩm</th>
                    <th>Size</th>
                    <th>Số lượng</th>
                    <th>Tạm tính</th>
                </tr>
                <tbody>
                <c:forEach items="${data}" var="item">
                    <tr>
                        <td>${item.name}</td>
                        <td>${item.size}</td>
                        <td>${item.quality}</td>
                        <td>${item.price * item.quality}</td>
                    </tr>
                </c:forEach>
                </tbody>
                <tfoot>
                <td>Tổng Cộng</td>
                <td></td>
                <td></td>
                <td>240000đ</td>
                </tfoot>
            </table>
            <div class="payments">

                <input type="checkbox" id="radio2" checked class="payShip"/> Thanh toán khi nhận hàng


                <p class="usePayShip">
                    Trả bằng tiền mặt khi nhận hàng thông qua đường bưu điện hoặc giao
                    hàng nhanh
                </p>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"/>
<script src="${pageContext.request.contextPath}/main/script/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
