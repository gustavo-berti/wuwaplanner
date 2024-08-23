package com;

import java.sql.Connection;

import com.wuwaplanner.controller.MySQLConnection;

public class Main {
    public static void main(String[] args) {
       Connection conn = MySQLConnection.getConnection();
       
    }
}
