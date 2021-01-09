package com.nlu.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.HashMap;

@Data
@NoArgsConstructor
public class Cart {

    private String cartId;
    private int cart_number;
    private String username;
    private String shippingAddress;
    private String phone;
    private String email;
    private int userId;
    private int status;
    private double total;
    private String orderDate;

    public Cart(String cartId, int cart_number, String username, String shippingAddress, String phone, String email, int userId, int status, double total, String orderDate, HashMap<Integer, CartItem> cart) {
        this.cartId = cartId;
        this.cart_number = cart_number;
        this.username = username;
        this.shippingAddress = shippingAddress;
        this.phone = phone;
        this.email = email;
        this.userId = userId;
        this.status = status;
        this.total = total;
        this.orderDate = orderDate;
        this.cart = cart;
    }

    public Cart(String cartId, int cart_number, String username, String shippingAddress, String phone, String email, int userId, int status, double total, String orderDate) {
        this.cartId = cartId;
        this.cart_number = cart_number;
        this.username = username;
        this.shippingAddress = shippingAddress;
        this.phone = phone;
        this.email = email;
        this.userId = userId;
        this.status = status;
        this.total = total;
        this.orderDate = orderDate;
    }

    public HashMap<Integer, CartItem> cart = new HashMap<>();

    public static Cart getCart(HttpSession session) {
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public void put(CartItem item, int quality) {
        if (item.equals(null)) {
            return;
        }
        if (quality > 1) {
            item.setQuality(quality);
        }
        cart.put(item.getProductDetailsId(), item);
    }

    public void remove(int id) {
        cart.remove(id);
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }

    public Collection<CartItem> getData() {
        return cart.values();
    }

    public void clear(HttpSession session) {
        cart = new HashMap<>();
        session.setAttribute("cart", this);
    }

    public double total() {
        double result = 0;
        for (CartItem cartItem :
                this.getData()) {
            result += cartItem.getPrice()*cartItem.getQuality();
        }
        return result;
    }
    public int count(){
        return cart.size();
    }

    public static void main(String[] args) {
        Cart cart = new Cart();
        cart.getData();
        for (CartItem cartItem:
                cart.getData()) {
        }
    }

}
