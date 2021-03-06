<%@ page import="com.nlu.model.User" %>

<%
    User user = (User) session.getAttribute("auth");
    if (user == null || !user.getRole().equals("admin")) {
        response.sendRedirect("/");
    }
%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Nhóm quản lí</title>
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon"/>
    <link rel="stylesheet" href="./style/order.css"/>
    <link rel="stylesheet" href="./style/main.css"/>
    <link rel="stylesheet" href="./style/user.css"/>
    <link rel="stylesheet" href="./js/zoom/css/zoom.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div class="body_container">
    <!-- ===***LEFT***=== -->
    <div class="left_wrapper">
        <div class="left">
            <div class="dashboard_title">
                <img src="./images/webpage.svg" class="img-icon" alt=""/>
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
                        <img src="./images/received.svg" class="img-icon" alt=""/>
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
                        <img src="./images/profile.svg" class="img-icon" alt=""/>
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
                        <img src="./images/box.svg" class="img-icon" alt=""/>
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
                            <a href=""
                            ><img src="./images/settings.svg" alt=""/>Cài Đặt</a
                            >
                            <a href="login.jsp"
                            ><img src="./images/logout.svg" alt=""/> Đăng Xuất
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
                            <input checked class="cb_no" type="checkbox" name=""/>
                            <label>STT</label>
                        </div>
                        <div>
                            <input checked class="cb_img" type="checkbox" name=""/>
                            <label>Ảnh</label>
                        </div>
                        <div>
                            <input checked class="cb_name" type="checkbox"/>
                            <label>Tên</label>
                        </div>
                        <div>
                            <input checked class="cb_usergroup" type="checkbox" name=""/>
                            <label>Nhóm Người Dùng</label>
                        </div>
                        <div>
                            <input checked class="cb_email" type="checkbox" name=""/>
                            <label>Email</label>
                        </div>
                        <div>
                            <input
                                    checked
                                    class="cb_date-created"
                                    type="checkbox"
                                    name=""
                            />
                            <label>Ngày Tạo</label>
                        </div>
                        <div>
                            <input checked class="cb_action" type="checkbox" name=""/>
                            <label>Thao Tác</label>
                        </div>
                        <div>
                            <input
                                    checked
                                    class="cb_user-status"
                                    type="checkbox"
                                    name=""
                            />
                            <label>Trạng Thái</label>
                        </div>
                    </div>
                    <button class="show_setting">Tùy Chọn Hiển Thị</button>
                </div>
                <!--  -->

                <!--  -->
                <div class="caption">
                    <div>
                        <h4>Tất Cả Người Dùng</h4>
                    </div>
                    <div>
                        <input
                                placeholder="Nhập thông tin user cần tìm"
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
                                <option value="">Tác Vụ</option>
                                <option value="recyle">Xóa</option>
                                <option value="active">Kích hoạt</option>
                                <option value="inactive">Hủy kích hoạt</option>
                            </select>
                            <button class="btn_apply">Thực Hiện</button>
                        </div>
                        <div class="select-search__field">
                            <select name="action">
                                <option value="Lọc">Lọc</option>
                                <option value="day">Ngày</option>
                                <option value="month">Tháng</option>
                                <option value="year">Năm</option>
                            </select>
                            <button class="btn_apply">Thực Hiện</button>
                        </div>
                    </div>
                    <table>
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="" id="sellect_all"/></th>
                            <th class="th_no">STT</th>
                            <th class="th_img">
                                <img
                                        data-action="zoom"
                                        src="./images/image-gallery.svg"
                                        style="width: 1.25rem"
                                        alt=""
                                />
                            </th>
                            <th class="th_name">Tên</th>
                            <th class="th_usergroup">Nhóm Người Dùng</th>
                            <th class="th_email">Email</th>
                            <th class="th_date-created">Ngày Tạo</th>
                            <th class="th_user-status">Trạng Thái</th>
                            <th colspan="3" class="th_action">Thao Tác</th>
                        </tr>
                        </thead>
                        <tbody id="table">
                        <tr>
                            <td><input type="checkbox" class="cb_item"/></td>
                            <td class="td_no">1</td>
                            <td class="td_img">
                                <img
                                        data-action="zoom"
                                        src="./images/img01.jpg"
                                        class="img-small"
                                        alt=""
                                />
                            </td>
                            <td class="td_name">duy nguyen</td>
                            <td class="td_usergroup">Admin</td>
                            <td class="td_email">nguyenkhanhduy21123@gmail.com</td>
                            <td class="td_date-created">22/12/1200</td>
                            <td class="td_user-status">Hoạt động</td>
                            <td class="button_action-container td_action">
                                <button class="btn_action btn_quick-edit">
                                    <a href="user-setting.jsp">Cài Đặt</a>
                                </button>
                                <button class="btn_action btn_user-delete">
                                    <a href="">Xóa</a>
                                </button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="action_bar mt-1">
                        <div class="select">
                            <select name="action">
                                <option value="recyle">Tác Vụ</option>
                                <option value="recyle">Xóa</option>
                                <option value="active">Kích hoạt</option>
                                <option value="inactive">Hủy kích hoạt</option>
                            </select>
                            <button class="btn_apply">Thực Hiện</button>
                        </div>
                        <div class="select-search__field">
                            <select name="action">
                                <option value="">Lọc</option>
                                <option value="day">Ngày</option>
                                <option value="month">Tháng</option>
                                <option value="year">Năm</option>
                            </select>
                            <button class="btn_apply">Thực Hiện</button>
                        </div>
                    </div>
                    <!--  -->
                </div>
                <!--  -->
            </div>
        </div>
    </div>
    <!-- ===***END OF RIGHT***=== -->
