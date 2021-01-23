<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Tất cả sản phẩm</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/images/webpage.svg" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/style/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/js/zoom/css/zoom.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/style/products.css" />
    <script src="//cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>

    <link rel="stylesheet" href="//cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
    <script>
      $(document).ready( function () {
        $('#myTable').DataTable();
      } );
    </script>

  </head>
  <body>
    <div class="body_container">
      <!-- ===***LEFT***=== -->
      <jsp:include page="./sidebar.jsp"/>

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
                  src="./images//wallpaperflare.com_wallpaper (1).jpg"
                  alt=""
                />
                <div class="current_user-sub-menu">
                  <a href=""
                    ><img src="./images/settings.svg" alt="" />Cài Đặt</a
                  >
                  <a href="login.jsp"
                    ><img src="./images/logout.svg" alt="" /> Đăng Xuất
                  </a>
                  <a href="../index.jsp"> THOÁT </a>
                </div>
              </div>
            </div>
          </div>
          <!-- end of right topbar -->
          <div class="right_content">
            <div class="view_option">
              <div class="option_details">
                <div>
                  <input checked class="cb_no" type="checkbox" name="" />
                  <label>STT</label>
                </div>
                <div>
                  <input checked class="cb_id" type="checkbox" name="" />
                  <label>ID</label>
                </div>
                <div>
                  <input checked class="cb_img" type="checkbox" />
                  <label>Ảnh</label>
                </div>
                <div>
                  <input checked class="cb_name" type="checkbox" name="" />
                  <label>Tên</label>
                </div>
                <div>
                  <input checked class="cb_price" type="checkbox" name="" />
                  <label>Giá</label>
                </div>
                <div>
                  <input checked class="cb_sales" type="checkbox" name="" />
                  <label>Khuyến mại</label>
                </div>
                <div>
                  <input checked class="cb_category" type="checkbox" name="" />
                  <label>Doanh Mục</label>
                </div>
                <div>
                  <input checked class="cb_stock" type="checkbox" name="" />
                  <label>Số lượng</label>
                </div>
                <div>
                  <input checked class="cb_size" type="checkbox" name="" />
                  <label>Kích cõ</label>
                </div>
                <div>
                  <input
                    checked
                    class="cb_date-created"
                    type="checkbox"
                    name=""
                  />
                  <label>Ngày tạo</label>
                </div>
                <div>
                  <input checked class="cb_action" type="checkbox" name="" />
                  <label>Thao tác</label>
                </div>
              </div>
              <button class="show_setting">Tùy chọn hiển thị</button>
            </div>
            <div class="edit_wrapper">
              <div class="edit_product-container">
                <h3
                  style="margin: 1rem 0; text-align: center"
                  id="#edit_product-title"
                >
                  Sửa Nhanh
                </h3>
                <form>
                  <div style="margin: 0.5rem 0">
                    <label
                      for="ed_product-name"
                      style="font-weight: bold; font-size: 0.75rem"
                      >Tên
                    </label>
                    <br />
                    <input
                      type="text"
                      id="ed_product-name"
                      class="ed_product-name"
                      style="width: 50%"
                    />
                  </div>
                  <div>
                    <label
                      style="font-weight: bold; font-size: 0.75rem"
                      for="ed_product-price"
                      >Gia</label
                    >
                    <br />
                    <input
                      style="width: 50%"
                      type="number"
                      id="ed_product-price"
                    />
                  </div>
                  <div style="margin: 0.5rem 0; display: flex">
                    <input type="file" id="product_img" />
                    <img
                      style="height: 100px"
                      src=""
                      alt="review"
                      id="review_product-img"
                    />
                  </div>
                  <div style="margin: 0.5rem 0">
                    <label style="font-weight: bold; font-size: 0.75rem"
                      >Doanh Mục</label
                    >
                    <select name="" id="">
                      <option value="jordan">Jordan</option>
                      <option value="jordan">Adidas</option>
                      <option value="jordan">NB</option>
                      <option value="jordan">Vans</option>
                    </select>
                  </div>
                  <div style="display: flex; justify-content: space-around">
                    <div style="margin: 0.5rem 0">
                      <label style="font-weight: bold; font-size: 0.75rem"
                        >Size 40</label
                      >
                      <br />
                      <div style="display: inline-block; padding: 0.5rem 0">
                        <button class="custom_btn">+</button>
                        <span>12</span>
                        <button class="custom_btn">-</button>
                      </div>
                    </div>
                    <div style="margin: 0.5rem 0">
                      <label style="font-weight: bold; font-size: 0.75rem"
                        >Size 40</label
                      >
                      <br />
                      <div style="display: inline-block; padding: 0.5rem 0">
                        <button class="custom_btn">+</button>
                        <span>12</span>
                        <button class="custom_btn">-</button>
                      </div>
                    </div>
                    <div style="margin: 0.5rem 0">
                      <label style="font-weight: bold; font-size: 0.75rem"
                        >Size 40</label
                      >
                      <br />
                      <div style="display: inline-block; padding: 0.5rem 0">
                        <button class="custom_btn">+</button>
                        <span>12</span>
                        <button class="custom_btn">-</button>
                      </div>
                    </div>
                  </div>
                  <div>
                    <button class="btn_action btn_save-change">
                      Save Change
                    </button>
                    <button class="btn_action btn_cancel-change">Cancel</button>
                  </div>
                </form>
                <!-- form -->
              </div>
            </div>
            <div class="caption">
              <div>
                <h4>Tất Cả Sản Phẩm</h4>
              </div>
              <div>
                <input
                  placeholder="Tìm kiếm sản phẩm"
                  class="find_item"
                  id="find_item"
                  type="text"
                />
              </div>
            </div>
            <div class="table_wrapper">

              <div class="action_bar mb-1">
                <div class="select">
                  <select name="action">
                    <option value="recyle">Chuyển vào thùng rác</option>
                    <option value="processing">Chỉnh sửa chi tiết</option>
                    <option value="complete">Gỡ khỏi trang</option>
                  </select>
                  <button class="btn_apply">Thực Hiện</button>
                </div>
                <div class="select">
                    <h6><%=request.getAttribute("notify") != null ? request.getAttribute("notify"): ""%></h6>
                </div>
                <div class="select-search__field">
                  <select name="action">
                    <option value="day">Trong Ngày</option>
                    <option value="month">Tháng</option>
                    <option value="year">Năm</option>
                  </select>
                  <button class="btn_apply">Thực Hiện</button>
                </div>
              </div>
              <table id="product_table">
                <thead>
                  <tr>
                    <th><input type="checkbox" name="" id="sellect_all" /></th>
                    <th class="th_no">STT</th>
                    <th class="th_id">ID</th>
                    <th class="th_img">
                      <img
                        data-action="zoom"
                        src="./images/image-gallery.svg"
                        style="width: 1.25rem"
                        alt=""
                      />
                    </th>
                    <th class="th_name">Tên</th>
                    <th class="th_price">Giá</th>
                    <th class="th_sales">Giảm Giá</th>
                    <th class="th_category">Doanh Mục</th>
                    <th class="th_stock">Số Lượng</th>
                    <th class="th_size">Kích Cỡ</th>
                    <th class="th_date-created">Ngày Tạo</th>
                    <th colspan="3" class="th_action">Thao Tác</th>
                  </tr>
                </thead>
                <tbody id="table">
                  <tr>
                    <td>
                      <input
                        type="checkbox"
                        name=""
                        class="cb_item cb_product"
                      />
                    </td>
                    <td class="product_no td_no">0</td>
                    <td class="product_id td_id">#32424242424234</td>
                    <td class="td_img">
                      <img
                        data-action="zoom"
                        src="./images/img01.jpg"
                        class="img-small product_img"
                        alt=""
                      />
                    </td>
                    <td class="product_name td_name">Jordan1 Mid Chicago</td>
                    <td class="product_price td_price">1000$</td>
                    <td class="product_discount td_sales">10%</td>
                    <td class="product_category td_category">Jordan</td>
                    <td class="product_stock td_sock">12</td>
                    <td class="product_size td_size">
                      <span>42</span>
                      <span>40</span>
                      <span>39</span>
                    </td>
                    <td class="product_dcreate td_date-created">22/12/1200</td>
                    <td class="button_action-container td_action">
                      <button class="btn_action btn_delete">Xóa</button>
                      <button class="btn_action btn_quick-edit">
                        Sửa Nhanh
                      </button>
                      <button class="btn_action btn_publish">Đăng</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input
                        type="checkbox"
                        name=""
                        class="cb_item cb_product"
                      />
                    </td>
                    <td class="product_no td_no">0</td>
                    <td class="product_id td_id">#32424242424234</td>
                    <td class="td_img">
                      <img
                        data-action="zoom"
                        src="./images/img01.jpg"
                        class="img-small product_img"
                        alt=""
                      />
                    </td>
                    <td class="product_name td_name">Jordan1 Mid Chicago</td>
                    <td class="product_price td_price">1000$</td>
                    <td class="product_discount td_sales">10%</td>
                    <td class="product_category td_category">Jordan</td>
                    <td class="product_stock td_sock">12</td>
                    <td class="product_size td_size">
                      <span>42</span>
                      <span>40</span>
                      <span>39</span>
                    </td>
                    <td class="product_dcreate td_date-created">22/12/1200</td>
                    <td class="button_action-container td_action">
                      <button class="btn_action btn_delete">Xóa</button>
                      <button class="btn_action btn_quick-edit">
                        Sửa Nhanh
                      </button>
                      <button class="btn_action btn_publish">Đăng</button>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input
                        type="checkbox"
                        name=""
                        class="cb_item cb_product"
                      />
                    </td>
                    <td class="product_no td_no">0</td>
                    <td class="product_id td_id">#32424242424234</td>
                    <td class="td_img">
                      <img
                        data-action="zoom"
                        src="./images/img01.jpg"
                        class="img-small product_img"
                        alt=""
                      />
                    </td>
                    <td class="product_name td_name">Jordan1 Mid Chicago</td>
                    <td class="product_price td_price">1000$</td>
                    <td class="product_discount td_sales">10%</td>
                    <td class="product_category td_category">Jordan</td>
                    <td class="product_stock td_sock">12</td>
                    <td class="product_size td_size">
                      <span>42</span>
                      <span>40</span>
                      <span>39</span>
                    </td>
                    <td class="product_dcreate td_date-created">22/12/1200</td>
                    <td class="button_action-container td_action">
                      <button class="btn_action btn_delete">Xóa</button>
                      <button class="btn_action btn_quick-edit">
                        Sửa Nhanh
                      </button>
                      <button class="btn_action btn_publish">Đăng</button>
                    </td>
                  </tr>
                </tbody>
              </table>
              <div class="action_bar mt-1">
                <div class="select">
                  <select name="action">
                    <option value="recyle">Chuyển vào thùng rác</option>
                    <option value="processing">Chỉnh sửa chi tiết</option>
                    <option value="complete">Gỡ khỏi trang</option>
                  </select>
                  <button class="btn_apply">Thực Hiện</button>
                </div>
                <div class="select-search__field">
                  <select name="action">
                    <option value="day">Trong Ngày</option>
                    <option value="month">Tháng</option>
                    <option value="year">Năm</option>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/main.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/zoom/dist/zoom.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/products.js"></script>

</html>
