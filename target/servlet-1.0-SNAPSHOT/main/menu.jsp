<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main-banner" id="home" style="background: none !important; height: 18vh">
    <header class="header" style="  background-color: #229434 !important">
        <div class="container-fluid px-lg-5">
            <!-- nav -->
            <nav class="py-4">
                <div id="logo">
                    <h1><a href="../index.jsp">SKED</a></h1>
                </div>

                <label for="drop" class="toggle">Menu</label>
                <input type="checkbox" id="drop"/>
                <ul class="menu mt-2">
                    <li><a href="../index.jsp">TRANG CHỦ</a></li>
                    <li><a href="/product">SẢN PHẨM</a></li>
                    <li><a href="/contact">LIÊN HỆ</a></li>
                    <li>
                        <a href="#">DANH MỤC<span class="fa fa-angle-down" aria-hidden="true"></span></a>
                        <ul>
                            <c:forEach items="${categories}" var="item">
                                <li><a href="nike.html">${item.name}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="cart.jsp"><i class="fa fa-shopping-cart" aria-hidden="true"></i>GIỎ HÀNG</a>
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
</div>

