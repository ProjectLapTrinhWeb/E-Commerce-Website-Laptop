package vn.edu.nlu.Entity;

import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerEntity {
    public static List<Customer> getActiveCustomer() throws SQLException, ClassNotFoundException {
        String sql = "select * from user where RoleID ='?' and Status = '?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ps.setString(1, "2");
        ps.setString(2, "Active");
        return getFromDB(ps);
    }

    public static List<Customer> getUnActiveCustomer() throws SQLException, ClassNotFoundException {
        String sql = "select * from user where RoleID ='?' and Status = '?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ps.setString(1, "2");
        ps.setString(2, "Un-Active");
        return getFromDB(ps);
    }

    public static List<Customer> getAllCustomer() throws SQLException, ClassNotFoundException {
        String sql = "select * from user where RoleID ='?'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ps.setString(1, "2");
        return getFromDB(ps);
    }

    public static List<Customer> getFromDB(PreparedStatement ps) throws SQLException {
        List<Customer> rs = new ArrayList<>();
        ResultSet rst = ps.executeQuery();
        while (rst.next()) {
            rs.add(getCustomer(rst));
        }
        return rs;
    }

    public static Customer getCustomer(ResultSet rst) throws SQLException {
        String id = rst.getString("ID");
        String name = rst.getString("FullName");
        String mail = rst.getString("ID");
        String phone = rst.getString("ID");
        String status = rst.getString("ID");
        return new Customer(id, name, mail, phone, status);
    }
}
