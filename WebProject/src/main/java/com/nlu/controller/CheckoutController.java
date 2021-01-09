package com.nlu.controller;

import com.nlu.model.Cart;
import com.nlu.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {

    CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String city = req.getParameter("city");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String note = req.getParameter("note");

        Cart cart = Cart.getCart(req.getSession());
        cartService.save(fullName, null, email, phone, null, address, note, cart);
        cart.clear(req.getSession());

        resp.sendRedirect("/");

    }
}
