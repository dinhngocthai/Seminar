package demo.filter;

import demo.beans.User;


import java.io.Serializable;
import java.util.HashMap;

public class UserData implements Serializable {

    public static HashMap<String, User> dataUser = new HashMap<>();

    static {
        dataUser.put("01",new User(01,"Ngoc Thai", "thai","123", "asd","thai@gmail.com",123123));
        dataUser.put("02",new User(02,"Bao Tran", "tran","123", "asd","baotran@gmail.com",109283123 ));
        dataUser.put("03",new User(03,"Thanh Quynh", "quynh","123", "asd","quynh@gmail.com",12312334 ));
        dataUser.put("04",new User(04,"Ngoc Hiep", "hiep","123", "asd","hiep@gmail.com",12312334));


    }

    public static HashMap<String, String> dataAdmin = new HashMap<>();

    static {
        dataAdmin.put("quynhadmin", "456");
        dataAdmin.put("hiepadmin", "456");
        dataAdmin.put("thaiadmin", "456");
        dataAdmin.put("webadmin", "456");

    }


}
