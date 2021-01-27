package demo.controller;

import demo.dao.DAO;
import demo.entity.Cart;
import demo.entity.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.SessionCookieConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

@WebServlet(name = "CartController", urlPatterns = "/cart")
public class CartController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String pid= request.getParameter("id");
        String command= request.getParameter("command");
        ArrayList<Long> listBuy= null;
        String url= "";
        try {
            listBuy= (ArrayList<Long>) session.getAttribute("cartID");
            long idBuy=0;
            if(request.getParameter("cartID") != null){
                idBuy= Long.parseLong(request.getParameter("cartID"));
                DAO dao= new DAO();
                Product p= dao.getProductByID(pid);
                switch (command){
                    case "":
                    if (listBuy == null){
                        listBuy= new ArrayList<>();;
                        session.setAttribute("cartID",idBuy);
                        break;
                    }if(listBuy.indexOf(idBuy)==-1){
                        cart.insertToCart(p,1);
                        listBuy.add(idBuy);
                    }
                        url= "/cart.jsp";
                    break;
                    default:
                        break;
                }
            }
            RequestDispatcher rd= getServletContext().getRequestDispatcher("url");
            rd.forward(request,response);
        } catch (Exception e){

        }
    }
}
