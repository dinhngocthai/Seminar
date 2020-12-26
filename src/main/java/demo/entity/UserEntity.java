package demo.entity;

import demo.beans.Product;
import demo.beans.User;
import demo.db.ConnectionDB;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public class UserEntity {


    public List<User> getAllUser() {
        List<User> re = new LinkedList<>();
        Statement s = null;

        try {
            s = ConnectionDB.connect();
            ResultSet rs = s.executeQuery("select * from users ");
            while (rs.next()) {
                re.add(new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return new LinkedList<>();
        }
    }

    public int insertUser(Collection<User> userdata) {
        Statement s = null;

        try {
            s = ConnectionDB.connect();
            String sql = "INSERT INTO users (id, fulname, username, password, address,email,phone)" + "\n" +
                    "VALUES";
            int i = 0;
            for (User usum : userdata) {
                i++;
                if (i != userdata.size()) {
                    sql += "(" + usum.getId() + ",\"" + usum.getFullName() + "\",\"" + usum.getUsername() + "\"," + usum.getPassword() +"," + usum.getaddress() +"," + usum.getEmail() +  "," + usum.getPhone() + ")," + "\n";
                } else {
                    sql += "(" + usum.getId() + ",\"" + usum.getFullName() + "\",\"" + usum.getUsername() + "\"," + usum.getPassword() +"," + usum.getaddress() +"," + usum.getEmail() +  "," + usum.getPhone() + ")" + "\n";

                }
            }
            int re = s.executeUpdate(sql);
            s.close();
            return re;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

}
