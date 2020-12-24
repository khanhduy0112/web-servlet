package com.nlu.db;

public class DBConfiguration {

    public static final String DB_USERNAME = "root";
    public static final String DB_PASSWORD = "";
    public static final String DB_URL = "jdbc:mysql://localhost/test";
    public static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";
    public static final int DB_MAX_CONNECTION = 10;
    public static DBConfiguration dbConfiguration = new DBConfiguration();

    public static DBConfiguration getInstance() {
        return dbConfiguration;
    }


}
