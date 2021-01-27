package demo.entity;

import java.io.Serializable;
import java.util.List;

public class Order implements Serializable {
    private int id;
    private Account account;
    private List<Product> product;
    private int status;

    public Order() {
    }

    public Order(int id, Account account, List<Product> product, int status) {
        this.id = id;
        this.account = account;
        this.product = product;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
