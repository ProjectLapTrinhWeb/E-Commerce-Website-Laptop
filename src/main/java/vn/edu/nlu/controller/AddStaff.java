package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Staff;
import vn.edu.nlu.Entity.StaffEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddStaff", urlPatterns = "/AddStaff")
public class AddStaff extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            String mail = request.getParameter("mail");
            String phone = request.getParameter("phone");
            Staff s = new Staff();
            s.setName(name);
            s.setUserName(userName);
            s.setPassword(password);
            s.setMail(mail);
            s.setPhone(phone);
            if (StaffEntity.addStaff(s)) {
                request.setAttribute("Status", "Thêm thành công nhân viên: " + s.getName());
            } else {
                request.setAttribute("Status", "Thêm không thành công nhân viên: " + s.getName());
            }
            request.setAttribute("BackPage", "AdminStaff");
            request.getRequestDispatcher("resultDeleteOrUpdate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
