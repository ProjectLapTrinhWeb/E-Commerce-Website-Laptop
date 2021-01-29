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
//huynhaiquoc
@WebServlet(name = "ThuongHieu", urlPatterns = "/ThuongHieu")
public class ThuongHieu extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> data = null;
        try {
            String pages = request.getParameter("page");
            int page = 1;
            if (pages != null)
                page = Integer.parseInt(pages);
            String supplier = request.getParameter("supplier");
            data = ProductEntity.getProductWithSupplierName(supplier);
            System.out.println(data.toString());
            int size = data.size();
            int sumPage = size / 10;
            if ((size % 10) > 0)
                sumPage++;
            request.setAttribute("SumPage", sumPage);
            request.setAttribute("CurrentPage", page);
            data = ProductEntity.getLimitedProductWithSupplierName(supplier, 10, (page - 1) * 10);
            System.out.println(data);
            request.setAttribute("supplier", supplier);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("NamePage", "ThuongHieu");
        request.setAttribute("List", data);
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }
}
