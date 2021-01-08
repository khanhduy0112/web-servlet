package com.nlu.controller;

import com.nlu.model.Cart;
import com.nlu.model.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-to-cart")
public class AddToCartController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int productId = Integer.parseInt(req.getParameter("productId"));
        int quality = Integer.parseInt(req.getParameter("quality"));
        int size = Integer.parseInt(req.getParameter("size"));



        HttpSession session = req.getSession();
        Cart cart = Cart.getCart(session);
        cart.put(new CartItem(productId, size, quality));
        cart.commit(session);

    }
}
