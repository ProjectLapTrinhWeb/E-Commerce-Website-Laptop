package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.User;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserEntity {
    public static User Login(String userName, String password) throws SQLException, ClassNotFoundException {
        String sql = "select * from Users where userName ='" + userName + "' && password ='" + password + "'";
        PreparedStatement ps = ConnectionDB.connect(sql);

        ResultSet rst = ps.executeQuery();
        rst.last();
        int row = rst.getRow();
        if (row == 1) {
            rst.first();
            return getUser(rst);
        } else {
            return null;
        }
    }

    public static boolean Register(String username, String password, String Email, String RoleID) throws SQLException, ClassNotFoundException {
        String sql = "insert into Users(username,password,email, fullname, RoleID) values('" + username + "', '" + password + "','" + Email + "', '" + username + "','" + RoleID + "')";
        PreparedStatement ps = ConnectionDB.connect(sql);
        System.out.println(sql);
        try {
            ps.execute();
        } catch (Exception e) {
            return false;

        } finally {
            return true;
        }

    }

    public static boolean changePassword(String password, String Cpassword, String id) throws SQLException, ClassNotFoundException {

        String sql = "update Users set Password ='" + Cpassword + "' where id ='" + id + "' and Password = '" + password + "'";
//        System.out.println(sql);
        PreparedStatement ps = ConnectionDB.connect(sql);
        int row = ps.executeUpdate();
        if (row == 1) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean changeEmail(String Email, String id) throws SQLException, ClassNotFoundException {
        String sql = "update Users(Email) set Email = '" + Email + "' where id = '" + id + "'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();

        rst.last();
        int row = rst.getRow();
        if (row == 1) {
            rst.first();
            return true;
        } else {
            return false;
        }
    }

    public static boolean addAddress(String address , String id) throws SQLException, ClassNotFoundException {
        String sql = "update Users set Address= '"+address+"' where id = "+id+"";
        System.out.println(sql);
        PreparedStatement ps = ConnectionDB.connect(sql);
        int row = ps.executeUpdate();
        if (row == 1) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean addPhone(String phone) throws SQLException, ClassNotFoundException {
        String sql = "insert into User(Phone) values('" + phone + "') ";
        PreparedStatement ps = ConnectionDB.connect(sql);
        System.out.println(sql);
        try {
            ps.execute();
        } catch (Exception e) {
            return false;

        } finally {
            return true;
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        User u = Login("mmm", "123");
//        System.out.println(u.getUserName());
//        System.out.println(Register("nch","132@gmail.com","123"));
    }

    public static List<User> getFromDB(PreparedStatement ps) throws SQLException {
        List<User> rs = new ArrayList<User>();
        ResultSet rst = ps.executeQuery();
        while (rst.next()) {
            rs.add(getUser(rst));
        }
        return rs;
    }

    public static User getUser(ResultSet rst) throws SQLException {
        String ID = rst.getString("ID");
        String userName = rst.getString("UserName");
        String password = rst.getString("Password");
        String FullName = rst.getString("FullName");
        String Email = rst.getString("Email");
        String Phone = rst.getString("Phone");
        String Address = rst.getString("Address");
        String Status = rst.getString("Status");
        String RoleID = rst.getString("RoleID");
        String Image = rst.getString("Image");
        return new User(ID, userName, password, FullName, Email, Phone, Address, Status, RoleID, Image);
    }
}
