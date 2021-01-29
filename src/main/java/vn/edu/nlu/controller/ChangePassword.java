package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.User;
import vn.edu.nlu.Entity.SupplierEntity;
import vn.edu.nlu.Entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ChangePassword", urlPatterns = "/ChangePassword")
public class ChangePassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String id = request.getParameter("id");
            String Password = request.getParameter("password");
            String CPassword = request.getParameter("cpassword");
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("User");
           boolean changePass = UserEntity.changePassword(Password, CPassword, user.getID());
            if(changePass){
                request.setAttribute("UpdateStatusPass", "Đã thay đổi mật khẩu của tài khoản " + user.getUserName());
            } else {
                request.setAttribute("UpdateStatusPass", "Chưa thể thay đổi mật khẩu của tài khoản " + user.getUserName());
            }
            request.getRequestDispatcher("resultChangePass.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}
