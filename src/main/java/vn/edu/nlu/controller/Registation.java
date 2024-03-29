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
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

@WebServlet(name = "Registation", urlPatterns = "/Registation")
public class Registation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n = request.getParameter("Name");
        String p = request.getParameter("Password");
        String e = request.getParameter("Email");

        String RoleID = "2";
        boolean registed = false;
        User u = null;
        try {
            registed = UserEntity.Register(n, p, e, RoleID);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
            noSuchAlgorithmException.printStackTrace();
        }
        if (registed == true) {
            try {
                u = UserEntity.Login(n,p);
                HttpSession session = request.getSession();
                session.setAttribute("User", u);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (ClassNotFoundException classNotFoundException) {
                classNotFoundException.printStackTrace();
            }
        } else {
            response.sendRedirect("index.html");
        }
    }
}