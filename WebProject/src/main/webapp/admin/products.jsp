<%@ page import="com.nlu.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page
        contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Tất cả sản phẩm</title>
    <link rel="shortcut icon" href="/admin/images/webpage.svg" type="image/x-icon"/>
    <link rel="stylesheet" href="/admin/style/main.css"/>
    <link rel="stylesheet" href="/admin/js/zoom/css/zoom.css"/>
    <link rel="stylesheet" href="/admin/style/products.css"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css"
    />
</head>

<body>
<%!
    User user;
%>
<%
    if (session.getAttribute("auth") != null) {
        user = (User) session.getAttribute("auth");
        if (!user.getRole().equals("admin")) {
            response.sendRedirect("/main/login.jsp");
        }
    } else {
        response.sendRedirect("/main/login.jsp");
    }
%>
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
                        <h4 class="active">Sản Phẩm</h4>
                    </div>
                    <div class="sub_menu">
                        <a href="./products.jsp" class="active">Tất Cả</a>
                        <a href="product-new.jsp">Thêm Sản Phẩm</a>
                        <a href="category.jsp">Doanh Mục</a>
                    </div>
                </div>
                <div class="menu">
                    <div class="menu_title">
                        <img src="./images/profile.svg" class="img-icon" alt=""/>
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
            <div class="right_content">
                <div class="view_option">
                    <div class="option_details">
                        <div>
                            <input checked class="cb_no" type="checkbox" name=""/>
                            <label>STT</label>
                        </div>
                        <div>
                            <input checked class="cb_id" type="checkbox" name=""/>
                            <label>ID</label>
                        </div>
                        <div>
                            <input checked class="cb_img" type="checkbox"/>
                            <label>Ảnh</label>
                        </div>
                        <div>
                            <input checked class="cb_name" type="checkbox" name=""/>
                            <label>Tên</label>
                        </div>
                        <div>
                            <input checked class="cb_price" type="checkbox" name=""/>
                            <label>Giá</label>
                        </div>
                        <div>
                            <input checked class="cb_sales" type="checkbox" name=""/>
                            <label>Khuyến mại</label>
                        </div>
                        <div>
                            <input checked class="cb_category" type="checkbox" name=""/>
                            <label>Doanh Mục</label>
                        </div>
                        <div>
                            <input checked class="cb_stock" type="checkbox" name=""/>
                            <label>Số lượng</label>
                        </div>
                        <div>
                            <input checked class="cb_size" type="checkbox" name=""/>
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
                            <input checked class="cb_action" type="checkbox" name=""/>
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
                                <br/>
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
                                <br/>
                                <input
                                        style="width: 50%"
                                        type="number"
                                        id="ed_product-price"
                                />
                            </div>
                            <div style="margin: 0.5rem 0; display: flex">
                                <input type="file" id="product_img"/>
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
                                    <br/>
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
                                    <br/>
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
                                    <br/>
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
                        <div class="select-search__field">
                            <select name="action">
                                <option value="day">Trong Ngày</option>
                                <option value="month">Tháng</option>
                                <option value="year">Năm</option>
                            </select>
                        </div>
                        <div class="select-search__field">
                            <select class="select_location">
                                <option value="">Doanh Mục</option>

                                <c:forEach items="${categories}" var="category">
                                    <option value="/admin/products?category=${category.name}&pages=1">
                                            ${category.name}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <table>
                        <thead>
                        <tr>
                            <th><input type="checkbox" name="" id="sellect_all"/></th>
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
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>
                                    <input
                                            type="checkbox"
                                            name=""
                                            class="cb_item cb_product"
                                    />
                                </td>
                                <td class="product_no td_no">${product.productId}</td>
                                <td class="td_img">
                                    <img
                                            data-action="zoom"
                                            src="${product.img}"
                                            class="img-small product_img"
                                            alt=""
                                    />
                                </td>
                                <td class="product_name td_name">${product.name}</td>
                                <td class="product_price td_price">${product.price}$</td>
                                <td class="product_discount td_sales">
                                        ${product.salesPercent}
                                </td>
                                <td class="product_category td_category">
                                        ${product.categoryId}
                                </td>
                                <td class="product_stock td_sock">12</td>
                                <td class="product_size td_size">
                                    <span>42</span>
                                    <span>40</span>
                                    <span>39</span>
                                </td>
                                <td class="product_dcreate td_date-created">
                                    22/12/1200
                                </td>
                                <td class="button_action-container td_action">
                                    <button class="btn_action btn_delete">Xóa</button>
                                    <button class="btn_action btn_quick-edit">
                                        Sửa Nhanh
                                    </button>
                                    <button class="btn_action btn_publish">Đăng</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <%-- panigation--%>
                    <c:if test="${pagesCount > 1}">
                        <div class="row justify-content-end m-3">
                            <nav
                                    align="center"
                                    style="text-align: center; height: 100px; margin: 0px">
                                <ul class="pagination">
                                    <li>
                                        <a
                                                <c:if test="${currentPage > 1}">
                                                    href="/admin/products?category=${currentCategory}&pages=${currentPage -1}"
                                                </c:if>
                                                style="padding: 8px 10px;background: #2d2f35;border: 1px solid whitesmoke;color: #f2f2f2;">
                                            <span aria-hidden="true">«</span>
                                        </a>
                                    </li>
                                    <c:forEach var="i" begin="1" end="${pagesCount}">
                                        <li>
                                            <a style="padding: 8px 10px;background: #2d2f35;border: 1px solid whitesmoke;color: #f2f2f2;"
                                               href="/admin/products?category=${currentCategory}&pages=${i}">${i}
                                            </a>
                                        </li>
                                    </c:forEach>
                                    <li>
                                        <a
                                                <c:if test="${currentPage < pagesCount}">
                                                    href="/admin/products?category=${currentCategory}&pages=${currentPage +1}"
                                                </c:if>
                                                style="padding: 8px 10px;background: #2d2f35;border: 1px solid whitesmoke;">
                                            <span style="color: #f2f2f2" aria-hidden="true">»</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </c:if>

                    <%-- panigation--%>
                    <div class="action_bar">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
<script src="/admin/js/main.js"></script>
<script src="/admin/js/zoom/dist/zoom.min.js"></script>
<script src="/admin/js/products.js"></script>
<script>
    $(document).ready(function () {
        $("#find_item").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#table tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            });
        });
    });
</script>
<script>
    $(".select_location").on("change", function () {
        window.location = $(this).val();
    });
</script>
</body>
</html>
