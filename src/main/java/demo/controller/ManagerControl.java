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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerControl",urlPatterns = "/manager")
public class ManagerControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        Account a= (Account) session.getAttribute("acc");
        int id= a.getId();
        DAO dao= new DAO();
        List<Product> listP = dao.getProductBySellID(id);
        List<Category> listC= dao.getAllCategory();




        request.setAttribute("ListP",listP);

        request.setAttribute("ListC", listC);

        request.getRequestDispatcher("ManagerProduct.jsp").forward(request,response);

    }
}
