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

@WebServlet(name = "Laptop10To20MA", urlPatterns = "/Laptop10To20MA")
public class Laptop10To20MA extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> data = null;
        try {
            String pages = (String)request.getParameter("page");
            int page = 1;
            if(pages !=null)
                page = Integer.parseInt(pages);
            data = ProductEntity.getProductWithRangePrice("10000000", "20000000");
            int size = data.size();
            int sumPage = size/10;
            if((size % 10) > 0)
                sumPage++;
            request.setAttribute("SumPage", sumPage);
            request.setAttribute("CurrentPage", page);
            data = ProductEntity.getLimitedProductWithRangePrice("10000000", "20000000", 10, (page - 1) * 10);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        // Object NamePage using for all of the page "loading products"
        request.setAttribute("NamePage", "Laptop10To20MA");
        request.setAttribute("List", data);
        request.getRequestDispatcher("products.jsp").forward(request,response);
    }
}
