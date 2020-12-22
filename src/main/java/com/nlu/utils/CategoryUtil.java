package com.nlu.utils;

import com.nlu.db.DBConnection;
import com.nlu.model.Category;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryUtil {


    public static List<Category> findAll() throws SQLException {
        List<Category> categories = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM category");
            while (resultSet.next()) {
                categories.add(new Category(resultSet.getInt(1), resultSet.getString(2), 1));
            }
            System.out.println(categories.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultSet.close();
            statement.close();
            connection.close();
        }
        return categories;
    }

    public static void main(String[] args) throws SQLException {
        CategoryUtil.findAll();
    }
}
