package com.nlu.utils;

import com.nlu.db.DBConnection;
import com.nlu.model.Tag;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TagUtils {

    public static List<Tag> findAll() throws SQLException {
        List<Tag> tags = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM tag");
            while (resultSet.next()) {
                tags.add(new Tag(resultSet.getInt(1), resultSet.getString(2), resultSet.getInt(3)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            resultSet.close();
            statement.close();
            connection.close();
            return tags;
        }
    }

    public static void main(String[] args) throws SQLException {
        List<Tag> all = TagUtils.findAll();
        System.out.println(all.toString());
    }
}
