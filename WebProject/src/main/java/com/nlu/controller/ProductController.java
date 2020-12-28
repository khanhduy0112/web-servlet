package com.nlu.controller;

import com.nlu.model.Product;
import com.nlu.model.ProductDetails;
import com.nlu.service.ProductDetailsService;
import com.nlu.service.ProductService;
import com.nlu.utils.ProductUtils;

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
        List<Product> products = null;
        int offset = 0;
        int itemPerPage = 10;
        int pages = Integer.parseInt(req.getParameter("pages"));
        int quality = productService.getQuality();
        int pagesCount = quality / itemPerPage;
        if (quality % itemPerPage > 0) {
            pagesCount++;
        }
        if (pages == 1) {
            products = productService.findALl(offset, itemPerPage);
        }
        if (pages == 2) {
            products = productService.findALl(2 * itemPerPage, 3);
        }
        HashMap<Integer, Integer> sizes = productDetailsService.findAllSize();
        req.setAttribute("sizes", sizes.values());
        req.setAttribute("products", products);
        req.setAttribute("pagesCount", pagesCount);
        req.getRequestDispatcher("/main/product.jsp").forward(req, resp);
    }


}
