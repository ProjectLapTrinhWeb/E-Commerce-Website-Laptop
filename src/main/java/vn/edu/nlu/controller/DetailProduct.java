package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Comments;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.CommentEntity;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailProduct", urlPatterns = "/DetailProduct")
public class DetailProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            int id = Integer.parseInt(request.getParameter("id"));
            List<Comments> listComments = CommentEntity.getAllComment(id+"");
            request.setAttribute("Comments", listComments);
            Product p = ProductEntity.getId(id);
            request.setAttribute("DetailProduct", p);
            request.getRequestDispatcher("single.jsp").forward(request, response);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
