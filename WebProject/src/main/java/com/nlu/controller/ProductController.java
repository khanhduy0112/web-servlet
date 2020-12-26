package com.nlu.controller;

import com.nlu.model.Product;
import com.nlu.model.ProductDetails;
import com.nlu.service.ProductDetailsService;
import com.nlu.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet("/products")
public class ProductController extends HttpServlet {

    ProductService productService = new ProductService();
    ProductDetailsService productDetailsService = new ProductDetailsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ProductDetails> productDetailsList = productDetailsService.findAll();
        HashMap<Integer, Integer> sizes = new HashMap();
        for (ProductDetails details :
                productDetailsList) {
            sizes.put(details.getSize(), details.getSize());
        }
        sizes.entrySet()
                .stream()
                .sorted(Map.Entry.comparingByValue());
        req.setAttribute("sizes", sizes.values());
        req.getRequestDispatcher("/main/product.jsp").forward(req, resp);
    }

}
