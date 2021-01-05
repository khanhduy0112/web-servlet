package com.nlu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.servlet.http.HttpSession;
import java.util.Collection;
import java.util.HashMap;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart {

    private HashMap<Integer, CartItem> items = new HashMap<>();


    public void put(CartItem item) {
        if (item.equals(null) || items.containsKey(item.productId)) {
            return;
        }
        items.put(item.productId, item);
    }


    public static Cart getCart(HttpSession session) {
        if (session.getAttribute("cart").equals(null)) {
            Cart c = new Cart();
            session.setAttribute("cart", c);
        }
        Cart cart = (Cart) session.getAttribute("cart");
        return cart;
    }

    public void commit(HttpSession session) {
        session.setAttribute("cart", this);
    }

    public Collection<CartItem> values() {
        return items.values();
    }

}
