package demo.context;

import java.sql.*;
import java.util.ArrayList;

public class ConnectionDB {
    public static Connection con;
    String sql;

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }
    }

    public static PreparedStatement preparedStatementConnect(String sql)throws ClassNotFoundException, SQLException {
        if(con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.prepareStatement(sql);
        } else {
            return con.prepareStatement(sql);
        }
    }

    public void thucThiSql(String sql) throws Exception {
        connect().executeUpdate(sql);
        //con.createStatement().executeUpdate(sql);
    }

    public ResultSet chonDuLieu(String sql) throws Exception {
        connect();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        // ResultSet rs = connect().executeQuery(sql);

        return rs;
    }

    public static boolean createTableIntoDatabase(String tableName, ArrayList<String> columm) {
        String sql = "CREATE TABLE " + tableName + " ( ";
        for (int i = 0; i < columm.size(); i++) {
            if (i != columm.size() - 1) {

                sql += columm.get(i) + "nvarchar(255), ";
            } else {
                // neu la cot cuoi cung thi dong ngoac va ;
                sql += columm.get(i) + "nvarchar(255));";
            }
        }
        try {
            //truyen doi tuong lay duoc vao
            con.createStatement().executeUpdate(sql);

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {

    }

}
