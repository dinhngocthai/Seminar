package demo.beans;

import java.io.Serializable;


public class Product implements Serializable {
    private int id;
    private String name;
    private String img;
    private long price;
    private long priceSale;
    private int quantity;
    public Product(){

    }

    public Product(int id, String name, String img, long price, long priceSale) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.priceSale = priceSale;

    }

    public Product(String string, String string1, String string2, long aLong, long aLong1) {
    }
/*
========================Getter and Setter========================
*/

    public String getName() {
        return name;
    }

    public String getImg() {
        return img;
    }

    public long getPrice() {
        return price;
    }

    public long getPriceSale() {
        return priceSale;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public void setPriceSale(long priceSale) {
        this.priceSale = priceSale;
    }

    public String getId() {
        return String.valueOf(id);
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void add() {
        this.quantity++;
    }

/*
====================================================================
*/


}
