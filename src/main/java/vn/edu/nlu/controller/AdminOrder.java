package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Order;
import vn.edu.nlu.Entity.OrderEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminOrder", urlPatterns = "/AdminOrder")
public class AdminOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> listAll = null, listCancel = null, listDelivered = null, listShipping = null;
        try {
            listAll = OrderEntity.getAllOrder();
            listCancel = OrderEntity.getCancelOrder();
            listShipping = OrderEntity.getShippingOrder();
            listDelivered = OrderEntity.getDeliveredOrder();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            request.setAttribute("ListOrder", listAll);
            request.setAttribute("ListCancel", listCancel);
            request.setAttribute("ListShipping", listShipping);
            request.setAttribute("ListDelivered", listDelivered);

            request.getRequestDispatcher("adminOrder.jsp").forward(request, response);
        }
    }
}
