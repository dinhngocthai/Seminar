package demo.filter;

import demo.beans.User;


import java.io.Serializable;
import java.util.HashMap;

public class UserData implements Serializable {

    static HashMap<String, User> dataUser = new HashMap<>();

    static {
        dataUser.put("01",new User("Ngoc Thai", "thai","123","thai@gmail.com",123123, "asd"));
        dataUser.put("02",new User("Bao Tran", "tran","123","baotran@gmail.com",109283123, "asd"));
        dataUser.put("03",new User("Thanh Quynh", "quynh","123","quynh@gmail.com",12312334, "asd"));
        dataUser.put("04",new User("Ngoc Hiep", "hiep","123","hiep@gmail.com",12312334, "asd"));


    }

    static HashMap<String, String> dataAdmin = new HashMap<>();

    static {
        dataAdmin.put("quynhadmin", "456");
        dataAdmin.put("hiepadmin", "456");
        dataAdmin.put("thaiadmin", "456");
        dataAdmin.put("webadmin", "456");

    }


}
