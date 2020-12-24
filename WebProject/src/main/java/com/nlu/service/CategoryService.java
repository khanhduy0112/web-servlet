package com.nlu.service;

import com.nlu.model.Category;
import com.nlu.repository.Repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class CategoryService implements Repository<Category> {
    @Override
    public List<Category> findAll() {
        List<Category> categories = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                Category category = new Category(rs.getInt(1), rs.getString(2), rs.getInt(3));
                categories.add(category);
            }
            returnConnection(connection);
            return categories;
        } catch (SQLException e) {
            System.out.println(e);
            return categories;
        }
    }

    @Override
    public Category findById(Integer id) throws SQLException {
        return null;
    }

    @Override
    public List<Category> findByName() {
        return null;
    }

    @Override
    public Category deleteById() {
        return null;
    }
}
