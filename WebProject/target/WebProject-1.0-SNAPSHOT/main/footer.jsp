<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="footer_container">
    <footer>
        <div class="container">
            <div class="row footer-top">
                <div class="col-lg-4 footer-grid_section_w3layouts">
                    <h2 class="logo-2 mb-lg-4 mb-3">
                        <a href="index.jsp">SKED</a>
                    </h2>
                    <p class="titleShop">Cam kết sneakers chính hãng nhập khẩu Mỹ</p>
                    <h4 class="sub-con-fo ad-info my-4">Mạng Xã Hội</h4>
                    <ul class="w3layouts_social_list list-unstyled">
                        <li>
                            <a href="#" class="w3pvt_facebook">
                                <span class="fa fa-facebook-f"></span>
                            </a>
                        </li>
                        <li class="mx-2">
                            <a href="#" class="w3pvt_twitter">
                                <span class="fa fa-twitter"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="w3pvt_dribble">
                                <span class="fa fa-dribbble"></span>
                            </a>
                        </li>
                        <li class="ml-2">
                            <a href="#" class="w3pvt_google">
                                <span class="fa fa-google-plus"></span>
                            </a>
                        </li>
                    </ul>
                    <div style="margin: 1rem 0">
                        <a style="color: #D3EFDE ;font-family: Tahoma;font-size: 18px" href="admin/login.jsp">Quản lí
                            cửa hàng</a>
                    </div>
                </div>
                <div class="col-lg-8 footer-right">
                    <div class="row bottom-w3layouts-sec-nav mx-0">
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                TRANG
                            </h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <li>
                                    <a href="index.jsp">Home</a>
                                </li>
                                <li>
                                    <a href="main/nike.jsp">Nike</a>
                                </li>
                                <li>
                                    <a href="main/adidas.jsp">Adidas</a>
                                </li>
                                <li>
                                    <a href="main/vans.jsp">VANS</a>
                                </li>
                                <li class="mt-3">
                                    <a href="main/contact.jsp">Liên Hệ</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 footer-grid_section_w3layouts">
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                Thẻ
                            </h3>
                            <ul class="list-unstyled w3layouts-icons">
                                <c:forEach items="${tags}" var="item">
<%--                                    <c:if test="${tag.status == 1}">--%>
                                        <li>
                                            <a href="index.jsp">${item.name}</a>
                                        </li>
<%--                                    </c:if>--%>
                                </c:forEach>

                            </ul>
                        </div>

                        <div
                                class="col-md-4 footer-grid_section_w3layouts my-md-0 my-5"
                        >
                            <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">
                                THÔNG TIN LIÊN HỆ
                            </h3>
                            <div class="contact-info">
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-2">Điện Thoại</h4>
                                    <p>0869104353</p>
                                </div>
                                <div class="footer-address-inf my-4">
                                    <h4 class="ad-info mb-2">Email</h4>
                                    <p>
                                        khanh2104@gmail.com
                                    </p>
                                </div>
                                <div class="footer-address-inf">
                                    <h4 class="ad-info mb-2">Địa Chỉ</h4>
                                    <p>Tầng 80 Landmark, Bình Thạnh, HCM</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cpy-right text-left row">
                        <p class="col-md-10">
                            <a href="http://w3layouts.com"> </a>
                        </p>
                        <!-- move top icon -->
                        <a href="#home" class="move-top text-right col-md-2"
                        ><span class="fa fa-long-arrow-up" aria-hidden="true"></span
                        ></a>
                        <!-- //move top icon -->
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
