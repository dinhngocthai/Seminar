package demo.db;

import demo.beans.Product;
import demo.entity.ProductEntity;
import demo.entity.UserEntity;
import demo.filter.Data;
import demo.filter.UserData;

import java.sql.*;
import java.util.List;

public class ConnectionDB {
    static Connection con;

    public static Statement connect() throws ClassNotFoundException, SQLException {
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.createStatement();
        } else {
            return con.createStatement();
        }
    }

    public static PreparedStatement connect(String sql) throws ClassNotFoundException, SQLException{
        if (con == null || con.isClosed()) {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?useUnicode=true&characterEncoding=utf-8", "root", "");
            return con.prepareStatement(sql);
        } else {
            return con.prepareStatement(sql);
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ProductEntity pe= new ProductEntity();
        pe.insertProduct(Data.data.values()) ;

        Statement s = ConnectionDB.connect();
        ResultSet rs = s.executeQuery("select * from user ");
        rs.last();
        System.out.println(rs.getRow());
        rs.beforeFirst();
        while (rs.next()) {
            System.out.println("\n" +rs.getString(2) );

            System.out.println(rs.getString(  3));

        }
    }
}
