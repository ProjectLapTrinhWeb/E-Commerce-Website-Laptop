package vn.edu.nlu.controller;

import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAdminProduct", urlPatterns = "/DeleteAdminProduct")
public class DeleteAdminProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            if (ProductEntity.deleteProductByID(id)) {
                request.setAttribute("DeleteStatus", "Đã xóa sản phẩm có id là: " + id);
            } else {
                request.setAttribute("DeleteStatus", "Chưa xóa được sản phẩm có id là: " + id);
            }
            request.getRequestDispatcher("resultDelete.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
