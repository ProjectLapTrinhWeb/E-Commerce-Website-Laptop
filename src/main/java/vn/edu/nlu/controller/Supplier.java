package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Asus", urlPatterns = "/Asus")
public class Supplier extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> data = null;
        try {
            String supplier = request.getParameter("supplier");
            data = ProductEntity.getProductWithSupplierName(supplier);
            System.out.println(data.toString());
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("List", data);
        request.getRequestDispatcher("products.jsp").forward(request,response);
    }
}
