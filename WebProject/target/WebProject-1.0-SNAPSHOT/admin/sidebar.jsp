
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
