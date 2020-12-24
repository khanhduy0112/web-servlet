<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thông tin cửa hàng</title>
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon" />
    <link rel="stylesheet" href="./style/main.css" />
    <link rel="stylesheet" href="./style/banner.css" />
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
                <h2><a href="dashboard.html">DASH BOARD</a></h2>
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
                        <a href="./products.html">Tất Cả</a>
                        <a href="product-new.html">Thêm Sản Phẩm</a>
                        <a href="category.html">Doanh Mục</a>
                    </div>
                </div>
                <div class="menu">
                    <div class="menu_title">
                        <img src="./images/profile.svg" class="img-icon" alt="" />
                        <h4>Người Dùng</h4>
                    </div>
                    <div class="sub_menu">
                        <a href="users.html">Quản Trị</a>
                        <a href="user-new.html">Thêm Người Dùng</a>
                        <a href="user-setting.html">Cài Đặt</a>
                        <a href="customers.html">Khách Hàng</a>
                    </div>
                </div>
                <div class="menu">
                    <div class="menu_title">
                        <img src="./images/box.svg" class="img-icon" alt="" />
                        <h4>Đơn Hàng</h4>
                    </div>
                    <div class="sub_menu">
                        <a href="order.html">Tất Cả Đơn Hàng</a>
                    </div>
                </div>
                <div class="menu">
                    <div class="menu_title">
                        <h4>Quản lý giao diện</h4>
                    </div>
                    <div class="sub_menu">
                        <a href="infostore.html">Thông tin cửa hàng</a>
                        <a href="banner.html">Banner</a>

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
                            <a href="./user-setting.html">
                                <img src="./images/settings.svg" alt="" />Cài đặt
                            </a>
                            <a href="./login.html">
                                <img src="./images/logout.svg" alt="" /> Đăng xuất
                            </a>
                            <a href="../main/index.html"> THOÁT </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of right topbar -->
            <div class="right_content">
                <div class="new_product">
                    <div class="select_group">
                        <div class="img">
                            <input
                                    required
                                    type="file"
                                    name="product_img"
                                    id="product_img"
                            />
                        </div>
                        <div class="display_img">
                            <img alt="vui lòng chọn banner cho cửa hàng" id="review_product-img" />
                        </div>
                    </div>
                    <div class="form">
                        <div class="form_group">
                            <label for="product_name shop_Title">Tiêu đề</label><br />
                            <input
                                    required
                                    type="text"
                                    class="form_control"
                                    id="product_name"
                            />
                        </div>
                        <div class="form_group">
                            <label for="product_price shop_Title2">Phụ đề</label><br />
                            <input
                                    required
                                    type="text"
                                    class="form_control"
                                    id="product_price"/>
                        </div>
                        <div class="save_post">
                            <div>
                                <input type="checkbox" name="craft" id="craft" />
                                <label for="craft">Lưu bản nháp</label>
                            </div>
                            <div>
                                <input type="checkbox" name="post" id="post" />
                                <label for="post">Đăng</label>
                            </div>

                            <div style="margin-top: 1rem">
                                <button>Thực Hiện</button>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="add_size hidden">
                    <form action="">
                        <div>
                            <label for="">Size</label>
                            <input type="number" />
                        </div>
                        <div>
                            <label for="">Số Lượng</label>
                            <input type="number" />
                        </div>
                        <div>
                            <button>Lưu</button>
                            <button class="btn_cancel">Hủy</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ===***END OF RIGHT***=== -->
</div>
</body>
<script>
    const btnEdit = document.getElementsByClassName("btn_edit");
    const productEditWrapper = document.querySelector(".edit_wrapper");
    const handleEdit = () => {
        productEditWrapper.style.display = "block";
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    };
    for (let i = 0; i < btnEdit.length; i++) {
        btnEdit[i].addEventListener("click", () => handleEdit());
    }

    const btnCancel = document.querySelector(".btn_cancel");
    const btnAddSize = document.querySelector(".btn_add-size");

    btnCancel.addEventListener("click", () => {
        document.querySelector(".add_size").classList.add("hidden");
    });
    btnAddSize.addEventListener("click", () => {
        document.querySelector(".add_size").classList.remove("hidden");
    });

    // TEXT EDITOR JS LIBARY
    ClassicEditor.create(document.querySelector("#editor"))
        .then((editor) => {
            console.log(editor);
        })
        .catch((error) => {
            console.error(error);
        });
    //
    const productImg = document.getElementById("product_img");
    const previewProductImg = document.getElementById("review_product-img");
    productImg.addEventListener("change", (e) => {
        previewProductImg.src = URL.createObjectURL(e.target.files[0]);
    });
</script>
<script src="./js/main.js"></script>
</html>
