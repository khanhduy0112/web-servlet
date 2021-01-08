package com.nlu.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.HashMap;

@Data
@NoArgsConstructor
public class Cart {


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
        cart.put(item.getProductId(), item);
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
        session.setAttribute("cart", cart);
    }


}
