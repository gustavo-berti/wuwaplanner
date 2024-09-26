package com.wuwaplanner.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.wuwaplanner.cache.CacheManager;
import com.wuwaplanner.model.Weapon;

public class AllWeaponHandler implements HttpHandler{
    @Override
    public void handle(HttpExchange exchange) throws IOException {
        List<Weapon> weapons = CacheManager.getAllWeapons();

        JsonArray jsonArray = new JsonArray();
        for (Weapon weapon : weapons) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", weapons.indexOf(weapon)+1);
            jsonObject.addProperty("name", weapon.getName());
            jsonArray.add(jsonObject);
        }
        String response = jsonArray.toString();
        exchange.getResponseHeaders().set("Content-Type", "application/json");
        exchange.sendResponseHeaders(200, response.getBytes().length);

        OutputStream os = exchange.getResponseBody();
        os.write(response.getBytes());
        os.close();
    }

}
