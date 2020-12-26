package demo.filter;

import demo.beans.Product;

import java.util.HashMap;
import java.util.Map;

public class Data {
    public static Map<String, Product> data = new HashMap<>();
    public static Map<String, Product> dataSamsung = new HashMap<>();
    public static Map<String, Product> dataOPPO = new HashMap<>();
    public static Map<String, Product> dataXiaomi = new HashMap<>();
    public static Map<String, Product> dataRealmi = new HashMap<>();


    static {
        data.put("01", new Product(1,"OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        data.put("02", new Product(2,"Samsung Galaxy A61", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-a21s.png", 5500000, 6500000));
        data.put("03", new Product(3,"Samsung Galaxy A71", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-a21s.png", 7100000, 7100000));
        data.put("04", new Product(4,"Samsung Galaxy A81", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png", 5500000, 7100000));
        data.put("05", new Product(5,"Samsung Galaxy A91", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-a21s.png", 7100000, 6500000));
        data.put("06", new Product(6,"Samsung Galaxy A11", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png", 5500000, 7100000));
        data.put("07", new Product(7,"Samsung Galaxy A61", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-a21s.png", 5500000, 6500000));
        data.put("08", new Product(8,"Samsung Galaxy A71", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-a21s.png", 7100000, 7100000));
        data.put("09", new Product(9,"Samsung Galaxy A81", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png", 5500000, 7100000));
        data.put("10", new Product(10,"Samsung Galaxy A11", "http://localhost:8080/ServletSerminaDemo/img/samsung/samsung-galaxy-z-fold-2.png", 5500000, 7100000));
    }
/*
    static {
        dataSamsung.put("01", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("02", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("03", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("04", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("05", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("06", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("07", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));
        dataSamsung.put("08", new Product("Samsung Galaxy A51", "http://localhost:8080/ServletSerminaDemo/img/samsung/SSG-Back.jpg", 7100000, 7100000));

    }
    static {
        dataOPPO.put("01", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataOPPO.put("02", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataOPPO.put("03", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataOPPO.put("04", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataOPPO.put("05", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));

    }
    static {
        dataXiaomi.put("01", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataXiaomi.put("02", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataXiaomi.put("03", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataXiaomi.put("04", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));
        dataXiaomi.put("05", new Product("OPPO RENO 3 PRO", "http://localhost:8080/ServletSerminaDemo/img/oppo/oppo-reno3-pro-den-400x460-400x460.png", 7100000, 7100000));

    }*/
}