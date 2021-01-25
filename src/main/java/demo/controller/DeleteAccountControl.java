package demo.controller;

import demo.dao.DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAccountControl",urlPatterns = "/deleteAccount")
public class DeleteAccountControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid= request.getParameter("uid");
        DAO dao = new DAO();
        dao.deleteAccount(uid);
        response.sendRedirect("managerAccount");
    }
}
