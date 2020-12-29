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

@WebServlet("/admin/products")
public class AdminProductController extends HttpServlet {

    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        final int productPerPage = 10;
        int pages = Integer.parseInt(req.getParameter("pages"));
        String category = req.getParameter("category");
        List<Product> products = productService.findAll(pages, productPerPage, category);

        int countAllProducts = productService.countProductInCategory(category);
        int pagesCount = countAllProducts / productPerPage;
        if (countAllProducts % productPerPage > 0) {
            pagesCount++;
        }
        req.setAttribute("products", products);
        req.setAttribute("pagesCount", pagesCount);
        req.setAttribute("currentCategory", category);
        req.getRequestDispatcher("/admin/products.jsp").forward(req, resp);
    }
}
