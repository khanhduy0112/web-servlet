package com.nlu.service;

import com.nlu.model.Product;
import com.nlu.model.ProductDetails;
import com.nlu.repository.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class ProductService implements Repository<Product> {

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        String query = "SELECT * FROM products";
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                Product product = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getDouble(8));
                products.add(product);
            }
            returnConnection(connection);
            return products;
        } catch (SQLException e) {
            System.out.println(e);
            return products;
        }

    }

    @Override
    public Product findById(Integer id) {
        String query = "SELECT * FROM products WHERE product_id = ?";
        Product product = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                product = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getDouble(8));
            }
            returnConnection(connection);
            return product;
        } catch (SQLException e) {
            System.out.println(e);
            return product;
        }
    }

    @Override
    public List<Product> findByName() {
        return null;
    }

    @Override
    public Product deleteById() {
        return null;
    }

    @Override
    public void add(Product product) {

    }

    public static void main(String[] args) throws SQLException {
        ProductService productService = new ProductService();
//        List<Product> all = productService.findAll();
//        System.out.println(all.toString());
        Product byId = productService.findById(10);

    }
}
