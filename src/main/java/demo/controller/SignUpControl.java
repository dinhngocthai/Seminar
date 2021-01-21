package demo.controller;

import demo.dao.DAO;
import demo.entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SignUpControl",urlPatterns = "/Signup")
public class SignUpControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        String repassword= request.getParameter("repassword");


        if (!password.equals(repassword)) {
            // request.getRequestDispatcher("Signup.jsp");
            response.sendRedirect("Signup.jsp");
        } else {
            DAO dao = new DAO();
            Account a = dao.checkAccountExist(user);
            if (a == null) {
                dao.signup(user, password);
                response.sendRedirect("home");
            } else {
                response.sendRedirect("Signup.jsp");
            }
        }
    }
}
