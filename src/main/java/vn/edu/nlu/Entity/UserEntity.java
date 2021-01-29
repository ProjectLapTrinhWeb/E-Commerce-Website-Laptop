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
        PreparedStatement ps = null;
        ResultSet rst = null;
        try {
            String sql = "select * from Users where userName =? && password =?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, userName);
            ps.setString(2, password);
            rst = ps.executeQuery();
            rst.last();
            int row = rst.getRow();
            if (row == 1) {
                rst.first();
                return getUser(rst);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (!rst.isClosed() || rst != null)
                rst.close();
            if (!ps.isClosed() && ps != null)
                ps.close();
        }

        return null;
    }

    public static boolean Register(String username, String password, String Email, String RoleID) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        try {
            String sql = "insert into Users(username,password,email, RoleID) values(?,?,?,?)";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, Email);
            ps.setString(4, RoleID);
            System.out.println(sql);
            ps.execute();
        } catch (Exception e) {
            return false;
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return true;
    }

    public static boolean changePassword(String password, String Cpassword, String id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        try {
            String sql = "update Users set Password =? where id =? and Password = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, Cpassword);
            ps.setString(2, id);
            ps.setString(3, password);
//        System.out.println(sql);
            int row = ps.executeUpdate();
            if (row == 1) return true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return false;
    }

    public static boolean changeEmail(String Email, String id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        ResultSet rst = null;
        boolean rlt = true;
        try {
            String sql = "update Users set Email =? where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, Email);
            ps.setString(2, id);
            rst = ps.executeQuery();
            rst.last();
            int row = rst.getRow();
            if (row == 1) {
                rst.first();
                return rlt;
            }
        } catch (Exception e) {
            e.printStackTrace();
            rlt = false;
            return rlt;
        } finally {
            if (!rst.isClosed() || rst != null)
                rst.close();
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rlt;
    }

    public static boolean addAddress(String address, String id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        try {
            String sql = "update Users set Address= ? where id =?";
            System.out.println(sql);
            ps = ConnectionDB.connect(sql);
            ps.setString(1, address);
            ps.setString(2, id);
            int row = ps.executeUpdate();
            if (row == 1) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return false;
    }

    public static boolean addPhone(String phone, String id) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        try {
            String sql = "update users set Phone = ? and id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, phone);
            ps.setString(2, id);
            System.out.println(sql);
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

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        User u = Login("mmm", "321");
//        System.out.println(u.toString());
//        System.out.println(changePassword("123", "321", "8"));
        System.out.println(changeEmail("123496@gmail.com", "8"));
        User u = Login("mmm", "321");
        System.out.println(u.toString());
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
