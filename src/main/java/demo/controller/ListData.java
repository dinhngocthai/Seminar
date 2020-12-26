package demo.controller;

import demo.beans.Product;
import demo.entity.ProductEntity;
import demo.filter.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

@WebServlet(name = "ListData",urlPatterns = "/ListData")
public class ListData extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductEntity pe= new ProductEntity();

        Collection<Product> values= pe.getAllProduct();
        request.setAttribute("ListProduct",values);
        request.getRequestDispatcher("ListProduct.jsp").forward(request,response);
    }
}
