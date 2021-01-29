package vn.edu.nlu.controller;

import vn.edu.nlu.Entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "Registation", urlPatterns = "/Registation")
public class Registation extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
    


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n=request.getParameter("Name");
        String p=request.getParameter("Password");
        String e=request.getParameter("Email");

        String RoleID = "2";
        boolean registed = false;
        try {
            registed = UserEntity.Register(n,p,e,RoleID);
//            HttpSession hs = new HttpSession() {
//            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException classNotFoundException) {
            classNotFoundException.printStackTrace();
        }
        if (registed == true){
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("index.html");
        }

    }
}