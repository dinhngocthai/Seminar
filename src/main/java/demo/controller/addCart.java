package demo.controller;

import demo.beans.Product;
import demo.model.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addCart", urlPatterns = "/cart/add")
public class addCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        //todo doPost
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*        String id = request.getParameter("id");
        if(id==null) response.sendRedirect("/Index");
        ProductControl pe = new ProductControl();
        Product p = pe.getByID(id);
        if(p==null){
            response.sendRedirect("/Index");
            return;
        }
        HttpSession session = request.getSession();

        Cart c = Cart.getCart(session);
        c.put(p);
        c.commit(session);*/
    }
}
