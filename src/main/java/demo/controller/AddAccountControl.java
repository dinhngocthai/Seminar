package demo.controller;

import demo.dao.DAO;
import demo.entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddAccountControl",urlPatterns = "/addAccount")
public class AddAccountControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        HttpSession session= request.getSession();
        Account a= (Account) session.getAttribute("acc");
        int sid =  a.getId();
        DAO dao = new DAO();
        dao.insertAccount(username,password);
        response.sendRedirect("managerAccount");
    }
}
