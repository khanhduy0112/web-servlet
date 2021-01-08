package com.nlu.service;

import com.nlu.db.Datasource;
import com.nlu.model.Cart;
import com.nlu.model.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

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
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public static void main(String[] args) {
        CartService cartService = new CartService();
        CartItem productById = cartService.findProductById(90);
        if (productById == null) {
            System.out.println("nullll");
        } else {
            System.out.println(productById.toString());

        }
    }
}
