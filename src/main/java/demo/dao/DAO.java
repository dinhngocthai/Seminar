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

/*
===============================Get ALL===============================
*/
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
    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = " SELECT * FROM Account";
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));

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
/*
    ===============================Get Specific===============================
*/
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
        String query = " SELECT * FROM product WHERE id =?";
/*
        Product p = new  Product();
*/
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
    public Account getAccountByID(String uid) {
        String query = " SELECT * FROM account WHERE uid =?";
/*
        Product p = new  Product();
*/
        try {

            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1,uid);
            rs = ps.executeQuery();

            while (rs.next()) {
                return  new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));

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
    public List<Product> getPaging(int index){
        List<Product> list= new ArrayList<>();

        String query= "SELECT * FROM PRODUCT LIMIT 20 offset ?";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setInt(1,(index-1)*5);
            rs=ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

/*    public List<Product> getProductBySellID(int id) {
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
    }*/

/*
===============================Login Signup===============================
*/
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
                return  new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
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
                return  new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String username, String password) {
        String query = " INSERT INTO account(`user`, `password`,isAdmin,fullname,address,phone) VALUES (?,?,0, NULL,NULL,NULL);";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();

        }
    }
/*
    ========================================Insert, Delete, Edit========================================
*/
    public void insertAccount(String username, String password){
        String query = " INSERT into Account(user,password,isAdmin,fullname,address,email,phone) VALUES (?,?,0,NULL,NULL,NULL,NULL); ";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteAccount(String uid){
        String query = " DELETE FROM account WHERE uid = ?";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, uid);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void editAccount(String username, String password, String fullname, String address, String email, String phone, String uid){
/*
        String query = " INSERT into product(`name`,image,price,priceSale,tittle,description,cID,sell_ID) VALUES (?,?,?,?,?,?,?,?); ";
*/
        String query = "UPDATE account set user =?, \n" +
                "password= ?, \n" +
                "fullname=?, \n" +
                "email=?, \n" +
                "address=?,\n" +
                "phone=?WHERE uid = ?;";


        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, fullname);
            ps.setString(4, address);
            ps.setString(5, email);
            ps.setString(6, phone);
            ps.setString(7, uid);

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertProduct(String name,String image, String price,String priceSale,String title,String description,String cID){
        String query = " INSERT into product(`name`,image,price,priceSale,tittle,description,cID) VALUES (?,?,?,?,?,?,?); ";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, priceSale);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, cID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void editProduct(String name,String image, String price,String priceSale,String title,String description,String cID, String pid){
/*
        String query = " INSERT into product(`name`,image,price,priceSale,tittle,description,cID) VALUES (?,?,?,?,?,?,?,?); ";
*/
        String query = "  UPDATE product set name = ?, \n" +
                        "image = ? ,\n" +
                        "price = ?,\n" +
                        "priceSale = ?,\n" +
                        "tittle =  ?,\n" +
                        "description = ?,\n" +
                        "cID = ?\n" +
                        "WHERE id = ?;";


        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, priceSale);
            ps.setString(5, title);
            ps.setString(6, description);
            ps.setString(7, cID);
            ps.setString(8, pid);
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
/*======================================Pagination======================================*/

    public int getnumberpage(){
        String query = " SELECT COUNT(*)\n" +
                "FROM product";
        try {
            ps = new ConnectionDB().preparedStatementConnect(query);
            rs=ps.executeQuery();
            while (rs.next()){
                int total= rs.getInt(1);
                int countPage=0;
                countPage= total/20;
                if(total % 20 != 0){
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return  0;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();

        List<Category> listC = dao.getAllCategory();
        List<Product> listP = dao.getAllProduct();

        List<Product> listL = dao.getLatest();
        List<Account> listA = dao.getAllAccount();
        System.out.println(dao.getPaging(4));
        System.out.println(dao.getnumberpage());
        System.out.println(listA);
/*
        dao.editAccount("tranvu","123456789","vu ngoc bao tran", "phan van thuan","baotran@gmail.com","0941848715",111);
*/
/*        for (Account a : listA) {
            System.out.println(a);}
        */
/*
        dao.insertProduct("Samsung Galaxy A11",
                "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png",
                "7100000",
                "5500000","a", "a","1");
*/
/*
        dao.editProduct("Samsung Galaxy A11", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png",
                "8100000",
                "5500000","a", "a","1","72");
*/

        /*List<Product> list = dao.getProductByCateID("4");*/
/*        for (Product p : listP) {
            System.out.println(p);
        }*//*
        for (Category c : listC) {
            System.out.println(c);
        }*/
    }
}
