package com.nlu.service;

import com.nlu.db.Datasource;
import com.nlu.model.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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


    public static void main(String[] args) {
        CartService cartService = new CartService();
        CartItem productById = cartService.findProductById(90);
        if (productById==null){
            System.out.println("nullll");
        }else{
            System.out.println(productById.toString());

        }
    }
}
