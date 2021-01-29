package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Supplier;
import vn.edu.nlu.Entity.SupplierEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminSupplier", urlPatterns = "/AdminSupplier")
public class AdminSupplier extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Supplier> data = null;
        try {
            String pages = (String) request.getParameter("page");
            int page = 1;
            if (pages != null)
                page = Integer.parseInt(pages);
            data = SupplierEntity.getAllSupplier();
            int size = data.size();
            // moi trang 10 product
            int sumPage = size / 10;
            if ((size % 10) > 0)
                sumPage++;
            request.setAttribute("SumPage", sumPage);
            request.setAttribute("CurrentPage", page);
            data = SupplierEntity.getLimitSupplier(10, (page - 1) * 10);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.setAttribute("NamePage", "supplierAdmin");
        request.setAttribute("List", data);
        request.getRequestDispatcher("adminSupplier.jsp").forward(request, response);
    }
}
