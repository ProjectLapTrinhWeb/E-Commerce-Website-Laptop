package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Staff;
import vn.edu.nlu.Entity.StaffEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateStaff", urlPatterns = "/UpdateStaff")
public class UpdateStaff extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String mail = request.getParameter("mail");
            String phone = request.getParameter("phone");
            String role = request.getParameter("role");
            String status = request.getParameter("status");

            Staff s = new Staff();
            s.setId(id);
            s.setName(name);
            s.setMail(mail);
            s.setPhone(phone);
            s.setRole(role);
            s.setStatus(status);

            if (StaffEntity.updateStaff(s)) {
                request.setAttribute("Status", "Cập nhật nhân viên có id: " + id + " thành công!!!");
            } else {
                request.setAttribute("Status", "Cập nhật nhân viên có id: " + id + " không thành công!!!");
            }
            request.setAttribute("BackPage", "AdminStaff");
            request.getRequestDispatcher("resultDeleteOrUpdate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
