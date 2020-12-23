<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <title>Giỏ hàng</title>
    <link
<<<<<<< HEAD
            rel="shortcut icon"
            href="images/jordan1_retro.jpg"
            type="image/x-icon"
=======
      rel="shortcut icon"
      href="./images/Jordan1-Retro.jpg"
      type="image/x-icon"
>>>>>>> parent of b18f935... chỉnh sửa mốt số lỗi hiển thị
    />
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8"/>

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
</head>

<body>
<jsp:include page="/main/menu.jsp"/>
</div>
<!--//main-content-->
<!---->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="../index.jsp">TRANG CHỦ</a>
    </li>
    <li class="breadcrumb-item"><a href="product.jsp">SẢN PHẨM</a></li>
    <li class="breadcrumb-item">
        <a href="product-single.jsp">CHI TIẾT</a>
    </li>
    <li class="breadcrumb-item active">GIỎ HÀNG</li>
</ol>

<section class="ab-info-main py-5">
    <div class="container py-3">
        <table class="table_cart">
            <thead>
            <th>Hình Ảnh</th>
            <th>Tên Sản Phẩm</th>
            <th>Đơn Giá</th>
            <th>Số Lượng</th>
            <th>Size</th>
            <th>Tổng Tiền</th>
            <th>Thao Tác</th>
            </thead>
            <tbody>
            <tr>
                <td class="table-image">
                    <div class="table-imagediv">
                        <img
                                src="images/jordan1_tokyo.png"
                                class="img-jordan"
                                alt=""
                        />
                    </div>
                </td>
                <td>Jordan 1 Tokyo</td>
                <td>200000đ</td>
                <td>
                    <button class="custom_btn">-</button>
                    <span>12</span>
                    <button class="custom_btn">+</button>
                </td>
                <td>42</td>
                <td>200000đ</td>
                <td class="delete">
                    <i class="fa fa-trash" aria-hidden="true"></i>
                </td>
            </tr>
            <tr>
                <td class="table-image">
                    <div class="table-imagediv">
                        <img
                                src="images/Nike-Air-Force.png"
                                class="img-jordan"
                                alt=""
                        />
                    </div>
                </td>
                <td>Nike Air Force</td>
                <td>6000000đ</td>
                <td>
                    <button class="custom_btn">-</button>
                    <span>12</span>
                    <button class="custom_btn">+</button>
                </td>
                <td>42</td>
                <td>
                    5800000đ
                    <small style="color: red; margin-left: 0.25rem">(-10%)</small>
                </td>

                <td class="delete">
                    <i class="fa fa-trash" aria-hidden="true"></i>
                </td>
            </tr>
            <tr>
                <td class="table-image">
                    <div class="table-imagediv">
                        <img
                                src="images/Adidas%20Ultra%20Boost.png"
                                class="img-jordan"
                                alt=""
                        />
                    </div>
                </td>
                <td>Adidas Ultraboost</td>
                <td>5500000đ</td>
                <td>
                    <button class="custom_btn">-</button>
                    <span>12</span>
                    <button class="custom_btn">+</button>
                </td>
                <td>42</td>
                <td>5500000đ</td>
                <td class="delete">
                    <i class="fa fa-trash" aria-hidden="true"></i>
                </td>
            </tr>
            <tr>
                <td class="table-image">
                    <div class="table-imagediv">
                        <img
                                src="images/Adidas%20Pure%20Boost%20Zg%20Shock.jpg"
                                class="img-jordan"
                                alt=""
                        />
                    </div>
                </td>
                <td>Ultra boost</td>
                <td>200000đ</td>
                <td>
                    <button class="custom_btn">-</button>
                    <span>12</span>
                    <button class="custom_btn">+</button>
                </td>
                <td>42</td>
                <td>200000đ</td>
                <td class="delete">
                    <i class="fa fa-trash" aria-hidden="true"></i>
                </td>
            </tr>
            </tbody>
            <tfoot>
            <tr>
                <td class="title-total">Tổng Cộng</td>
                <td></td>
                <td>800000</td>
                <td>4</td>
                <td></td>
                <td>800000</td>
                <td class="buy">
                    <a href="#">
                        <button class="btnhuy">Hủy</button>
                    </a>
                    <a href="pay.jsp"
                    >
                        <button class="btnbuy">Thanh Toán</button>
                    </a
                    >
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
</section>
<!--footer -->
<jsp:include page="/main/footer.jsp"/>
<!-- //footer -->
<!-- form login -->
<jsp:include page="/main/login.jsp"/>
<!-- form login -->
<script src="main/script/main.js"></script>
</body>
</html>
