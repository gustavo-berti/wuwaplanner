package com.wuwaplanner.controller;

import com.sun.net.httpserver.HttpHandler;
import com.wuwaplanner.cache.CacheManager;
import com.google.gson.JsonObject;
import com.sun.net.httpserver.HttpExchange;
import com.wuwaplanner.model.Weapon;

import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;

public class WeaponHandler implements HttpHandler {
    @Override
    public void handle(HttpExchange exchange) throws IOException {
        URI requestURI = exchange.getRequestURI();
        String path = requestURI.getPath();
        String[] pathParts = path.split("/");
        String idStr = pathParts[pathParts.length - 1];
        int id = Integer.parseInt(idStr);
        Weapon weapon = CacheManager.getWeapon(id);
        if (weapon != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", id);
            jsonObject.addProperty("name", weapon.getName());
            String response = jsonObject.toString();
            exchange.getResponseHeaders().set("Content-Type", "application/json");
            exchange.sendResponseHeaders(200, response.getBytes().length);
            OutputStream os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }else{
            String response = ("weapon not found");
            exchange.sendResponseHeaders(404, -1);
            OutputStream os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }        
    }
}
