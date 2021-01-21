package demo.controller;

import demo.dao.DAO;
import demo.entity.Category;
import demo.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeControl",urlPatterns = "/home")
public class HomeControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DAO dao= new DAO();
        List<Product> list= dao.getAllProduct();
        List<Category> listC= dao.getAllCategory();
        List<Product> listL = dao.getLatest();
        List<Product> listS = dao.getHighestSale();
        List<Product> listLP = dao.getLowestPrice();

        request.setAttribute("ListP", list);
        request.setAttribute("ListC", listC);
        request.setAttribute("ListL", listL);
        request.setAttribute("ListS", listS);
        request.setAttribute("ListLP", listLP);

        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
