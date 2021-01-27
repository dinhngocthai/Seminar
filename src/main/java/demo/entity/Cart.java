package demo.entity;

import java.util.TreeMap;

public class Cart {
    private TreeMap<Product,Integer> list;
    private long cartID;
    public Cart(){
        list= new TreeMap<Product,Integer>();
        cartID= System.currentTimeMillis();
    }

    public Cart(TreeMap<Product, Integer> list, long cartID) {
        this.list = list;
        this.cartID = cartID;
    }

    public TreeMap<Product, Integer> getList() {
        return list;
    }

    public void setList(TreeMap<Product, Integer> list) {
        this.list = list;
    }

    public long getCartID() {
        return cartID;
    }

    public void setCartID(long cartID) {
        this.cartID = cartID;
    }
    public void insertToCart(Product p , int amount){
        boolean bln= list.containsKey(p);
        if(bln){
            int sl= list.get(p);
            amount += sl;
            list.put(p,amount);
        }else{
             list.put(p,amount);
        }
    }
}
