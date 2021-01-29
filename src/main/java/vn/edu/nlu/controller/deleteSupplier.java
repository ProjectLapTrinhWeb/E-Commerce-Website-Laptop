package vn.edu.nlu.controller;

import vn.edu.nlu.Entity.SupplierEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteSupplier", urlPatterns = "/deleteSupplier")
public class deleteSupplier extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            if (SupplierEntity.deleteSupplier(id)) {
                request.setAttribute("DeleteStatusSup", "Đã xóa nhà sản xuất có id là: " + id);
            } else {
                request.setAttribute("DeleteStatusSup", "Chưa xóa được nhà sản xuất có id là: " + id);
            }
            request.getRequestDispatcher("resultDelSupplier.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
