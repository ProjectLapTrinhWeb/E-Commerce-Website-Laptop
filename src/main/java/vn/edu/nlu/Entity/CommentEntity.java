package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.Comments;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentEntity {
    public static List<Comments> getAllComment(String ProductID) throws SQLException {
        List<Comments> rs = new ArrayList<Comments>();
        String sql = "select c.ID, u.userName userName, c.userID, c.ProductID, c.Content from comment c join users u  on c.UserID = u.ID where ProductID = '" + ProductID + "'";

        return getFromDB(sql, rs);
    }

    public static Comments getOneComment(ResultSet rst) throws SQLException {
        String ID = rst.getString("ID");
        String userName = rst.getString("userName");
        String userID = rst.getString("userID");
        String ProductID = rst.getString("ProductID");
        String Content = rst.getString("Content");
        return new Comments(ID, userName, userID, ProductID, Content);
    }

    public static List<Comments> getLimitComment(int id, int limit, int offset) throws SQLException {
        List<Comments> rs = new ArrayList<Comments>();
        String sql = "select c.id, u.UserName userName, c.UserID, c .ProductID, c.Content from comment c join users u on c.UserID=u.ID where ProductID = '" + id + "'  limit " + limit + " offset " + offset;

        return getFromDB(sql, rs);
    }

    public static String nextID() throws SQLException, ClassNotFoundException {
        String sql = "select avg(ID) as avgId from comment";
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

    public static boolean addComment(String userID, String ProductID, String content) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        try {
            String sql = "insert into comment(UserID,ProductID, Content) values('" + userID + "','" + ProductID + "','" + content + "')";
            System.out.println(sql);
            ps = ConnectionDB.connect(sql);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            if (!ps.isClosed() || ps != null)
                ps.close();
        }
        return true;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(addComment("1", "2", "aaaaa"));
//        System.out.println(getAllComment("2"));
//        System.out.println(addComment("24","54","nhubui"));
    }

    public static List<Comments> getFromDB(String sql, List<Comments> rs) throws SQLException {
        PreparedStatement ps = null;
        try {
            ps = ConnectionDB.connect(sql);
            ResultSet rst = ps.executeQuery();
            rst.last();
            int i = rst.getRow();
            rst.beforeFirst();
            while (rst.next() && i >= 1) {
                rs.add(getOneComment(rst));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new ArrayList<Comments>();
        } finally {
            if (!ps.isClosed() && ps != null)
                ps.close();
        }
        return rs;
    }
}
