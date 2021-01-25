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

@WebServlet(name = "LoadControl",urlPatterns = "/loadProduct")
public class LoadControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String id  = request.getParameter("pid");
        DAO dao = new DAO();
        Product p= dao.getProductByID(id);
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("ListC",listC);
        request.setAttribute("detail",p);
        request.getRequestDispatcher("Edit.jsp").forward(request,response);
    }
}
