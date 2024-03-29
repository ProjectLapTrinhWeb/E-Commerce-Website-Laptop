package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.ProductEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;

@MultipartConfig
@WebServlet(name = "AddProduct", urlPatterns = "/AddProduct")
public class AddProduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataInputStream in = null;
        DataOutputStream out = null;
        String name;
        String price;
        int supplier;
        double discount;
        int category;
        int quantity;
        String status;
        Part partImg;
        String img;
        try {
            name = request.getParameter("name");
            price = request.getParameter("price");
            supplier = Integer.parseInt(request.getParameter("supplier"));
            discount = Double.parseDouble(request.getParameter("discount"));
            category = Integer.parseInt(request.getParameter("category"));
            quantity = Integer.parseInt(request.getParameter("quantity"));
            status = request.getParameter("status");
            partImg = request.getPart("img");
            img = "img/" + Paths.get(partImg.getSubmittedFileName()).getFileName().toString();
            String imgPath = new StringBuilder().append("E:/IntelliJIDEA/WebLaptop/src/main/webapp/img/").append(Paths.get(partImg.getSubmittedFileName()).getFileName().toString()).toString();
            in = new DataInputStream(partImg.getInputStream());
            out = new DataOutputStream(new FileOutputStream(imgPath));
            byte[] data = new byte[1024], temp = null;
            int length = -1;
            while ((length = in.read(data)) != -1) {
                temp = Arrays.copyOf(data, length);
                out.write(temp, 0, length);
                out.flush();
            }
            boolean added = ProductEntity.addProduct(new Product(null, name, price, discount,null, img, category, supplier, status, quantity));
            if (added) {
                request.setAttribute("Status", "Đã thêm sản phẩm " + name);
            } else {
                request.setAttribute("Status", "Không thêm được sản phẩm " + name);
            }
            request.setAttribute("BackPage", "AdminProduct");
            request.getRequestDispatcher("resultDeleteOrUpdate.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (in != null)
                in.close();
            if (out != null)
                out.close();
        }
    }
}
