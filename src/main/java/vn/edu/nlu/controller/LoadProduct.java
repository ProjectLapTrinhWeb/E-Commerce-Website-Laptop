package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.LoadData;
import vn.edu.nlu.Beans.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoadProduct", urlPatterns = "/LoadProduct")
public class LoadProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> data = LoadData.loadFile("E:\\IntelliJIDEA\\show_product\\src\\main\\java\\vn\\edu\\nlu\\data.txt");
        request.setAttribute("List", data);
        request.getRequestDispatcher("products.jsp").forward(request,response);
    }
}
