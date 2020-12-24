package com.nlu.db;

import java.sql.Connection;

public class Datasource {

    private static ConnectionPool connectionPool = new ConnectionPool();

    public  Datasource (){

    }

    public static Connection getConnection() {
        return connectionPool.getConnectionFromPool();
    }

    public static void releaseConnection(Connection conn) {
         connectionPool.returnConnectionToPool(conn);
    }

}
