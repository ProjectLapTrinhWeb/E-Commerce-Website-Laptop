package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.MyDate;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class ProductEntity {
    public static List<Product> getAllProduct() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product";

        return getFromDB(sql, rs);
    }

    public static List<Product> getDiscountProduct() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where DISCOUNT IS NOT NULL";

        return getFromDB(sql, rs);
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(getDiscountProduct());

    }

    public static List<Product> getHomeProduct() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where categoryId = '1'";

        return getFromDB(sql, rs);
    }

    public static Product getId(int id) throws SQLException, ClassNotFoundException {
        String sql = "select * from product where id = '?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ps.setInt(1, id);
        ResultSet rst = ps.executeQuery();

        return getOneProduct(rst);
    }

    public static Product getName(String name) throws SQLException, ClassNotFoundException {
        String sql = "select * from product where name = '?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ps.setString(1, name);
        ResultSet rst = ps.executeQuery();

        return getOneProduct(rst);
    }

    public static Product getPrice(String price) throws SQLException, ClassNotFoundException {
        String sql = "select * from product where name = '?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
//        ps.setDouble(1, price);
        ResultSet rst = ps.executeQuery();

        return getOneProduct(rst);
    }

    public static List<Product> getFromDB(String sql, List<Product> rs) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = ConnectionDB.connect(sql);
            ResultSet rst = ps.executeQuery();
            rst.last();
            int i = rst.getRow();
            rst.beforeFirst();
            while (rst.next() && i > 1) {
                rs.add(getOneProduct(rst));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new ArrayList<Product>();
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rs;
    }

    public static Product getOneProduct(ResultSet rst) throws SQLException {
        String id = rst.getString("ID");
        String name = rst.getString("Name");
        String price = rst.getString("Price");
        double discount = rst.getDouble("Discount");
        String description = rst.getString("Description");
        String img = rst.getString("Image");
        int categoryId = rst.getInt(7);
        int supplierId = rst.getInt(8);
        String status = rst.getString(13);
        int quantity = rst.getInt("Quantity");
        return new Product(id, name, price, discount, description, img, categoryId, supplierId, status, quantity);
    }
}
