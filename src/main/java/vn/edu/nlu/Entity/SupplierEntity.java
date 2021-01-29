package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.Product;
import vn.edu.nlu.Beans.Supplier;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SupplierEntity {
    public static List<Supplier> getAllSupplier() throws SQLException {
        List<Supplier> rs = new ArrayList<>();
        String sql = "select * from supplier";
        return getFromDB(sql, rs);
    }

    public static List<Supplier> getFromDB(String sql, List<Supplier> rs) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = ConnectionDB.connect(sql);
            ResultSet rst = ps.executeQuery();
            rst.last();
            int i = rst.getRow();
            rst.beforeFirst();
            while (rst.next() && i >= 1) {
                rs.add(getOneSupplier(rst));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new ArrayList<Supplier>();
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rs;
    }

    public static String nextID() throws SQLException, ClassNotFoundException {
        String sql = "select avg(id) as avgId from supplier";
        PreparedStatement ps = null;
        ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        double crntID = Double.parseDouble(rst.getString("avgId")) * 2;
        int temp = (int) crntID;
        rst.close();
        ps.close();
        return temp + "";
    }

    public static boolean addSupplier(String name, String status, String img) throws SQLException {
        PreparedStatement ps = null;
        boolean rlt = true;
        try {
            String sql = "insert into supplier(id, name, status, image) values(?,?,?,?)";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, nextID());
            ps.setString(2, name);
            ps.setString(3, status);
            ps.setString(4, img);
            System.out.println(sql);
            ps.execute();
            return rlt;
        } catch (Exception e) {
            e.printStackTrace();
            rlt = false;
            return rlt;
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
    }

    public static boolean deleteSupplier(String id) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "delete from supplier where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, id);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();

        }
        return true;
    }

    public static boolean updateSupplier(String id, String name, String status, String img) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "update supplier set status = ?, name = ?, Image = ? where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, status);
            ps.setString(2, name);
            ps.setString(3, img);
            ps.setString(4, id);

            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();

        }
        return true;
    }

    public static Supplier getOneSupplier(ResultSet rst) throws SQLException {
        String id = rst.getString("ID");
        String name = rst.getString("Name");
        String status = rst.getString("Status");
        String img = rst.getString("Image");
        return new Supplier(id, name, status, img);
    }


    public static List<Supplier> getLimitSupplier(int limit, int offset) throws SQLException {
        String sql = "select * from supplier limit " + limit + " offset " + offset;
        List<Supplier> rs = new ArrayList<>();
        return getFromDB(sql, rs);
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        List<Supplier> suppliers = getAllSupplier();
        Product p =ProductEntity.getId(1);
        System.out.println(p.getSupplierId()+"");
        for (Supplier s : suppliers) {
            if (s.getId().equals(p.getSupplierId()+""))
                System.out.println(s.getId() + ":" + s.getName());
        }
    }
}
