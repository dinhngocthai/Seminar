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

@WebServlet(name = "EditControl", urlPatterns = "/edit")
public class EditControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid= request.getParameter("id");

        String name= request.getParameter("name");
        String img= request.getParameter("image");
        String price= request.getParameter("price");
        String priceSale= request.getParameter("priceSale");
        String title= request.getParameter("title");
        String description= request.getParameter("description");
        String category= request.getParameter("category");

        DAO dao = new DAO();
        dao.editProduct(name, img, price,priceSale,title,description,category, pid);
        response.sendRedirect("manager");
    }
}
