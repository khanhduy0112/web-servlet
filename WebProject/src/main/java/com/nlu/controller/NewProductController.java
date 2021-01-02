package com.nlu.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/new-product")
public class NewProductController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productName = req.getParameter("product_name");
        String productPrice = req.getParameter("product_price");
        String description = req.getParameter("product_description");

        PrintWriter writer = resp.getWriter();
        writer.println(productName + productPrice + description);
        writer.close();
    }
}