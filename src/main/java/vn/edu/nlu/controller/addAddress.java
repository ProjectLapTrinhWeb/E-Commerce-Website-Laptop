package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.User;
import vn.edu.nlu.Entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "addAddress", urlPatterns = "/addAddress")
public class addAddress extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("User");
            String SoNha = request.getParameter("SoNha");
            String Huyen = request.getParameter("Huyen");
            String ThanhPho  =request.getParameter("ThanhPho");
            String Quocgia = request.getParameter("Quocgia");
            String address = SoNha + Huyen+ ThanhPho +Quocgia;
            boolean addAddress = UserEntity.addAddress(address, user.getID());
            if (addAddress) {
                request.setAttribute("addAddress", "Thêm địa chỉ của tài khoản " + user.getUserName() + " thành công");
            } else {
                request.setAttribute("addAddress", "Thêm địa chỉ của tài khoản " + user.getUserName() + " không thành công");
            }
            request.getRequestDispatcher("resultAddAddress.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();

        }
    }
}