package com.nlu.utils;

import com.nlu.db.DBConnection;
import com.nlu.model.Product;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductUtils {

    public static List<Product> findAll() throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM product");
            Product product;
            while (resultSet.next()) {
                product = new Product();
                product.setProductId(resultSet.getInt(1));
                product.setName(resultSet.getString(2));
                product.setStatus(resultSet.getInt(3));
                product.setDescription(resultSet.getString(4));
                product.setImg(resultSet.getString(5));
                product.setCategoryId(resultSet.getInt(6));
                product.setPrice(resultSet.getInt(7));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultSet.close();
            statement.close();
            connection.close();
            System.out.println(products.toString());
            return products;
        }
    }

    public static void main(String[] args) throws SQLException {
        ProductUtils.findAll();
    }
}
