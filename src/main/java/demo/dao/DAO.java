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
    public Product getProductByID(String id) {
        String query = " SELECT * FROM product WHERE id =?;";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1,id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7));

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
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
    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = " SELECT * FROM product WHERE sell_ID = ?";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setInt(1,id);
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

    public void insertProduct(String name,String image, String price,String priceSale,String title,String description,String cID, int sellID){
        String query = " INSERT into product(`name`,image,price,priceSale,tittle,description,cID,sell_ID) VALUES (?,?,?,?,?,?,?,?); ";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, priceSale);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, cID);
            ps.setInt(8, sellID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(String pid){
        String query = " DELETE FROM product WHERE id = ?";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, pid);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();

        List<Category> listC = dao.getAllCategory();
        List<Product> listL = dao.getLatest();

/*
        dao.insertProduct("Samsung Galaxy A11",
                "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png",
                "7100000",
                "5500000","a", "a","1",1);
*/


        dao.getProductByID("2");
/*        List<Product> list = dao.getAllProduct();
        for (Product p : list) {
            System.out.println(p);
        }*/
/*        for (Category c : listC) {
            System.out.println(c);
        }*/
    }
}
