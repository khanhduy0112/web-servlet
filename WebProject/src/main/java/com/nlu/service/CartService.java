package com.nlu.service;

import com.nlu.db.Datasource;
import com.nlu.model.Cart;
import com.nlu.model.CartItem;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class CartService {

    //tim ra san pham muon mua
    public CartItem findProductById(int id) {
        try {
            Connection conn = Datasource.getConnection();
            String sql = "select p1.product_id,p1.name,p1.img,p1.price,p1.sales_percent,p2.product_details_id,p2.size from products p1 join product_details p2 on p1.product_id = p2.product_id where p2.product_details_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            CartItem cartItem = null;
            while (rs.next()) {
                cartItem = new CartItem(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7), 1);
            }
            Datasource.returnConnection(conn);
            return cartItem;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void save(String id, String username, String shipAddress, String phone, String email, Integer userId, Cart cart) {
        String query = "INSERT INTO cart VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, username);
            ps.setString(3, shipAddress);
            ps.setString(4, phone);
            ps.setString(5, email);
            ps.setInt(6, userId);
            ps.setInt(7, 1);
            ps.setDouble(8, cart.total());
            ps.setString(9, new Date().toString());

            ps.executeUpdate();
            //tien hanh them item vao cart
            String query2 = "INSERT INTO cart_item VALUES (?,?,?,?,?,?)";
            PreparedStatement ps2 = conn.prepareStatement(query2);
            ps2.setString(1, null);
            for (CartItem item :
                    cart.getData()) {
                ps2.setInt(2, item.getProductId());
                ps2.setInt(3, item.getProductDetailsId());
                ps2.setInt(4, item.getSize());
                ps2.setInt(5, item.getQuality());
                ps2.setString(6, id);
                ps2.executeUpdate();
            }
            returnConnection(conn);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Cart> findAll() {
        String query = "SELECT * FROM cart";

        try {
            List<Cart> carts = new ArrayList<>();
            Connection conn = getConnection();
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                Cart cart = new Cart(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getDouble(8),
                        rs.getString(9));
                carts.add(cart);
            }
            returnConnection(conn);
            return carts;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        CartService cartService = new CartService();
        System.out.println(        cartService.findAll());
//        CartItem cartItem = new CartItem(1, "Jordan", "img", 9493.5, 3443.5, 1, 42, 2);
//        CartItem cartItem1 = new CartItem(2, "Jordan 4", "img", 9493.5, 3443.5, 1, 42, 2);
//        CartItem cartItem2 = new CartItem(3, "Jordan 2", "img", 9493.5, 3443.5, 1, 42, 2);
//        List<CartItem> cartItems = new ArrayList<>();
//        cartItems.add(cartItem);
//        cartItems.add(cartItem1);
//        cartItems.add(cartItem2);
//        Cart cart
//                 = new Cart(cartItems);
//        cartService.save(String.valueOf(new Date().getTime()), "Nguyen Van C", "Thu Duc", "034988439", "nguyen@gmail.com", 0, cartItems);
//        System.out.println("Done");
//        CartItem productById = cartService.findProductById(90);
//        if (productById==null){
//            System.out.println("nullll");
//        }else{
//            System.out.println(productById.toString());
//
//        }
//        System.out.println(new Date().getTime());
    }
}
