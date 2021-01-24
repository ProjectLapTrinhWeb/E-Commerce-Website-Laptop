package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Order;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.OrderEntity;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateOrder", urlPatterns = "/UpdateOrder")
public class UpdateOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String id = request.getParameter("id");
            Order order = OrderEntity.getById(id);
            request.setAttribute("order", order);
            request.getRequestDispatcher("updateOrder.jsp").forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
