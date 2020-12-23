<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <title>Liên Hệ</title>
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

    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="main/css/bootstrap.css"/>
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="main/css/style.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet"/>
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->

</head>

<body>
<!-- mian-content -->
<jsp:include page="/main/menu.jsp"/>

<!--//main-content-->
<!---->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="../index.jsp">TRANG CHỦ</a>
    </li>
    <li class="breadcrumb-item active">LIÊN HỆ</li>
</ol>
<!---->
<!--// mian-content -->
<!-- banner -->
<section class="ab-info-main py-5">
    <div class="container py-3">
        <h3 class="tittle text-center">
            <span class="sub-tittle">Liên Hệ Chúng Tôi</span> SKED
        </h3>
        <div class="row contact-main-info mt-5">
            <div class="col-md-6 contact-right-content">
                <form action="#" method="post">
                    <input type="text" name="Name" placeholder="Tên" required=""/>
                    <input
                            type="email"
                            class="email"
                            name="Email"
                            placeholder="Email"
                            required=""
                    />
                    <input
                            type="text"
                            name="Phone no"
                            placeholder="Điện thoại"
                            required=""
                    />
                    <textarea
                            name="Message"
                            placeholder="Tin nhắn"
                            required=""
                    ></textarea>
                    <div class="read mt-3">
                        <input type="submit" value="Gửi"/>
                    </div>
                </form>
            </div>
            <div class="col-md-6 contact-left-content">
                <div class="address-con">
                    <h4 class="mb-2">
                        <span class="fa fa-phone-square" aria-hidden="true"></span>
                        Điện Thoại
                    </h4>
                    <p>098 8907 9987</p>
                    <p>098 8907 9987</p>
                </div>
                <div class="address-con my-4">
                    <h4 class="mb-2">
                        <span class="fa fa-envelope-o" aria-hidden="true"></span> Email
                    </h4>
                    <p><a href="mailto:info@example.com">duy@example.com</a></p>
                    <p><a href="mailto:info@example.com">info@example.com</a></p>
                </div>
                <div class="address-con mb-4">
                    <h4 class="mb-2">
                        <span class="fa fa-fax" aria-hidden="true"></span> Fax
                    </h4>

                    <p>123-80088</p>
                </div>
                <div class="address-con">
                    <h4 class="mb-2">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>
                        Địa Chỉ
                    </h4>

                    <p>Tầng 80 Landmask, Bình Thạnh, HCM</p>
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
<script src="main/script/main.js"></script>

</body>
</html>
