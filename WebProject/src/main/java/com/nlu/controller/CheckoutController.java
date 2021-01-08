package com.nlu.controller;

import com.nlu.model.Cart;
import com.nlu.model.CartItem;
import com.nlu.service.CartService;
import com.nlu.service.MailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    MailService mailService = new MailService();
    CartService cartService = new CartService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("fullName");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
//        String city = req.getParameter("city");
        String address = req.getParameter("address");
        String note = req.getParameter("note");

        Cart cart = Cart.getCart(req.getSession());
        Collection<CartItem> items = cart.getData();

        cartService.save(String.valueOf(new Date().getTime()), fullName, address, phone, email, 0, cart);
        mailService.sendMail(email, MailService.mess);
        cart.clear(req.getSession());//xoa cart vi da tien hanh thanh toan roi
        resp.sendRedirect("/");

    }
}
