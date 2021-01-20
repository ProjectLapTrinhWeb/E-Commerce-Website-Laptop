package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Customer;
import vn.edu.nlu.Entity.CustomerEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminCustomer", urlPatterns = "/AdminCustomer")
public class AdminCustomer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> listCus = null, listAc = null, listUnAc = null;
        try {
            listCus = CustomerEntity.getAllCustomer();
            listAc = CustomerEntity.getActiveCustomer();
            listUnAc = CustomerEntity.getUnActiveCustomer();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        } finally {
            request.setAttribute("listCus", listCus);
            request.setAttribute("listAc", listAc);
            request.setAttribute("listUnAc", listUnAc);
            request.getRequestDispatcher("adminCustomer.jsp").forward(request, response);
        }
    }
}
