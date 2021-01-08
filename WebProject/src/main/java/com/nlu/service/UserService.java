package com.nlu.service;

import com.nlu.model.User;
import com.nlu.repository.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;

import static com.nlu.db.Datasource.*;


public class UserService implements Repository<User> {
    @Override
    public Collection<User> findAll() throws SQLException {
        return null;
    }

    @Override
    public User findById(Integer id) throws SQLException {
        return null;
    }

    @Override
    public List<User> findByName() {
        return null;
    }

    @Override
    public User deleteById() {
        return null;
    }

    @Override
    public void add(User user) {

    }

    public User findByNameAndPass(String username, String pass) {
        Connection conn = getConnection();
        try {
            User user = null;
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM user WHERE username = ? AND password = ? ");
            ps.setString(1, username);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt(1));
                user.setUserKey(rs.getString(2));
                user.setUsername(rs.getString(3));
                user.setPassword(rs.getString(4));
                user.setEmail(rs.getString(5));
                user.setPhone(rs.getString(6));
                user.setCity(rs.getString(7));
                user.setDistrict(rs.getString(8));
                user.setAddressDetails(rs.getString(9));
                user.setRole(rs.getString(10));
            }
            returnConnection(conn);
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new UserService().findByNameAndPass("dkluy", "s123"));
    }
}
