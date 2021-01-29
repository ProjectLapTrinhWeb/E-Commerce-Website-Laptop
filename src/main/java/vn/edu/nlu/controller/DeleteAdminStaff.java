package vn.edu.nlu.controller;

import vn.edu.nlu.Entity.ProductEntity;
import vn.edu.nlu.Entity.StaffEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteAdminStaff", urlPatterns = "/DeleteAdminStaff")
public class DeleteAdminStaff extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            if (StaffEntity.deleteStaff(id)) {
                request.setAttribute("Status", "Đã xóa nhân viên có id là: " + id);
            } else {
                request.setAttribute("Status", "Chưa xóa được nhân viên có id là: " + id);
            }
            request.setAttribute("BackPage", "AdminStaff");
            request.getRequestDispatcher("resultDeleteOrUpdate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
