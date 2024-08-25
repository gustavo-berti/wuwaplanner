package com;

import java.sql.Connection;

import com.wuwaplanner.repository.MySQLConnection;

public class Main {
    public static void main(String[] args) {
       Connection conn = MySQLConnection.getConnection();
       
    }
}
