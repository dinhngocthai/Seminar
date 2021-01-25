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

@WebServlet(name = "CategoryControl",urlPatterns = "/category")
public class CategoryControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID= request.getParameter("cid");
        DAO dao= new DAO();
        List<Product> list= dao.getProductByCateID(cateID);
        List<Category> listC= dao.getAllCategory();
        request.setAttribute("ListP", list);
        request.setAttribute("ListC", listC);

        request.getRequestDispatcher("ListProduct.jsp").forward(request,response);
    }
}
