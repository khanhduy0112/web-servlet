package com.nlu.service;

import com.nlu.model.Product;
import com.nlu.repository.Repository;

import java.sql.*;
import java.util.ArrayList;
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


    public List<Product> findAll(int currentPage, int recordsPerPage, String category) {
        List<Product> products = new ArrayList<>();
        int offset = currentPage * recordsPerPage - recordsPerPage;
        String sql = "SELECT products.* FROM products  LIMIT ?,?";
        if (!category.equals("all")) {
            sql = "select * from products p join category c on p.category_id = c.category_id where c.name =? LIMIT ?,?";
        }
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            if (!category.equals("all")) {
                preparedStatement.setString(1, category);
                preparedStatement.setInt(2, offset);
                preparedStatement.setInt(3, recordsPerPage);
            } else {
                preparedStatement.setInt(1, offset);
                preparedStatement.setInt(2, recordsPerPage);
            }
            ResultSet rs = preparedStatement.executeQuery();

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
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return products;
    }

    public int countProductInCategory(String category) {
        int count = 0;
        String query = "SELECT COUNT(p.product_id) FROM products p JOIN category c ON p.category_id = c.category_id WHERE c.name = ?";
        if (category.equals("all")) {
            query = "SELECT COUNT(p.product_id) FROM products p JOIN category c ON p.category_id = c.category_id ";
        }
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            if (!category.equals("all")) {
                preparedStatement.setString(1, category);
            }
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            returnConnection(connection);
            return count;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
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

    public List<Product> findProductsByCategoryName(String categoryName) {
        List<Product> products = new ArrayList<>();
        String query = "SELECT products.* FROM products JOIN category ON products.category_id = category.category_id WHERE category.name = ?";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, categoryName);
            ResultSet rs = statement.executeQuery();
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
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> findProductByCategoryId(int categoryId) {
        List<Product> products = new ArrayList<>();
        String query = "select products.* from products join category on products.category_id = category.category_id where category.category_id = ?;";
        try {
            Connection connection = getConnection();
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, categoryId);
            ResultSet rs = statement.executeQuery();
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
            e.printStackTrace();
        }
        return products;
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
        System.out.println(productService.countProductInCategory("Adidas"));
    }
}
