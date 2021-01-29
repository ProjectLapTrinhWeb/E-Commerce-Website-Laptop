package vn.edu.nlu.Entity;

import vn.edu.nlu.Beans.Order;
import vn.edu.nlu.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderEntity {
    public static List<Order> getAllOrder() throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders";

        return getFromDB(sql, rs);
    }

    public static List<Order> getCancelOrder() throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders where status like'%huy%'";

        return getFromDB(sql, rs);
    }

    public static List<Order> getShippingOrder() throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders where status like'%dang giao%'";

        return getFromDB(sql, rs);
    }

    public static List<Order> getDeliveredOrder() throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders where status like'%da giao%'";

        return getFromDB(sql, rs);
    }


    public static List<Order> getFromDB(String sql, List<Order> rs) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = null;
        ResultSet rst = null;
        try {
            ps = ConnectionDB.connect(sql);
            rst = ps.executeQuery();
            while (rst.next()) {
                rs.add(getOrder(rst));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (!rst.isClosed() || rst != null)
                rst.close();
            if (!ps.isClosed() || ps != null)
                ps.close();
            
        }
        return rs;
    }

    public static Order getOrder(ResultSet rst) throws SQLException {
        String id = rst.getString(1);
        int userId = rst.getInt(2);
        int paymentId = rst.getInt(3);
        String customerName = rst.getString(4);
        String phone = rst.getString(5);
        String address = rst.getString(6);
        String note = rst.getString(7);
        long totalPrice = rst.getLong(8);
        String status = rst.getString(9);

        return new Order(id, userId, paymentId, customerName, phone, address, note, totalPrice, status);
    }

    public static List<Order> getLimitOrder(int limit, int offset) throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders limit " + limit + " offset " + offset;

        return getFromDB(sql, rs);
    }

    public static List<Order> searchOrderByCustomerId(String searchKey) throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders where userId = '" + searchKey + "'";

        return getFromDB(sql, rs);
    }

    public static List<Order> getLimitSearchOrder(String searchKey, int limit, int offset) throws SQLException, ClassNotFoundException {
        List<Order> rs = new ArrayList<>();
        String sql = "select * from orders where userId = '" + searchKey + "' limit " + limit + " offset " + offset;

        return getFromDB(sql, rs);
    }

    public static Order getById(String id) throws SQLException, ClassNotFoundException {
        String sql = "select * from orders where id = '" + id + "'";
        PreparedStatement ps = ConnectionDB.connect(sql);
        ResultSet rst = ps.executeQuery();
        rst.next();
        return getOrder(rst);
    }

    public static boolean updateOrder(Order o) throws SQLException {
        PreparedStatement ps = null;
        try {
            String sql = "update orders set customerName = '" + o.getCustomerName() + "', phone = '" + o.getPhone() + "', address = '" + o.getAddress() + "', status = '" + o.getStatus() + "' where id = '" + o.getId() + "'";
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
//        Order o = new Order();
//        o.setId("1");
//        o.setCustomerName("Hao Kylnnnnn");
//        o.setPhone("0372721409");
//        o.setAddress("Đồng Naiiiiii");
//        o.setStatus("Đã giao");
//        System.out.println(updateOrder(o));
    }

}
