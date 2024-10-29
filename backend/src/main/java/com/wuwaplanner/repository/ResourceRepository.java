package com.wuwaplanner.repository;

import java.sql.Statement;
import java.util.HashMap;
import com.wuwaplanner.model.*;
import java.sql.Connection;
import java.sql.ResultSet;

public class ResourceRepository {

    public static void getResources() {
        Connection conn = MySQLConnection.getConnection();
        HashMap<String, Object> resources = new HashMap<>();
        if (conn != null) {
            try {
                Statement smt = conn.createStatement();
                ResultSet rs = smt.executeQuery("SELECT r.name, t.name FROM resource AS r \r\n" + //
                        "JOIN types AS t ON r.id_type = t.id_types");
                while (rs.next()) {
                    if (rs.getString("r.name") != "Undefined") {
                        switch (rs.getString("t.name")) {
                            case "boss":
                                Boss boss = new Boss(rs.getString("r.name"));
                                resources.put(rs.getString("r.name"), boss);
                                break;

                            case "weakly boss":
                                WeaklyBoss weaklyBoss = new WeaklyBoss(rs.getString("r.name"));
                                resources.put(rs.getString("r.name"), weaklyBoss);
                                break;

                            case "farm":
                                MaterialFarm materialFarm = new MaterialFarm(rs.getString("r.name"), 0);
                                resources.put(rs.getString("r.name"), materialFarm);
                                break;

                            case "world":
                                MaterialWorld materialWorld = new MaterialWorld(rs.getString("r.name"), 0);
                                resources.put(rs.getString("r.name"), materialWorld);
                                break;

                            case "flower":
                                Flower flower = new Flower(rs.getString("r.name"));
                                resources.put(rs.getString("r.name"), flower);
                                break;

                            default:
                                break;
                        }
                    }
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
