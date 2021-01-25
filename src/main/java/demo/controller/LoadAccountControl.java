package demo.controller;

import demo.dao.DAO;
import demo.entity.Account;
import demo.entity.Category;
import demo.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadAccountControl",urlPatterns = "/loadAccount")
public class LoadAccountControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");

        String uid  = request.getParameter("uid");
        DAO dao = new DAO();
        Account a= dao.getAccountByID(uid);
        request.setAttribute("detailAccount",a);
        request.getRequestDispatcher("EditUser.jsp").forward(request,response);
    }
}
