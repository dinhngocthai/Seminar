package demo.dao;

import demo.context.ConnectionDB;
import demo.entity.Account;
import demo.entity.Category;
import demo.entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = " SELECT * FROM PRODUCT";
        try {

                ps = new ConnectionDB().preparedStatementConnect(query);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getDouble(4),
                            rs.getDouble(5),
                            rs.getString(6),
                            rs.getString(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = " SELECT * FROM category";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),

                        rs.getString(2)));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


    public List<Product> getLatest() {
        List<Product> list = new ArrayList<>();
        String query = " SELECT *FROM product\n" +
                "ORDER BY id DESC\n" +
                "LIMIT 0, 3";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Product> getHighestSale() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                "ORDER BY (price- priceSale)  DESC\n" +
                "LIMIT 0, 3";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Product> getLowestPrice() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product\n" +
                "ORDER BY priceSale ASC\n" +
                "LIMIT 0, 3";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Product> getProductByCateID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = " SELECT * FROM product WHERE cid = ?;";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public Account login(String username, String password) {
        String query = " SELECT * FROM account \n" +
                "WHERE user = ?\n" +
                "AND password = ?";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public Account checkAccountExist(String username) {
        String query = " SELECT * FROM account \n" +
                "WHERE user = ?\n";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String username, String password) {
        String query = " INSERT INTO account(`user`, `password`, isSell,isAdmin) VALUES (?,?,0,0);\n";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();

        }

    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        List<Product> listL = dao.getLatest();
        List<Product> listS = dao.getProductByCateID("1")  ;
        for (Product p : listS) {
            System.out.println(p);
        }
/*        for (Category c : listC) {
            System.out.println(c);
        }*/
    }
}
