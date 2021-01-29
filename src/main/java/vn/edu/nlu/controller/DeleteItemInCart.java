package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "DeleteItemInCart", urlPatterns = "/DeleteItemInCart")
public class DeleteItemInCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        try {
            HttpSession session = request.getSession();
            vn.edu.nlu.Beans.Cart cart = (vn.edu.nlu.Beans.Cart) session.getAttribute("Cart");
            HashMap<String, Item> items = cart.getItems();
            items.remove(id);
            cart.setItems(items);
            session.setAttribute("Cart", cart);
            request.getRequestDispatcher("Cart").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
