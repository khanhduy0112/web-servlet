package com.nlu.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static Connection connection;
    private static final String username = "root";
    private static final String password = "";
    private static final String dbURL = "jdbc:mysql://localhost/sneaker_db";

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(dbURL, username, password);
                System.out.println("Thanh Cong");
                return connection;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        DBConnection.getConnection();
    }
}
