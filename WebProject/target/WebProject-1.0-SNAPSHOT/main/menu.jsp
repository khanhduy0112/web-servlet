<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main-banner" id="home" style="background: none !important; height: 18vh">
    <header class="header" style="background-color: #229434 !important;">
        <div class="container-fluid px-lg-5">
            <!-- nav -->
            <nav class="py-4">
                <div id="logo">
                    <h1><a href="/">${shopDetails.shopName}</a></h1>
                </div>

                <label for="drop" class="toggle">Menu</label>
                <input type="checkbox" id="drop"/>
                <ul class="menu mt-2">
                    <li><a href="/">TRANG CHỦ</a></li>
                    <li><a href="product.jsp">SẢN PHẨM</a></li>
                    <li><a href="contact.jsp">LIÊN HỆ</a></li>
                    <li>
                        <label for="drop-2" class="toggle">DANH MỤC</label>
                        <a href="#">DANH MỤC<span class="fa fa-angle-down" aria-hidden="true"></span></a>
                        <input type="checkbox" id="drop-2"/>
                        <ul>
                            <c:forEach items="${categories}" var="item">
                                <c:if test="${item.status == 1}">
                                    <li><a href="main/nike.jsp">${item.name}</a></li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </li>
                    <li>
                        <a href="cart.jsp"
                        ><i class="fa fa-shopping-cart" aria-hidden="true"></i>GIỎ
                            HÀNG</a
                        >
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
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <a href="../index.jsp">TRANG CHỦ</a>
    </li>
    <li class="breadcrumb-item active">SẢN PHẨM</li>
</ol>

