package demo.controller;

import demo.dao.DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditAccountControl", urlPatterns = "/editAccount")
public class EditAccountControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        String uid= request.getParameter("id");

        String username= request.getParameter("username");
        String password= request.getParameter("password");
        String fullname= request.getParameter("fullname");
        String email= request.getParameter("email");
        String address= request.getParameter("address");
        String phone= request.getParameter("phone");


        DAO dao = new DAO();
        dao.editAccount(username,password,fullname,email,address,phone,uid);
        response.sendRedirect("managerAccount");
    }
}
