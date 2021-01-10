<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Sản phẩm - Thêm mới</title>
    <link rel="shortcut icon" href="./images/webpage.svg" type="image/x-icon"/>
    <link rel="stylesheet" href="./style/main.css"/>
    <link rel="stylesheet" href="./style/product-new.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <%--    <script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libraries/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libraries/ckfinder/ckfinder.js"></script>
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
                        <h4 class="active">Sản Phẩm</h4>
                    </div>
                    <div class="sub_menu">
                        <a href="products.jsp">Tất Cả</a>
                        <a href="product-new.jsp" class="active">Thêm Sản Phẩm</a>
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
                            <a href="user-setting.jsp">
                                <img src="./images/settings.svg" alt=""/>Cài đặt
                            </a>
                            <a href="login.jsp">
                                <img src="./images/logout.svg" alt=""/> Đăng xuất
                            </a>
                            <a href="../index.jsp"> THOÁT </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of right topbar -->
            <div class="right_content">
                <form method="post" class="new_product" action="/new-product">

                    <div class="form">
                        <div class="form_group">
                            <label for="product_name">Tên Sản Phẩm</label><br/>
                            <input
                                    name="product_name"
                                    required
                                    type="text"
                                    class="form_control"
                                    id="product_name"
                            />
                        </div>
                        <div class="form_group">
                            <label for="product_price">Giá (VND)</label><br/>
                            <input
                                    name="product_price"
                                    required
                                    type="number"
                                    class="form_control"
                                    id="product_price"
                            />
                        </div>
                        <div class="form_group">
                            <label>Miêu Tả Sản Phẩm</label>
                            <br/>
                            <form action="" method="post">
              <textarea rows="20" cols="20" id="ckeditor">

              </textarea>
                                <br/>
                                <input type="submit" name="submit" value="Submit"/>
                            </form>

                        </div>
                        <div class="form_group">
                            <table style="margin-top: 1rem">
                                <thead>
                                <th>Kích Cỡ</th>
                                <th>40</th>
                                <th>41</th>
                                <th>42</th>
                                <th>44</th>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Số Lượng</td>
                                    <td><input type="text" value="12"/></td>
                                    <td><input type="text" value="12"/></td>
                                    <td><input type="text" value="12"/></td>
                                    <td><input type="text" value="12"/></td>
                                </tr>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="2">
                          <span
                                  class="btn_add-size"
                                  style="
                              border-bottom: 1px solid blue;
                              cursor: pointer;
                            ">
                            Thêm kích cỡ
                          </span>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>


                    <div class="select_group">
                        <div class="category">
                            <span>Doanh Mục</span>
                            <div class="category_control">
                                <input type="checkbox" name=""/>
                                <label for="jordan">Jordan</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name=""/>
                                <label for="adidas">Adidas</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name=""/>
                                <label for="converse">Converse</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name="nike"/>
                                <label for="nike">Nike</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name=""/>
                                <label for="uncategory">UnCategory</label>
                            </div>
                            <button class="add_new-category">
                                <a href="category.jsp">Thêm Mới</a>
                            </button>
                        </div>
                        <div class="img">
                            <input
                                    required
                                    type="file"
                                    name="product_img"
                                    id="product_img"
                            />
                        </div>
                        <div class="display_img">
                            <img alt="review img" id="review_product-img"/>
                        </div>
                        <div style="margin: 1rem 0" class="tags category">
                            <span>Thẻ</span>
                            <div class="category_control">
                                <input type="checkbox" name="" id="jordan"/>
                                <label for="jordan">Mới nhất</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name="" id="adidas"/>
                                <label for="adidas">Giảm giá</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name="" id="converse"/>
                                <label for="converse">Mới ra mắt</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name="nike" id="nike"/>
                                <label for="nike">Đẹp</label>
                            </div>
                            <div class="category_control">
                                <input type="checkbox" name="" id="uncategory"/>
                                <label for="uncategory">Ưu đãi</label>
                            </div>
                            <div class="add_new-category">
                                <input
                                        type="text"
                                        name=""
                                        id=""
                                        placeholder="Nhập tên thẻ mới"
                                />
                                <button
                                        style="
                        padding: 0.25rem;
                        color: white;
                        border: 1px solid transparent;
                        background-color: rgb(2, 131, 45);
                      "
                                >
                                    Thêm
                                </button>
                            </div>
                        </div>
                        <div class="save_post">
                            <div>
                                <input type="checkbox" name="craft" id="craft"/>
                                <label for="craft">Lưu bản nháp</label>
                            </div>
                            <div>
                                <input type="checkbox" name="post" id="post"/>
                                <label for="post">Đăng</label>
                            </div>

                            <div style="margin-top: 1rem">
                                <button>Thực Hiện</button>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="add_size hidden">
                    <form action="">
                        <div>
                            <label for="">Size</label>
                            <input type="number"/>
                        </div>
                        <div>
                            <label for="">Số Lượng</label>
                            <input type="number"/>
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
<script>
    var  editor = CKEDITOR.replace('ckeditor');
CKFinder.setupCKEditor(editor,'/libraries/ckfinder/');
</script>
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
