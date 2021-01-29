package vn.edu.nlu.Entity;


import vn.edu.nlu.Beans.Staff;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StaffEntity {
    public static List<Staff> getAllStaff() throws SQLException {
        List<Staff> rs = new ArrayList<>();
        String sql = "select u.id, u.FullName, u.UserName, u.Password, u.Image, u.Email, u.phone, r.name as role, u.status from users u join role r on u.roleId=r.id where r.name = 'Staff' or r.name = 'Admin' order by r.name asc";

        return getFromDB(sql, rs);
    }

    public static Staff getOneStaff(ResultSet rst) throws SQLException {
        String id = rst.getString("ID");
        String name = rst.getString("FullName");
        String userName = rst.getString("UserName");
        String password = rst.getString("Password");
        String img = rst.getString("Image");
        String mail = rst.getString("EMail");
        String phone = rst.getString("Phone");
        String role = rst.getString("Role");
        String status = rst.getString("Status");
        return new Staff(id, name, userName, password, img, mail, phone, role, status);
    }

    public static List<Staff> getFromDB(String sql, List<Staff> rs) throws SQLException {
        PreparedStatement ps = null;
        ResultSet rst = null;
        try {
            ps = ConnectionDB.connect(sql);
            rst = ps.executeQuery();
            rst.last();
            int i = rst.getRow();
            rst.beforeFirst();
            while (rst.next() && i >= 1) {
                rs.add(getOneStaff(rst));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new ArrayList<Staff>();
        } finally {
            if(!rst.isClosed() || rst!=null)
                rst.close();
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rs;
    }

    public static List<Staff> getLimitStaff(int limit, int offset) throws SQLException {
        String sql = "select u.id, u.FullName, u.UserName, u.Password, u.Image, u.Email, u.phone, r.name as role, u.status from users u join role r on u.roleId=r.id where r.name = 'Staff' or r.name = 'Admin' order by r.name desc limit " + limit + " offset " + offset;
        List<Staff> rs = new ArrayList<>();

        return getFromDB(sql, rs);
    }

    public static boolean addStaff(Staff s) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "insert into users(id,fullName, userName, password, email, phone, status, roleId) values(?, ?, ?, ?, ?, ?, ?, ?)";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, nextID());
            ps.setString(2, s.getName());
            ps.setString(3, s.getUserName());
            ps.setString(4, s.getPassword());
            ps.setString(5, s.getMail());
            ps.setString(6, s.getPhone());
            ps.setString(7, "Active");
            ps.setString(8, "3");
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

    public static String nextID() throws SQLException, ClassNotFoundException {
        String sql = "select avg(id) from users";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        double currentID = Double.parseDouble(rst.getString(1)) * 2;
        int temp = (int) currentID;
        rst.close();
        ps.close();
        return temp + "";
    }

    public static boolean updateStaff(Staff s) throws SQLException {
        PreparedStatement ps = null;
        boolean rlt = true;
        try {
            String sql = "update users set fullName = ?, email = ?, phone = ?, roleId = ? , status = ? where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1, s.getName());
            ps.setString(2, s.getMail());
            ps.setString(3, s.getPhone());
            ps.setString(4, s.getRole());
            ps.setString(5, s.getStatus());
            ps.setString(6, s.getId());
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            rlt = false;
            return rlt;
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();

        }
        return rlt;
    }

    public static boolean deleteStaff(String id) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "delete from users where id = ?";
            ps = ConnectionDB.connect(sql);
            ps.setString(1,id);
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
        Staff s = new Staff();
        s.setName("hao");
        s.setUserName("dongquang");
        s.setPassword("123456");
        s.setMail("hao@gmail.com");
        s.setPhone("0372721409");
        System.out.println(addStaff(s));
    }

}
