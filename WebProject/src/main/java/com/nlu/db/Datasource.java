package com.nlu.db;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

public class Datasource {

    private static ConnectionPool connectionPool = new ConnectionPool();

    public Datasource() {

    }

    public static Connection getConnection() {
        System.out.println("lay conn");
        return connectionPool.getConnectionFromPool();
    }

    public static void returnConnection(Connection conn) {
        connectionPool.returnConnectionToPool(conn);
    }

}
