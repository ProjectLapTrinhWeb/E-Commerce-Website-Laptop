package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Beans.Supplier;
import vn.edu.nlu.Entity.ProductEntity;
import vn.edu.nlu.Entity.SupplierEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateSupplier", urlPatterns = "/updateSupplier")
public class updateSupplier extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String id = request.getParameter("id");
            String name = request.getParameter("Name");
            String status = request.getParameter("Status");
            String img = request.getParameter("img");
            boolean updateSup = SupplierEntity.updateSupplier(id,name,status,img);
            if(updateSup){
                request.setAttribute("UpdateStatusSup", "Đã cập nhật nhà sản xuất"+name+" có id là: " + id);
            } else {
                request.setAttribute("UpdateStatusSup", "Chưa cập nhật được nhà sản xuất"+name+" có id là: " + id);
            }
            request.getRequestDispatcher("resultDelSupplier.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    }