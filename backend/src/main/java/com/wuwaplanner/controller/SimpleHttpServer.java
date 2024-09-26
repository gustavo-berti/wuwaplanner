package com.wuwaplanner.controller;

import com.sun.net.httpserver.HttpServer;
import com.wuwaplanner.config.ApplicationInitializer;

import java.io.IOException;
import java.net.InetSocketAddress;

//classe para criar uma porta para api
public class SimpleHttpServer {
    public static void main(String[] args) {
        // cria uma porta para a api
        ApplicationInitializer.init();
        HttpServer server;
        try {
            server = HttpServer.create(new InetSocketAddress(8000), 0);
            // cria um contexto para a api
            server.createContext("/api/character", new AllCharacterHandler());
            server.createContext("/api/character/id", new CharacterHandler());
            server.createContext("/api/weapon", new AllWeaponHandler());
            server.createContext("/api/weapon/id", new WeaponHandler());
            // cria um executor para a api
            server.setExecutor(null); // creates a default executor
            // inicia a api
            server.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
