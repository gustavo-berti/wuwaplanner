package com.wuwaplanner.repository;

import java.sql.Statement;
import java.util.HashMap;
import com.wuwaplanner.model.*;
import java.sql.Connection;
import java.sql.ResultSet;

public class ResourceRepository {

    public static void getResources() {
        Connection conn = MySQLConnection.getConnection();
        HashMap<Integer, Object> resources = new HashMap<>();
        if (conn != null) {
            try {
                Statement smt = conn.createStatement();
                ResultSet rs = smt.executeQuery("SELECT r.name, t.name FROM resource AS r \r\n" + //
                        "JOIN types AS t ON r.id_type = t.id_types");
                while (rs.next()) {

                }
                rs.close();
                smt.close();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                MySQLConnection.closeConnection(conn);
            }
        }
    }
}
