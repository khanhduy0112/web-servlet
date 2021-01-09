package com.nlu.controller;

import com.nlu.model.Cart;
import com.nlu.model.CartItem;
import com.nlu.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;

@WebServlet("/order")
public class OrderController extends HttpServlet {

    private CartService cartService = new CartService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String orderId = req.getParameter("id");

        Cart cart = cartService.findById(orderId);


        req.setAttribute("cart", cart);
//        Collection<CartItem>  = cart.getData();

        req.getRequestDispatcher("/admin/order-details.jsp").forward(req, resp);

    }

}
