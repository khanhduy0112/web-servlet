package com.nlu.controller;

import com.nlu.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart/remove")
public class CartRemoveController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id == null) {
            return;
        }
        HttpSession session = req.getSession();
        Cart cart = Cart.getCart(session);
        cart.remove(Integer.parseInt(id));
        req.getRequestDispatcher("/main/cart.jsp").forward(req, resp);
    }
}
