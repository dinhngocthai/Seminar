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

@WebServlet(name = "DetailControl",urlPatterns = "/detail")
public class DetailControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        DAO dao= new DAO();
        Product p = dao.getProductByID(id);
/*        List<Category> listC = dao.getAllCategory();
        Product last = (Product) dao.getLatest();*/
        request.setAttribute("detail",p);
/*        request.setAttribute("ListC",listC);
        request.setAttribute("p",last);*/
        request.getRequestDispatcher("Product.jsp").forward(request,response);
    }
}
