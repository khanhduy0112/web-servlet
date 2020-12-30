package com.nlu.controller;

import com.nlu.model.User;
import com.nlu.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = userService.findByNameAndPass(username, password); //kiem tra xem no co trong db chưa
        HttpSession session = req.getSession();
        if (user != null) {
            session.setAttribute("auth", user); //lưu vào sessionn
            resp.sendRedirect("/"); //quay lại trang chử
        } else {
            req.setAttribute("err", "err");
            req.getRequestDispatcher("/main/login.jsp").forward(req, resp);
        }

    }
}
