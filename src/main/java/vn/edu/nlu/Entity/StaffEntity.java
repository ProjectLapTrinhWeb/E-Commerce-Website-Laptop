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
        String sql = "select u.id, u.FullName, u.Image, u.Email, u.phone, r.name as role, u.status from users u join role r on u.roleId=r.id where r.name = 'Staff' or r.name = 'Admin' order by r.name desc";
        return getFromDB(sql, rs);
    }

    public static Staff getOneStaff(ResultSet rst) throws SQLException {
        String id = rst.getString("ID");
        String name = rst.getString("FullName");
        String img = rst.getString("Image");
        String mail = rst.getString("EMail");
        String phone = rst.getString("Phone");
        String role = rst.getString("Role");
        String status = rst.getString("Status");
        return new Staff(id, name, img, mail, phone, role, status);
    }

    public static List<Staff> getFromDB(String sql, List<Staff> rs) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = ConnectionDB.connect(sql);
            ResultSet rst = ps.executeQuery();
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
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rs;
    }

    public static List<Staff> getLimitStaff(int limit, int offset) throws SQLException {
        String sql = "select u.id, u.FullName, u.Image, u.Email, u.phone, r.name as role, u.status from users u join role r on u.roleId=r.id where r.name = 'Staff' or r.name = 'Admin' order by r.name desc limit " + limit + " offset " + offset;
        List<Staff> rs = new ArrayList<>();

        return getFromDB(sql, rs);
    }
}
