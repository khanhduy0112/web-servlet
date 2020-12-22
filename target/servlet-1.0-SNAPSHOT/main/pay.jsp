<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <title>Thanh Toán</title>
    <link
      rel="shortcut icon"
      href="images/jordan1_retro.jpg"
      type="image/x-icon"
    />
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta charset="UTF-8" />

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css" />
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet" />
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
          <input type="checkbox" id="drop" />
          <ul class="menu mt-2">
            <li><a href="../index.jsp">TRANG CHỦ</a></li>
            <li><a href="../product.jsp">SẢN PHẨM</a></li>
            <li><a href="contact.jsp">LIÊN HỆ</a></li>
            <li>
              <label for="drop-2" class="toggle">DANH MỤC</label>
              <a href="#"
              >DANH MỤC<span
                      class="fa fa-angle-down"
                      aria-hidden="true"
              ></span
              ></a>
              <input type="checkbox" id="drop-2" />
              <ul>
                <li><a href="nike.html">NIKE</a></li>
                <li><a href="adidas.html">ADIDAS</a></li>
                <li><a href="vans.html">VANS</a></li>
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
<!--      <div class="banner-info">-->
<!--        <h4 class="tagret">MỤC TIÊU HÀNG ĐẦU</h4>-->
<!--        <h3 class="mb-4">Sneaker Chính Hãng</h3>-->
<!--        <div class="ban-buttons">-->
<!--          <a href="product.jsp" class="btn">Mua Sắm Ngay</a>-->
<!--        </div>-->
<!--        <div class="seachForm">-->
<!--          <input class="inputSearch" type="text" placeholder="Tìm kiếm" />-->
<!--          <button class="btnSearch">-->
<!--            <i class="fa fa-search" aria-hidden="true"></i>-->
<!--          </button>-->
<!--        </div>-->
<!--      </div>-->
      <!--// banner-inner -->
    </div>
    <!--//main-content-->
    <!---->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="../index.jsp">THANH TOÁN</a>
      </li>
      <li class="breadcrumb-item"><a href="../product.jsp">SẢN PHẨM</a></li>
      <li class="breadcrumb-item">
        <a href="product-single.jsp">CHI TIẾT SẢN PHẨM</a>
      </li>
      <li class="breadcrumb-item"><a href="cart.jsp">GIỎ HÀNG</a></li>
      <li class="breadcrumb-item active">THANH TOÁN</li>
    </ol>
    <section class="ab-info-main py-5">
      <div class="container total">
        <div class="contendInfo">
          <form class="formInformCus">
            <h4 class="titleInfo">THÔNG TIN KHÁCH HÀNG</h4>
            <div class="info contend_name">
              <div class="name_div">
                <label class="lbl lblname"
                  >Tên<small style="color: red">*</small> </label
                ><br />
                <input class="input_name" type="text" placeholder="Nhập Tên" />
              </div>
              <div class="info firstName_div">
                <label class="lbl lblfirst">
                  Họ <small style="color: red">*</small> </label
                ><br />
                <input class="input_name" type="text" placeholder="Nhập Họ" />
              </div>
            </div>
            <div class="info">
              <label class="lbl lbladdress"
                >Địa Chỉ<small style="color: red">*</small> </label
              ><br />
              <input
                class="input_Address"
                type="text"
                placeholder="Nhập địa chỉ"
              />
            </div>
            <div class="info">
              <label class="lbl lblprovince"
                >Tỉnh/Thành Phố<small style="color: red">*</small> </label
              ><br />
              <input
                class="input_province"
                type="text"
                placeholder="Nhập nơi bạn sống"
              />
            </div>
            <div class="info">
              <label class="lbl lblPhone"
                >Số Điện Thoại<small style="color: red">*</small> </label
              ><br />
              <input
                class="input_province"
                type="number"
                placeholder="NHập Số Điện Thoại"
              />
            </div>
            <div class="info">
              <label class="lbl lblEmail"
                >Email<small style="color: red">*</small> </label
              ><br />
              <input
                class="input_province"
                type="email"
                placeholder="nhập email"
              />
            </div>
            <div class="info">
              <label class="noteInfo"> Ghi Chú Đơn Hàng</label><br />
              <textarea
                name="note"
                id="bottom-text"
                cols="30"
                rows="5"
                placeholder="Ghi chú đơn hàng"
              ></textarea>
            </div>
          </form>
        </div>
        <div class="contendOrder">
          <h3 class="titleOrder">ĐƠN HÀNG CỦA BẠN</h3>
          <table class="tableOrder">
            <tr>
              <th>Sản Phẩm</th>
              <th>Tạm Tính</th>
            </tr>
            <tbody>
              <tr>
                <td>Air Jordan1</td>
                <td>200000đ</td>
              </tr>
              <tr>
                <td>Ultraboost</td>
                <td>280000đ</td>
              </tr>
              <tr>
                <td>Phí Giao Hàng</td>
                <td>40000đ</td>
              </tr>
            </tbody>
            <tfoot>
              <td>Tổng Cộng</td>
              <td>240000đ</td>
            </tfoot>
          </table>
          <div class="payments">
            <input type="checkbox" id="radio1" class="paycard" /> Trả bằng
            chuyển khoản
            <p class="usePayCart">
              Trả bằng chuyển khoản thông qua tài khoản đã cho của chủ shop và
              lấy mã sản phẩm note lại đơn hàng
            </p>
            <input type="checkbox" id="radio2" class="payShip" /> Trả bằng tiền
            mặt
            <p class="usePayShip">
              Trả bằng tiền mặt khi nhận hàng thông qua đường bưu điện hoặc giao
              hàng nhanh
            </p>
          </div>
          <button class="orderProduct">Đặt Hàng</button>
        </div>
      </div>
    </section>
    <div class="footer-container">
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
                        <a href="nike.html">Nike</a>
                      </li>
                      <li>
                        <a href="adidas.html">Adidas</a>
                      </li>
                      <li>
                        <a href="vans.html">VANS</a>
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
    <!-- //footer -->
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
            <input type="checkbox" checked="checked" name="remember" /> Lưu mật
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
    <script src="./script/main.js"></script>
  </body>
</html>
