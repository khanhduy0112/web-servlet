package com.nlu.service;

import com.nlu.model.Product;
import com.nlu.model.ProductDetails;
import com.nlu.repository.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class ProductDetailsService implements Repository<ProductDetails> {
    @Override
    public List<ProductDetails> findAll() {
        String query = "SELECT * FROM product_details";
        List<ProductDetails> productDetailsList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                ProductDetails details = new ProductDetails(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6)
                );
                productDetailsList.add(details);
            }
            returnConnection(connection);
            return productDetailsList;

        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }
    }

    public List<ProductDetails> findByProductId(Integer productId) {
        String query = "SELECT * FROM product_details WHERE  product_id = ?";
        List<ProductDetails> productDetailsList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, productId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                ProductDetails details = new ProductDetails(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6)
                );
                productDetailsList.add(details);
            }
            returnConnection(connection);
            return productDetailsList;

        } catch (SQLException e) {
            System.out.println(e);
            return null;
        }

    }

    @Override
    public ProductDetails findById(Integer id) throws SQLException {
        return null;
    }

    @Override
    public List<ProductDetails> findByName() {
        return null;
    }

    @Override
    public ProductDetails deleteById() {
        return null;
    }

    public static void main(String[] args) {
        ProductDetailsService productDetailsService = new ProductDetailsService();
        List<ProductDetails> all = productDetailsService.findByProductId(1);
        String s = all.toString();
        System.out.println(s);
    }
}
