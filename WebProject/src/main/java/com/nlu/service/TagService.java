package com.nlu.service;

import com.nlu.model.Tag;
import com.nlu.repository.Repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import static com.nlu.db.Datasource.*;

public class TagService implements Repository<Tag> {


    @Override
    public List<Tag> findAll() {
        List<Tag> tags = new ArrayList<>();
        String query = "SELECT * FROM tag";
        try {
            Connection connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(query);
            while (rs.next()) {
                Tag tag = new Tag(rs.getInt(1), rs.getString(2), rs.getInt(3));
                tags.add(tag);
            }
            returnConnection(connection);
            return tags;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Tag findById(Integer id) throws SQLException {
        return null;
    }

    @Override
    public List<Tag> findByName() {
        return null;
    }

    @Override
    public Tag deleteById() {
        return null;
    }
}
