package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//< Stashed ch<<<<<< Updated upstream
//        System.out.println(getProductWithRangePrice("5000000","10000000"));
//=======
//        System.out.println(getProductWithCategoryID(1));
//>>>>>>>anges
    }

    public static List<Product> getHomeProduct() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where categoryId = '1'";
        return getFromDB(sql, rs);
    }



    public static List<Product> getProductWithId(String id) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where id = '"+id+"' ";
        return getFromDB(sql, rs);

    }


    public static List<Product> getProductWithName(String name) throws SQLException, ClassNotFoundException {
        List<Product>  rs =  new ArrayList<Product>();
        String sql = "select * from product where name like '%"+name+"%'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getProductWithPrice(String price) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price = '"+price+"'";
        return  getFromDB(sql, rs);
    }

    public static List<Product> getProductWithRangePrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  "+Integer.parseInt(fromPrice)+" and "+Integer.parseInt(toPrice)+";";
        return  getFromDB(sql, rs);
    }



    public static List<Product> getProductWithCategoryID(int categoryId) throws SQLException, ClassNotFoundException{
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where categoryID = '"+categoryId+"'";
        return getFromDB(sql,rs);
    }


    public static List<Product> getLaptopGaming() throws SQLException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryID=c.ID where c.Name = 'Gaming'";
        return getFromDB(sql,rs);
    }

    public static List<Product> getLaptopOffice() throws SQLException{
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryId=c.ID where c.Name = 'Office'";
        return getFromDB(sql, rs);
    }

    public static List<Product> getLaptopGraphic() throws SQLException{
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product p join category c on p.CategoryId=c.ID where c.Name = 'Graphic'";
        return getFromDB(sql, rs);

    }


    public static List<Product> getProductWithDescensionPrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  "+Integer.parseInt(fromPrice)+" and "+Integer.parseInt(toPrice)+" Order By price desc;";
        return  getFromDB(sql, rs);
    }

    public static List<Product> getProductWithAscensionPrice(String fromPrice, String toPrice) throws SQLException, ClassNotFoundException {
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where price between  "+Integer.parseInt(fromPrice)+" and "+Integer.parseInt(toPrice)+" Order By price asc;";
        return  getFromDB(sql, rs);
    }


    public static List<Product> getProductWithSupplierID(int supplierId) throws SQLException, ClassNotFoundException{
        List<Product> rs = new ArrayList<Product>();
        String sql = "select * from product where supplierId = '"+supplierId+"'";
        return getFromDB(sql,rs);
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
}
