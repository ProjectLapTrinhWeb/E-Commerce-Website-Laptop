package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Comments;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Beans.User;
import vn.edu.nlu.Entity.CommentEntity;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.stream.events.Comment;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AddComment", urlPatterns = "/AddComment")
public class AddComment extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String ProductID = request.getParameter("id");
        String content = request.getParameter("Review");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");

        try {
            boolean addComment = CommentEntity.addComment(user.getID(),ProductID, content);
            if( addComment){
                request.getRequestDispatcher("single.jsp").forward(request,response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }



    }
}
