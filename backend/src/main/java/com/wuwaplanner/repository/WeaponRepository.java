package com.wuwaplanner.repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.wuwaplanner.cache.CacheManager;
import com.wuwaplanner.model.Weapon;

public class WeaponRepository {
    public static void GetWeapons() {
        Connection conn = MySQLConnection.getConnection();
        if (conn != null) {
            try {
                Statement smt = conn.createStatement();
                ResultSet rs = smt
                        .executeQuery("SELECT w.id_weapon, w.name, re.name, t.name, ra.name FROM weapons AS w\r\n" + //
                                "JOIN weapons_resources AS wr ON w.id_weapon = wr.id_weapon\r\n" + //
                                "JOIN resource AS re ON re.id_resource = wr.id_resource\r\n" + //
                                "JOIN types AS t ON re.id_type = t.id_types\r\n" + //
                                "JOIN rarities AS ra ON w.id_rarity = ra.id_rarity\r\n" + //
                                "ORDER BY w.name, t.id_types");
                while (rs.next()) {
                    Weapon weapon = new Weapon(rs.getString("w.name"), rs.getString("re.name"));
                    if (CacheManager.getWeapon(rs.getInt("w.id_weapon"))!=null)
                        weapon = CacheManager.getWeapon(rs.getInt("w.id_weapon"));
                    switch (rs.getString("t.name")) {
                        case "farm":
                            weapon.setMaterialFarm(rs.getString("re.name"));
                            CacheManager.addWeapon(rs.getInt("w.id_weapon"), weapon);
                            break;

                        case "world":
                            weapon.setMaterialWorld(rs.getString("re.name"));
                            CacheManager.addWeapon(rs.getInt("w.id_weapon"), weapon);
                            break;

                        default:
                            break;
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
