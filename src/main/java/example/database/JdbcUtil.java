package example.database;
import java.sql.*;


public class JdbcUtil {
    static{
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static Connection getConnection() throws SQLException{

//        String dbUrl="jdbc:mysql://localhost:3306/newdatabase?serverTimezone=UTC";
//        String dbUser="root";
//        String dbPassword="Mengchuize";

//        return DriverManager.getConnection(dbUrl,dbUser,dbPassword);
        //数据库连接池
        return DatabasePool.getHikarDataSourse().getConnection();
    }

    public static void close(Statement stmt,Connection conn) throws SQLException{
        stmt.close();
        conn.close();
    }
}

