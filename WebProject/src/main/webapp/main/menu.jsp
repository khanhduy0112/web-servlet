<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
    <div class="container-fluid"><a class="navbar-brand" href="#" style="font-size: 40px;">SKED</a>
        <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link" href="/products">Sản phẩm</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Giỏ hàng<i class="fa fa-shopping-cart"
                                                                             style="padding-left: 5px;"></i></a>
                </li>
                <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" data-toggle="dropdown"
                                                 aria-expanded="false" href="#">Doanh Mục</a>
                    <div class="dropdown-menu"><a class="dropdown-item" href="#">First Item</a>
                        <a class="dropdown-item" href="#">Second Item</a>
                        <a class="dropdown-item" href="#">Third Item</a>
                    </div>
                </li>
                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input
                            class="form-control search-field" type="search" id="search-field" name="search">
                    </div>
                </form>

            </ul>
            <span class="navbar-text"> <a class="login" href="#">Đăng Nhập</a></span>
            <a class="btn btn-light action-button" role="button" href="#">Đăng Kí</a>
        </div>

    </div>
</nav>