package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Order;
import vn.edu.nlu.Entity.OrderEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdatedOrder", urlPatterns = "/UpdatedOrder")
public class UpdatedOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerName = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String total = request.getParameter("totalPrice");
        String status = request.getParameter("status");
        String id = request.getParameter("id");
        try {
            Order o = new Order();
            o.setId(id);
            o.setCustomerName(customerName);
            o.setPhone(phone);
            o.setAddress(address);
            o.setStatus(status);
            if (OrderEntity.updateOrder(o)) {
                request.setAttribute("Status", "Update thành công đơn hàng có id là: " + id);
            } else {
                request.setAttribute("Status", "Update không thành công đơn hàng có id là: " + id);
            }
            request.setAttribute("BackPage", "/WebLaptop/AdminOrder");
            request.getRequestDispatcher("resultDeleteOrUpdate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
