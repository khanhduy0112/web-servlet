package com.nlu.controller;

import com.nlu.model.Category;
import com.nlu.model.Product;
import com.nlu.model.Tag;
import com.nlu.utils.CategoryUtil;
import com.nlu.utils.ProductUtils;
import com.nlu.utils.TagUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "index",urlPatterns = "")
public class IndexController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = null;
        List<Category> categories = null;
        List<Tag> tags = null;
        try {
            products = ProductUtils.findAll();
            categories = CategoryUtil.findAll();
            tags = TagUtils.findAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("products", products);
        req.setAttribute("categories", categories);
        req.setAttribute("tags", tags);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
