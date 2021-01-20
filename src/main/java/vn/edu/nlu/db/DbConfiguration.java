package vn.edu.nlu.db;

public class DbConfiguration {
    public static final String HOST_NAME = "localhost";
    public static final String DB_NAME = "projectWeb";
    public static final String DB_PORT = "3306";
    public static final String USER_NAME = "root";
    public static final String PASSWORD = "";
    public static final String DB_DRIVER = "org.mariadb.jdbc.Driver";
    public static final int DB_MIN_CONNECTIONS = 2;
    public static final int DB_MAX_CONNECTIONS = 10;
    public static final long TIME_OUT = 200;

    public static final String CONNECTION_URL = "jdbc:mariadb://" + HOST_NAME + ":" + DB_PORT + "/" + DB_NAME;

    private DbConfiguration() {
        super();
    }
}
