package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.Staff;
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
        try {
            String sql = "insert into supplier(id, name, status, image) values('" + nextID() + "', '" + name + "', '" + status + "', '" + img + "')";
            System.out.println(sql);
            ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            ps.close();

        }
        return true;
    }

    public static boolean deleteSupplier(String id) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "delete from supplier where id = '" + id + "'";
            ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            ps.close();

        }
        return true;
    }

    public static boolean updateSupplier(String id, String name, String status, String img) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "update supplier set status = '" + status + "', name = '" + name + "', Image = '" + img + "' where id = '" + id + "'";
            ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
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
        System.out.println(updateSupplier("1","hayate","Active","123"));
    }
}
