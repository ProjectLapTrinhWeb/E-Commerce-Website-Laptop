package vn.edu.nlu.db;

import java.sql.*;

public class ConnectionDB {
    static Connection cnt;

    public static Statement connect() throws SQLException, ClassNotFoundException {
        if (cnt == null || cnt.isClosed()) {
            Class.forName("org.mariadb.jdbc.Driver");
            cnt = DriverManager.getConnection("jdbc:mariadb://localhost:3306/projectWeb?useUnicode=true&characterEncoding=utf-8", "root", "");
        }
        return cnt.createStatement();
    }

    public static PreparedStatement connect(String sql) throws ClassNotFoundException, SQLException {
        if (cnt == null || cnt.isClosed()) {
            Class.forName("org.mariadb.jdbc.Driver");
            cnt = DriverManager.getConnection("jdbc:mariadb://localhost:3306/projectWeb?useUnicode=true&characterEncoding=utf-8", "root", "");
        }
        return cnt.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
    }

    public static void close() throws SQLException {
        if (!cnt.isClosed()) {
            cnt.close();
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Statement statement = ConnectionDB.connect();
        ResultSet rs = statement.executeQuery("select * from user");
        rs.last();
        System.out.println(rs.getRow());
        rs.beforeFirst();
        while (rs.next()) {
            System.out.println(rs.getString(2));
        }
    }
}
