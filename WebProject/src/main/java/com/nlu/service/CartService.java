package com.nlu.service;

import com.nlu.db.Datasource;
import com.nlu.model.Cart;
import com.nlu.model.CartItem;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class CartService {

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

    public void save(String fullName, String userId, String email, String phone, String city, String address, String note, Cart cart) {
        try {
            Date date = new Date();
            Connection conn = getConnection();
            String query = "INSERT INTO cart VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, String.valueOf(date.getTime()));
            ps.setString(2, fullName);
            ps.setString(3, address);
            ps.setString(4, phone);
            ps.setString(5, email);
            ps.setString(6, userId);
            ps.setInt(7, 1);
            ps.setDouble(8, cart.total());
            ps.setString(9, date.toString());
            ps.executeUpdate();
            String query2 = "INSERT INTO cart_item VALUES (?,?,?,?,?,?)";
            PreparedStatement ps2 = conn.prepareStatement(query2);
            ps2.setString(1, null);
            ps2.setString(6, date.toString());
            for (CartItem item :
                    cart.getData()) {
                ps2.setInt(2, item.getProductId());
                ps2.setInt(3, item.getProductDetailsId());
                ps2.setInt(4, item.getSize());
                ps2.setInt(5, item.getQuality());
                ps2.executeUpdate();
            }
            returnConnection(conn);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public List<Cart> findAll() {
        try {
            List<Cart> carts = new ArrayList<>();
            String query = "SELECT * FROM cart";
            Connection connection = getConnection();
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);

            while (rs.next()) {
                Cart cart = new Cart();
                cart.setCartId(rs.getString(1));
                cart.setUsername(rs.getString(2));
                cart.setShippingAddress(rs.getString(3));
                cart.setPhone(rs.getString(4));
                cart.setEmail(rs.getString(5));
                cart.setUserId(rs.getInt(6));
                cart.setStatus(rs.getInt(7));
                cart.setTotal(rs.getDouble(8));
                cart.setOrderDate(rs.getString(9));
                carts.add(cart);
            }
            returnConnection(connection);
            return carts;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        CartService cartService = new CartService();
        List<Cart> carts = cartService.findAll();
        System.out.println(carts);
    }
}
