package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.MyDate;
import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.io.IOException;
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

    public static Product getId(int id) throws SQLException, ClassNotFoundException {
        String sql = "select * from product where id = '" + id + "'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        return getOneProduct(rst);
    }

    public static Product getName(String name) throws SQLException, ClassNotFoundException {
        String sql = "select * from product where name = '" + name + "'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        return getOneProduct(rst);
    }


    public static List<Product> getHomeProduct() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where categoryId = '1'";
        return getFromDB(sql, rs);
    }


    public static List<Product> getProductWithId(String id) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where id = '" + id + "' ";
        return getFromDB(sql, rs);
    }


    public static List<Product> getProductWithName(String name) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where name like '%" + name + "%'";
        return getFromDB(sql, rs);

    }


    public static List<Product> getProductWithPrice(String price) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price = '" + price + "'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getProductWithRangePrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  " + Integer.parseInt(fromPrice) + " and " + Integer.parseInt(toPrice) + ";";
        return getFromDB(sql, rs);
    }


    public static List<Product> getProductWithDescensionPrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  " + Integer.parseInt(fromPrice) + " and " + Integer.parseInt(toPrice) + " Order By price desc;";
        return getFromDB(sql, rs);
    }

    public static List<Product> getProductWithAscensionPrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  " + Integer.parseInt(fromPrice) + " and " + Integer.parseInt(toPrice) + " Order By price asc;";
        return getFromDB(sql, rs);
    }

    public static List<Product> getProductWithCategoryID(int categoryId) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where categoryID = '" + categoryId + "'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getProductWithSupplierID(int supplierId) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where supplierId = '" + supplierId + "'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getLaptopGaming() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryID=c.ID where c.Name = 'Gaming'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getLaptopOffice() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryId=c.ID where c.Name = 'Office'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getLaptopGraphic() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryId=c.ID where c.Name = 'Graphic'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getFromDB(String sql, List<Product> rs) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = ConnectionDB.connect(sql);
            ResultSet rst = ps.executeQuery();
            rst.last();
            int i = rst.getRow();
            rst.beforeFirst();
            while (rst.next() && i >= 1) {
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

    public static boolean addProduct(Product p) throws SQLException, ClassNotFoundException {
        try {
            String id = nextID();
            String name = p.getName();
            String price = p.getPrice();
            int supplierID = p.getSupplierId();
            double discount = p.getDiscount();
            int categoryID = p.getCategoryId();
            int quantity = p.getQuantity();
            String status = p.getStatus();
            String img = p.getImg();
            String sql = "insert into product(id, name, price, supplierID, discount, categoryID, image, status, quantity) values('" + id + "', '" + name + "', " + price + ", '" + supplierID + "', '" + discount + "', " + categoryID + ", '" + img + "', '" + status + "', " + quantity + ")";
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static boolean updateProduct(Product p) {
        try {
            String sql = "update product set name = '" + p.getName() + "', price = " + p.getPrice() + ", supplierID = '" + p.getSupplierId() + "', discount = " + p.getDiscount() + ", categoryID = '" + p.getCategoryId() + "', quantity = " + p.getQuantity() + ", status ='" + p.getStatus() + "', image ='" + p.getImg() + "' where id = '" + p.getId() + "'";
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static String nextID() throws SQLException, ClassNotFoundException {
        String sql = "select avg(id) from product";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        double currentID = Double.parseDouble(rst.getString(1)) * 2;
        int temp = (int) currentID;
        rst.close();
        ps.close();
        return temp + "";
    }

    public static List<Product> getLimitProduct(int limit, int offset) throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product limit " + limit + " offset " + offset;

        return getFromDB(sql, rs);
    }

    public static List<Product> getLimitSearchProduct(String searchKey, int limit, int offset) throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where name like '%" + searchKey + "%' limit " + limit + " offset " + offset;

        return getFromDB(sql, rs);
    }

    public static List<Product> searchProductByName(String name) throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where name like '%" + name + "%'";

        return getFromDB(sql, rs);
    }

    public static boolean deleteProductByID(String id) {
        try {
            String sql = "delete from product where id =" + id;
            PreparedStatement ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
