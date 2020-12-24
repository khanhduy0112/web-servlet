package com.nlu.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.nlu.db.DBConfiguration.*;

public class ConnectionPool {

    private List<Connection> availableConnections = new ArrayList<>();

    public ConnectionPool() {
        this.initConnectionPool();
    }

    private Connection createConnection() {
        try {
            Class.forName(DB_DRIVER);
            Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
            System.out.println("Tao ra connection");
            return connection;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    private void initConnectionPool() {
        while (isConnectionPoolFull() == false) {
            Connection connection = createConnection();
            availableConnections.add(connection);
        }
    }

    private synchronized boolean isConnectionPoolFull() {
        if (availableConnections.size() < DB_MAX_CONNECTION) {
            return false;
        }
        return true;
    }


    //get connection from pool
    public synchronized Connection getConnectionFromPool() {
        Connection connection = null;
        if (availableConnections.size() > 0) {
            connection = availableConnections.get(0);
            availableConnections.remove(0);
        }
        System.out.println("Lay ra 1 ket noi");
        return connection;
    }

    //return connection to pool
    public synchronized void returnConnectionToPool(Connection connection) {
        availableConnections.add(connection);
    }
}
