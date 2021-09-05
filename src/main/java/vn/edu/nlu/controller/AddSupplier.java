package vn.edu.nlu.controller;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Entity.ProductEntity;
import vn.edu.nlu.Entity.SupplierEntity;
import vn.edu.nlu.Beans.Supplier;
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
@WebServlet(name = "AddSupplier", urlPatterns = "/AddSupplier")
public class AddSupplier extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DataInputStream in = null;
        DataOutputStream out = null;
        String Name;
        String Status;
        String img;
        Part partImg;
        try {

            Name = request.getParameter("Name");
            Status = request.getParameter("Status");
            partImg = request.getPart("img");
            img = "img/imgSupplier/" + Paths.get(partImg.getSubmittedFileName()).getFileName().toString();
            String imgPath = new StringBuilder().append("E:/IntelliJIDEA/WebLaptop/src/main/webapp/img/imgSupplier/").append(Paths.get(partImg.getSubmittedFileName()).getFileName().toString()).toString();
            in = new DataInputStream(partImg.getInputStream());
            out = new DataOutputStream(new FileOutputStream(imgPath));
            byte[] data = new byte[1024], temp = null;
            int length = -1;
            while ((length = in.read(data)) != -1) {
                temp = Arrays.copyOf(data, length);
                out.write(temp, 0, length);
                out.flush();
            }
            boolean added = SupplierEntity.addSupplier(Name,Status,img);
            if (added) {
                request.setAttribute("UpdateStatusSup", "Đã thêm nhà sản xuất " + Name);
            } else {
                request.setAttribute("UpdateStatusSup", "Không thêm được nhà sản xuất " + Name);
            }
            request.getRequestDispatcher("resultDelSupllier").forward(request, response);
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