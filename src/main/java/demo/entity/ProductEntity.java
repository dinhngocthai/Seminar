package demo.entity;

import demo.beans.Product;
import demo.db.ConnectionDB;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class ProductEntity {

    public List<Product> getAllProduct() {
        List<Product> re = new LinkedList<>();
        Statement s = null;

        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from products ");
            while (rs.next()) {
                re.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getLong(5)));
            }
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public int insertProduct(Collection<Product> data) {
        Statement s = null;

        try {
            s = ConnectionDB.connect();
            String sql = "INSERT INTO products (id, name, img, price, priceSale)" + "\n" +
                    "VALUES";
            int i = 0;
            for (Product datum : data) {
                i++;
                if (i != data.size()) {
                    sql += "(" + datum.getId() + ",\"" + datum.getName() + "\",\"" + datum.getImg() + "\"," + datum.getPrice() + "," + datum.getPriceSale() + ")," + "\n";
                } else {
                    sql += "(" + datum.getId() + ",\"" + datum.getName() + "\",\"" + datum.getImg() + "\"," + datum.getPrice() + "," + datum.getPriceSale() + ")" + "\n";

                }
            }
            int re = s.executeUpdate (sql);
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Product getByID(String id) {
        PreparedStatement s = null;

        try {
            String sql = "select * from products where id=? ";
            s = ConnectionDB.connect(sql);
            s.setString(1, id);
            ResultSet rs = s.executeQuery();
            Product p;
            if(rs.next()){
                p = new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4),
                        rs.getLong(5)
                );
                rs.close();
                s.clearParameters();
                return p;

            }
            return null;


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
