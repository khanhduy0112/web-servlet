<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html >
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Doanh mục</title>
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./style/main.css" />
    <link rel="stylesheet" href="./style/category.css" />
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
                <h4 class="active">Sản Phẩm</h4>
              </div>
              <div class="sub_menu">
                <a href="products.jsp">Tất Cả</a>
                <a href="product-new.jsp">Thêm Sản Phẩm</a>
                <a href="category.jsp" class="active">Doanh Mục</a>
              </div>
            </div>
            <div class="menu">
              <div class="menu_title">
                <img src="./images/profile.svg" class="img-icon" alt="" />
                <h4>Người Dùng</h4>
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
        <div class="right">
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
                  <a href="user-setting.jsp"
                    ><img src="./images/settings.svg" alt="" />Cài đặt</a
                  >
                  <a href="login.jsp"
                    ><img src="./images/logout.svg" alt="" /> Đăng xuất
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- end of right topbar -->
          <div class="right_content">
            <div class="table_wrapper">
              <div class="caption">
                <div>
                  <h4>Doanh Mục Sản Phẩm</h4>
                </div>
                <div>
                  <input
                    placeholder="Nhập tên doanh mục sản phẩm cần tìm"
                    class="find_item"
                    id="find_item"
                    type="text"
                  />
                </div>
              </div>
              <div class="table_wrapper">
                <table>
                  <thead>
                    <tr>
                      <th>STT</th>
                      <th>Tên</th>
                      <th>Ngày Tạo</th>
                      <th>Số sản phẩm sử dụng</th>
                      <th colspan="3">Tác Vụ</th>
                    </tr>
                  </thead>
                  <tbody id="table">
                    <tr>
                      <td>1</td>
                      <td>Jordan</td>
                      <td>2/2/2020</td>
                      <td>12</td>
                      <td class="button_action-container">
                        <button class="btn_action btn_delete">Xóa</button>
                        <button
                          class="btn_action btn_quick-edit btn_edit-category"
                        >
                          Chỉnh Sửa
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Adidas</td>
                      <td>22/12/1200</td>
                      <td>7</td>
                      <td class="button_action-container">
                        <button class="btn_action btn_delete">Xóa</button>
                        <button
                          class="btn_action btn_quick-edit btn_edit-category"
                        >
                          Chỉnh Sửa
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Nike</td>
                      <td>1/1/2020</td>
                      <td>3</td>
                      <td class="button_action-container">
                        <button class="btn_action btn_delete">Xóa</button>
                        <button
                          class="btn_action btn_quick-edit btn_edit-category"
                        >
                          Chỉnh Sửa
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>4</td>
                      <td>Vans</td>
                      <td>1/1/2020</td>
                      <td>3</td>
                      <td class="button_action-container">
                        <button class="btn_action btn_delete">Xóa</button>
                        <button
                          class="btn_action btn_quick-edit btn_edit-category"
                        >
                          Chỉnh Sửa
                        </button>
                      </td>
                    </tr>
                    <tr>
                      <td>5</td>
                      <td>New Balance</td>
                      <td>1/1/2020</td>
                      <td>1</td>
                      <td class="button_action-container">
                        <button class="btn_action btn_delete">Xóa</button>
                        <button
                          class="btn_action btn_quick-edit btn_edit-category"
                        >
                          Chỉnh Sửa
                        </button>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <!--  -->
              </div>
            </div>
            <div style="width: 90%; margin: auto; margin-top: 1rem">
              <button class="btn_add-category">Thêm mới</button>
            </div>
          </div>
        </div>
      </div>
      <!-- ===***END OF RIGHT***=== -->
    </div>
    <div class="new_category">
      <div>
        <h5>Thêm doanh mục</h5>
        <img src="./images/close.svg" id="close_new-category" />
      </div>
      <input
        required
        type="text"
        class="category_name"
        placeholder="Nhập tên doanh mục mới"
      />
      <button>Save</button>
    </div>
    <div class="edit_category">
      <div>
        <h5>Chỉnh sửa tên doanh mục</h5>
        <img src="./images/close.svg" id="close_edit-category" />
      </div>
      <input
        required
        type="text"
        class="category_name"
        placeholder="Nhập tên doanh mục mới"
      />
      <button>Save</button>
    </div>
  </body>
  <script src="./js/category.js"></script>
  <script src="./js/main.js"></script>
</html>
