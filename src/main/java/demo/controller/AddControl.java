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

@WebServlet(name = "AddControl", urlPatterns = "/add")
public class AddControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name= request.getParameter("name");
        String img= request.getParameter("image");
        String price= request.getParameter("price");
        String priceSale= request.getParameter("priceSale");
        String title= request.getParameter("title");
        String description= request.getParameter("description");
        String category= request.getParameter("category");
        HttpSession session= request.getSession();
        Account a= (Account) session.getAttribute("acc");
        DAO dao = new DAO();
        dao.insertProduct(name, img, price,priceSale,title,description,category );
        response.sendRedirect("manager");
    }
}
