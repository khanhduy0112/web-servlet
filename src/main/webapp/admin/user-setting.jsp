<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cài đặt</title>
    <link rel="stylesheet" href="./style/main.css" />
    <link rel="stylesheet" href="./style/user-setting.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
  </head>
  <body>
    <div class="body_container">
      <!-- ===***LEFT***=== -->
      <div class="left_wrapper">
        <div class="left">
          <div class="dashboard_title">
            <img src="./images/webpage.svg" class="img-icon" alt="" />
            <h2><a href="dashboard.jsp">DASH BOARD</a></h2>
            <img
              src="./images/close.svg"
              id="close-btn"
              alt=""
              class="img-icon"
            />
          </div>
          <div class="left_menu">
            <div class="menu">
              <div class="menu_title">
                <img src="./images/received.svg" class="img-icon" alt="" />
                <h4>Sản Phẩm</h4>
              </div>
              <div class="sub_menu">
                <a href="products.jsp">Tất Cả</a>
                <a href="product-new.jsp">Thêm Sản Phẩm</a>
                <a href="category.jsp">Doanh Mục</a>
              </div>
            </div>
            <div class="menu">
              <div class="menu_title">
                <img src="./images/profile.svg" class="img-icon" alt="" />
                <h4 class="active">Người Dùng</h4>
              </div>
              <div class="sub_menu">
                <a href="users.jsp">Quản Trị</a>
                <a href="user-new.jsp">Thêm Người Dùng</a>
                <a href="user-setting.jsp">Cài Đặt</a>
                <a href="customers.jsp">Khách Hàng</a>
              </div>
            </div>
            <div class="menu">
              <div class="menu_title">
                <img src="./images/box.svg" class="img-icon" alt="" />
                <h4>Đơn Hàng</h4>
              </div>
              <div class="sub_menu">
                <a href="order.jsp">Tất Cả Đơn Hàng</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ===***END OF LEFT***=== -->

      <!-- ===***RIGHT***=== -->
      <div class="right_wrapper">
        <div class="topbar">
          <div class="topbar_content">
            <div class="logo">
              <img
                src="./images/bars-solid.svg"
                alt=""
                class="img-icon"
                id="left_menu-toggle"
              />
              <h3>SKED</h3>
            </div>
            <div class="current_user">
              <h5 class="current_user-name">Duy Nguyen</h5>
              <img
                class="img-small"
                src="./images/wallpaperflare.com_wallpaper (1).jpg"
                alt=""
              />
              <div class="current_user-sub-menu">
                <a href=""><img src="./images/settings.svg" alt="" />Cài đặt</a>
                <a href="login.jsp"
                  ><img src="./images/logout.svg" alt="" /> Đăng xuất
                </a>
                <a href="../main/index.html"> THOÁT </a>
              </div>
            </div>
          </div>
        </div>
        <div class="right_content">
          <nav class="col-2">
            <div class="menu_heading">khanhduy011</div>
            <div class="menu">
              <a id="a-profile" href="">Hồ Sơ</a>
              <a href="" id="a-account-security">Bảo Mật</a>
              <a href="" id="a-account-address">Địa Chỉ</a>
              <a href="" id="a-account">Tài Khoản</a>
            </div>
          </nav>
          <div class="col-10">
            <!--  -->
            <div id="profile" class="setting_content profile">
              <div class="col-7">
                <h2>Hồ sơ công khai</h2>
                <div>
                  <label for="name">Tên</label><br />
                  <input type="text" class="name" id="name" />
                </div>
                <div>
                  <label for="email">Email</label><br />
                  <input type="email" class="email" id="email" />
                </div>
                <div>
                  <label for="phone">Số điện thoại</label>
                  <input type="text" name="phone" id="" />
                </div>
                <div>
                  <label for="address">Địa chỉ</label>
                  <input type="text" name="address" id="" />
                </div>
                <div>
                  <select name="role" id="role">
                    <option value="">Quyền hạn</option>
                    <option value="admin">Admin</option>
                    <option value="manage">Quản lí</option>
                    <option value="stasff">Nhân viên</option>
                  </select>
                </div>
                <div>
                  <button>Cập Nhật</button>
                </div>
              </div>
              <div style="position: relative" class="col-3">
                <div>Ảnh</div>
                <div>
                  <img
                    style="border-radius: 50%"
                    src="./images/wallpaperflare.com_wallpaper (1).jpg"
                    alt=""
                  />
                  <div
                    class="edit_img"
                    style="
                      background-color: white;
                      border: 1px solid rebeccapurple;
                      position: absolute;
                      top: 35%;
                      left: 0;
                      cursor: pointer;
                      z-index: 999;
                    "
                  >
                    <img style="width: 1rem" src="./images/edit.svg" alt="" />
                    <span>Edit</span>
                    <div class="drop_down">
                      <input type="file" name="" id="" />
                      <div style="color: red">Xóa</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div id="account" class="setting_content account">
              <div class="col-7">
                <h2 style="color: red; margin-top: 1rem">Xóa Tài Khoản</h2>
                <hr style="margin: 1rem 0" />
                <small>
                  Tài khoản sẽ bị xóa vĩnh viễn và không thể khôi phục
                </small>
                <br />
                <button
                  style="
                    font-weight: 500;
                    padding: 0.5rem 1.25rem;
                    background-color: red;
                    color: white;
                    margin: 1rem 0;
                  "
                >
                  Xác Nhận
                </button>
              </div>
              <div class="col-3"></div>
            </div>

            <div id="address" class="setting_content address">
              <div class="col-7">
                <h2 style="color: #343a40; margin-top: 1rem">
                  Thay đổi địa chỉ
                </h2>
                <hr style="margin: 1rem 0" />
                <div>
                  <label for="country">Thành phố</label>
                  <input type="text" name="coutry" id="country" />
                </div>
                <div>
                  <label for="address-details">Địa chỉ</label>
                  <input type="text" />
                </div>
                <div>
                  <label for="postcode">Mã bưu điện</label>
                  <input type="number" />
                </div>
                <button
                  style="
                    font-weight: 500;
                    color: #343a40;
                    padding: 0.5rem 1.25rem;
                  "
                >
                  Lưu thay đổi
                </button>
              </div>
              <div class="col-3"></div>
            </div>

            <div id="security" class="setting_content security">
              <div class="col-7">
                <h2 style="color: #343a40; margin-top: 1rem">
                  Thay đổi mật khẩu
                </h2>
                <hr style="margin: 1rem 0" />
                <div>
                  <label for="old-password">Mật khẩu cũ</label>
                  <input type="password" id="old-password" />
                </div>
                <div>
                  <label for="new-password">Mật khẩu mới</label>
                  <input type="password" id="new-password" />
                </div>
                <div>
                  <label for="confirm-new-password">Nhập lại</label>
                  <input type="password" id="confirm-new-password" />
                </div>
                <button
                  style="
                    font-weight: 500;
                    color: #343a40;
                    padding: 0.5rem 1.25rem;
                    background-color: green !important;
                  "
                >
                  Cập Nhật
                </button>
              </div>
              <div class="col-3"></div>
            </div>
            <!--  -->
          </div>
        </div>
      </div>
      <!-- ===***END OF RIGHT***=== -->
    </div>
  </body>
  <script>
    const aProfile = document.getElementById("a-profile");
    const aAccount = document.getElementById("a-account");
    const aSecurity = document.getElementById("a-account-security");
    const aAddress = document.getElementById("a-account-address");
    const profile = document.getElementById("profile");
    const account = document.getElementById("account");
    const security = document.getElementById("security");
    const address = document.getElementById("address");

    aAccount.addEventListener("click", (e) => {
      e.preventDefault();
      profile.style.display = "none";
      security.style.display = "none";
      account.style.display = "block";
      address.style.display = "none";
    });
    aProfile.addEventListener("click", (e) => {
      e.preventDefault();
      account.style.display = "none";
      security.style.display = "none";
      profile.style.display = "flex";
      address.style.display = "none";
    });
    aSecurity.addEventListener("click", (e) => {
      e.preventDefault();
      profile.style.display = "none";
      account.style.display = "none";
      address.style.display = "none";
      security.style.display = "block";
    });
    aAddress.addEventListener("click", (e) => {
      e.preventDefault();
      profile.style.display = "none";
      account.style.display = "none";
      security.style.display = "none";
      address.style.display = "block";
    });
  </script>
  <script src="./js/main.js"></script>
</html>
