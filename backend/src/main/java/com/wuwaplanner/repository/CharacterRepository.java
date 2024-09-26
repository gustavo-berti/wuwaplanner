package com.wuwaplanner.repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.wuwaplanner.cache.CacheManager;
import com.wuwaplanner.model.Character;

public class CharacterRepository {
    public static void getCharacters() {
        Connection conn = MySQLConnection.getConnection();
        if (conn != null) {
            try {
                Statement smt = conn.createStatement();
                ResultSet rs = smt
                        .executeQuery("SELECT c.id_character, c.name, re.name, t.name, ra.name FROM characters AS c " +
                                "JOIN characters_resources AS cr ON c.id_character = cr.id_character " +
                                "JOIN resource AS re ON re.id_resource = cr.id_resource " +
                                "JOIN types AS t ON re.id_type = t.id_types " +
                                "JOIN rarities AS ra ON c.id_rarity = ra.id_rarity " +
                                "ORDER BY c.name, t.id_types");
                while (rs.next()) {
                    Character Char = new Character(rs.getString("c.name"), rs.getString("ra.name"));
                    if (CacheManager.getCharacter(rs.getInt("c.id_character"))!=null)
                        Char = CacheManager.getCharacter(rs.getInt("c.id_character"));
                    switch (rs.getString("t.name")) {
                        case "boss":
                            Char.setBoss(rs.getString("re.name"));
                            CacheManager.addCharacter(rs.getInt("c.id_character"), Char);
                            break;
                        case "weakly boss":
                            Char.setWeaklyBoss(rs.getString("re.name"));
                            CacheManager.addCharacter(rs.getInt("c.id_character"), Char);
                            break;
                        case "farm":
                            Char.setMaterialFarm(rs.getString("re.name"));
                            CacheManager.addCharacter(rs.getInt("c.id_character"), Char);
                            break;
                        case "world":
                            Char.setMaterialWorld(rs.getString("re.name"));
                            CacheManager.addCharacter(rs.getInt("c.id_character"), Char);
                            break;
                        case "flower":
                            Char.setFlower(rs.getString("re.name"));
                            CacheManager.addCharacter(rs.getInt("c.id_character"), Char);
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
