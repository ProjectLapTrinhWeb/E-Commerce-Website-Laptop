package vn.edu.nlu.db;
import java.sql.Connection;
public interface IConnectionPool {
    public Connection getConnection();

    public boolean releaseConnection(Connection connection);
}
