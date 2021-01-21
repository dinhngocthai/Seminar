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

@WebServlet(name = "LoginCotrol", urlPatterns = "/Login")
public class LoginCotrol extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        DAO dao = new DAO();
        Account a = dao.login(user, password);
        if (a == null) {
            request.setAttribute("mess", "Wrong username or pass");

            request.getRequestDispatcher("Login.jsp").forward(request, response);

        } else {
            HttpSession session=request.getSession();
            session.setAttribute("acc", a);


           // request.getRequestDispatcher("home");
            //chuyen trang ma ko can mang du lieu thi dung cau duoi
            response.sendRedirect("home");
        }
    }
}
