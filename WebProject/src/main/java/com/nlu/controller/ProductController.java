package com.nlu.controller;

import com.nlu.model.Product;
import com.nlu.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {

    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<Product> products = productService.findAll();
//        req.setAttribute("products", products);
        req.getRequestDispatcher("/main/product.jsp").forward(req, resp);
    }
}
