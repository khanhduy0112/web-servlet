package com.nlu.controller;

import com.nlu.model.Cart;
import com.nlu.model.CartItem;
import com.nlu.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart/add")
public class CartController extends HttpServlet {


    CartService cartService = new CartService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("details_id");
        String quality = req.getParameter("quality");

        if (id == null || quality == "" || Integer.parseInt(quality) < 1) {
            resp.sendRedirect("/main/product.jsp");
            return;
        }


        CartItem item = cartService.findProductById(Integer.parseInt(id));
        HttpSession session = req.getSession();
        Cart cart = Cart.getCart(session);
        cart.put(item, Integer.parseInt(quality));
        cart.commit(session);
        req.getRequestDispatcher("/main/cart.jsp").forward(req, resp);

    }
}
