package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Item;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "Cart", urlPatterns = "/Cart")
public class Cart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            vn.edu.nlu.Beans.Cart cart = (vn.edu.nlu.Beans.Cart) session.getAttribute("Cart");
            if (cart == null) {
                if (session.getAttribute("User") == null) {
                    request.getRequestDispatcher("index.html").forward(request, response);
                }
                int index = 1;
                HashMap<String, Item> items = new HashMap<>();
                while ((request.getParameter("id_" + index)) != null) {
                    String quantity = (request.getParameter("quantity_" + index));
                    //nameItem = product
                    String nameItem = (request.getParameter("w3ls_item_" + index));
                    //amount = price
                    String price = (request.getParameter("amount_" + index));

                    String id = request.getParameter("id_" + index);

                    Product p = ProductEntity.getId(Integer.parseInt(id));

                    Item item = new Item();
                    item.setQuantity(Integer.parseInt(quantity));
                    item.setPrice(Long.parseLong(price));
                    item.setProduct(p);
                    items.put(id, item);
                    index++;
                }
                cart = new vn.edu.nlu.Beans.Cart();
                cart.setItems(items);
            }
            session.setAttribute("Cart", cart);
            request.getRequestDispatcher("cart.jsp").forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
