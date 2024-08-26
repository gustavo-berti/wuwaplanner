package com.wuwaplanner.cache;

import java.util.HashMap;
import com.wuwaplanner.model.Character;
import com.wuwaplanner.model.Weapon;

public class CacheManager {
    private static HashMap<Integer, Character> characters = new HashMap<>();
    private static HashMap<Integer, Weapon> weapons = new HashMap<>();

    public static int getSizeCharacter(){
        return characters.size();
    }

    public static int getSizeWeapon(){
        return weapons.size();
    }

    public static void addCharacter(int id, Character character){
        characters.put(id,character);
    }

    public static Character getCharacter(int id){
        return characters.get(id);
    }

    public static void addWeapon(int id, Weapon weapon){
        weapons.put(id,weapon);
    }

    public static Weapon getWeapon(int id){
        return weapons.get(id);
    }

    public static void removeCharacter(int id){
        characters.remove(id);
    }

    public static void removeWeapon(int id){
        weapons.remove(id);
    }

    public static void clearCharacter(){
        characters.clear();
    }

    public static void clearWeapon(){
        weapons.clear();
    }

}
