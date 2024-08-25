package com.wuwaplanner.repository;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/wuwaplanner";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void closeConnection(Connection conn){
        if(conn!=null){
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
