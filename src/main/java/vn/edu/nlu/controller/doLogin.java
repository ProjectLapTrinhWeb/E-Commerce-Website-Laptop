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

@WebServlet(name = "doLogin", urlPatterns = "/login")
public class doLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("Email");
        String pass = request.getParameter("Password");
        User u = null;
        try {
            u = UserEntity.Login(user, pass);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (u != null && u.getRoleID().equalsIgnoreCase("1")) {
            HttpSession session = request.getSession();
            session.setAttribute("User", u);
            response.sendRedirect("/WebLaptop/AdminOrder");
        } else if (u != null && u.getRoleID().equalsIgnoreCase("2")) {

            HttpSession session = request.getSession();
            session.setAttribute("User", u);
            request.getRequestDispatcher("index2.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.html");
        }
    }
}