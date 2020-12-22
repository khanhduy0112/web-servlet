<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tất cả đơn hàng</title>
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon" />
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./style/main.css" />
    <link rel="stylesheet" href="./style/order.css" />
    <link rel="stylesheet" href="./js/zoom/css/zoom.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
      td a {
        color: #2b80ff;
        font-weight: 600;
      }
    </style>
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
                <h4 class="active">Đơn Hàng</h4>
              </div>
              <div class="sub_menu">
                <a href="order.jsp" class="active">Tất Cả Đơn Hàng</a>
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
                  <a href=""
                    ><img src="./images/settings.svg" alt="" />Cài đặt</a
                  >
                  <a href="login.jsp"
                    ><img src="./images/logout.svg" alt="" /> Đăng xuất
                  </a>
                  <a href="../main/index.html"> THOÁT </a>
                </div>
              </div>
            </div>
          </div>
          <!-- end of right topbar -->
          <div class="right_content">
            <div class="view_option">
              <div class="option_details">
                <div>
                  <input checked class="cb_order" type="checkbox" name="" />
                  <label> Tên đơn hàng</label>
                </div>
                <div>
                  <input checked class="cb_date" type="checkbox" name="" />
                  <label>Thời gian</label>
                </div>
                <div>
                  <input checked class="cb_status" type="checkbox" />
                  <label>Trạng Thái</label>
                </div>
                <div>
                  <input checked class="cb_payment" type="checkbox" name="" />
                  <label>Thanh Toán</label>
                </div>
                <div>
                  <input checked class="cb_deliver" type="checkbox" name="" />
                  <label>Chuyển đến</label>
                </div>
                <div>
                  <input checked class="cb_total" type="checkbox" name="" />
                  <label>Tổng tiền</label>
                </div>
              </div>
              <button class="show_setting">Cài Đặt Hiển Thị</button>
            </div>
            <!--  -->
            <div class="caption">
              <div>
                <h4>Thông Tin Các Đơn Hàng</h4>
              </div>
              <div>
                <input
                  placeholder="Tìm kiếm order khách hàng"
                  class="find_item"
                  id="find_item"
                  type="text"
                />
              </div>
            </div>
            <!--  -->
            <div class="table_wrapper">
              <div class="action_bar mb-1">
                <div class="select">
                  <select name="action">
                    <option value="default">Tác Vụ</option>
                    <option value="recyle">Xóa</option>
                    <option value="processing">
                      Đổi trạng thái đang xử lí
                    </option>
                    <option value="complete">
                      Đổi trạng thái đã hoàn thành
                    </option>
                  </select>
                  <button class="btn_apply">Apply</button>
                </div>
                <div class="select-search__field">
                  <select name="action">
                    <option value="day">Trong ngày</option>
                    <option value="month">Trong tuần</option>
                    <option value="year">Trong năm</option>
                  </select>
                  <button class="btn_apply">Thực Hiện</button>
                </div>
              </div>
              <table>
                <thead>
                  <tr>
                    <th>
                      <input type="checkbox" name="" id="sellect_all" />
                    </th>
                    <th class="th_order">Đơn hàng</th>
                    <th class="th_date">Ngày đặt</th>
                    <th class="th_status">Trạng thái</th>
                    <th class="th_payment">Thanh toán</th>
                    <th class="td_deliver">Địa chỉ nhận</th>
                    <th class="th_total">Tổng tiền</th>
                  </tr>
                </thead>
                <tbody id="table">
                  <tr class="item">
                    <td><input type="checkbox" class="cb_item" /></td>
                    <td class="td_order">
                      <a href="order-details.jsp">#322 Nguyen Khanh Duy</a>
                    </td>
                    <td class="td_date">20/11/2020</td>
                    <td class="td_status"><span>Hoàn thành</span></td>
                    <td class="td_payment">COD</td>
                    <td class="td_deliver">Thu Duc,HCM</td>
                    <td class="td_total">1000$</td>
                  </tr>
                  <tr class="item">
                    <td><input class="cb_item" type="checkbox" /></td>
                    <td class="td_order">
                      <a href="order-details.jsp">#322 Nguyen Khanh Duy</a>
                    </td>
                    <td class="td_date">20/11/2020</td>
                    <td class="td_status"><span>Hoàn thành</span></td>
                    <td class="td_payment">COD</td>
                    <td class="td_deliver">Thu Duc,HCM</td>
                    <td class="td_total">1000$</td>
                  </tr>
                  <tr class="item">
                    <td><input class="cb_item" type="checkbox" /></td>
                    <td class="td_order">
                      <a href="order-details.jsp">#322 Nguyen Khanh Duy</a>
                    </td>
                    <td class="td_date">20/11/2020</td>
                    <td class="td_status"><span>Đang xử lí</span></td>
                    <td class="td_payment">COD</td>
                    <td class="td_deliver">Thu Duc,HCM</td>
                    <td class="td_total">1000$</td>
                  </tr>
                </tbody>
              </table>
              <div class="action_bar mt-1">
                <div class="select">
                  <select name="action">
                    <option value="default">Tác Vụ</option>
                    <option value="recyle">Xóa</option>
                    <option value="processing">
                      Đổi trạng thái đang xử lí
                    </option>
                    <option value="complete">
                      Đổi trạng thái đã hoàn thành
                    </option>
                  </select>
                  <button class="btn_apply">Apply</button>
                </div>
                <div class="select-search__field">
                  <select name="action">
                    <option value="day">Trong ngày</option>
                    <option value="month">Trong tuần</option>
                    <option value="year">Trong năm</option>
                  </select>
                  <button class="btn_apply">Thực Hiện</button>
                </div>
              </div>
              <!--  -->
            </div>
          </div>
        </div>
      </div>
      <!-- ===***END OF RIGHT***=== -->
    </div>
  </body>
  <script src="./js/order.js"></script>
  <script src="./js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
  <!-- <script>
    $("#sellect_all").on("click", (e) => {
      const checkboxs = document.querySelectorAll(".cb_item");
      for (let i = 0; i < checkboxs.length; i++) {
        checkboxs[i].checked = e.target.checked;
      }
    });

    const items = document.getElementsByClassName("item");
    for (let i = 0; i < items.length; i++) {
      let item = items[i];
      item.addEventListener("click", (e) => {
        window.location.href = "http://127.0.0.1:5500/order-details.html";
      });
    }
  </script> -->
</html>