</div>
<script src="./js/main.js"></script>
<script src="./js/user.js"></script>
<script src="./js/zoom/dist/zoom.min.js"></script>
<script>
    $("#sellect_all").on("click", (e) => {
        const checkboxs = document.querySelectorAll(".cb_item");
        for (let i = 0; i < checkboxs.length; i++) {
            checkboxs[i].checked = e.target.checked;
        }
    });

    $(".cb_no").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_no").addClass("hidden");
            $(".td_no").addClass("hidden");
        } else {
            $(".th_no").removeClass("hidden");
            $(".td_no").removeClass("hidden");
        }
    });
    $(".cb_img").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_img").addClass("hidden");
            $(".td_img").addClass("hidden");
        } else {
            $(".th_img").removeClass("hidden");
            $(".td_img").removeClass("hidden");
        }
    });
    $(".cb_name").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_name").addClass("hidden");
            $(".td_name").addClass("hidden");
        } else {
            $(".th_name").removeClass("hidden");
            $(".td_name").removeClass("hidden");
        }
    });
    $(".cb_usergroup").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_usergroup").addClass("hidden");
            $(".td_usergroup").addClass("hidden");
        } else {
            $(".th_usergroup").removeClass("hidden");
            $(".td_usergroup").removeClass("hidden");
        }
    });
    $(".cb_email").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_email").addClass("hidden");
            $(".td_email").addClass("hidden");
        } else {
            $(".th_email").removeClass("hidden");
            $(".td_email").removeClass("hidden");
        }
    });
    $(".cb_date-created").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_date-created").addClass("hidden");
            $(".td_date-created").addClass("hidden");
        } else {
            $(".th_date-created").removeClass("hidden");
            $(".td_date-created").removeClass("hidden");
        }
    });
    $(".cb_action").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_action").addClass("hidden");
            $(".td_action").addClass("hidden");
        } else {
            $(".th_action").removeClass("hidden");
            $(".td_action").removeClass("hidden");
        }
    });
    $(".cb_user-status").on("click", (e) => {
        if (!e.target.checked) {
            $(".th_user-status").addClass("hidden");
            $(".td_user-status").addClass("hidden");
        } else {
            $(".th_user-status").removeClass("hidden");
            $(".td_user-status").removeClass("hidden");
        }
    });
</script>
</body>
</html>
