package demo.controller;

import demo.entity.Category;
import demo.entity.Product;
import demo.dao.DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PagingControl",urlPatterns = "/paging")
public class PagingControl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String index= request.getParameter("index");
        if(index== null) index ="1";
       int indexPage=Integer.parseInt(index);
        DAO dao= new DAO();
        List<Product> list= dao.getPaging(indexPage);
        List<Category> listC= dao.getAllCategory();
        request.setAttribute("ListP", list);
        request.setAttribute("ListC", listC);
        request.getRequestDispatcher("ListProduct.jsp").forward(request,response);
    }
}
