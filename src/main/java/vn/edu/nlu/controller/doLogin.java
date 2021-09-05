package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.HashMD5;
import vn.edu.nlu.Beans.User;
import vn.edu.nlu.Entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

@WebServlet(name = "doLogin", urlPatterns = "/login")
public class doLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("Account");
        String pass = null;
        User u = null;
        try {
            pass = HashMD5.hashMD5(request.getParameter("Password"));
            u = UserEntity.Login(user, pass);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException | NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        if (u != null && u.getRoleID().equalsIgnoreCase("1")) {
            HttpSession session = request.getSession();
            session.setAttribute("User", u);
            response.sendRedirect("AdminDashboard");
        } else if (u != null && u.getRoleID().equalsIgnoreCase("2")) {
            HttpSession session = request.getSession();
            session.setAttribute("User", u);
            response.sendRedirect("Home");
//            request.getRequestDispatcher("Home").forward(request, response);
        } else {
            response.sendRedirect("index.html");
        }
    }
}