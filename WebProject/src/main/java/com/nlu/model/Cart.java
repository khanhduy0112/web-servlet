package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.HashMap;

@Data
@NoArgsConstructor
public class Cart {

    private String cart_id;
    private String username;
    private String shippingAddress;
    private String phone;
    private String email;
    private int user_id;
    private int status;
    private double total;
    private String orderDate;

    public Cart(String cart_id, String username, String shippingAddress, String phone, String email, int user_id, int status, double total, String orderDate) {
        this.cart_id = cart_id;
        this.username = username;
        this.shippingAddress = shippingAddress;
        this.phone = phone;
        this.email = email;
        this.user_id = user_id;
        this.status = status;
        this.total = total;
        this.orderDate = orderDate;
    }

    public static HashMap<Integer, CartItem> cart = new HashMap<>();

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

    public double total() {
        double result = 0;
        Collection<CartItem> values = cart.values();
        for (CartItem item :
                values) {
            result += item.getPrice();
        }
        return result;
    }

    public void clear(HttpSession session) {
        cart = new HashMap<>();
        session.setAttribute("cart", this);
    }

}
