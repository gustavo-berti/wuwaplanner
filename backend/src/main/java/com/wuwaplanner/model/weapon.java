package com.wuwaplanner.model;

public class Weapon {
    private String name;
    private String tier;
    private String materialFarm;
    private String materialWorld;
    private int currentLevel;
    private int targetLevel;

    public Weapon(String name, String tier) {
        this.name = name;
        this.tier = tier;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTier() {
        return tier;
    }

    public void setTier(String tier) {
        this.tier = tier;
    }

    public String getMaterialFarm() {
        return materialFarm;
    }

    public void setMaterialFarm(String materialFarm) {
        this.materialFarm = materialFarm;
    }

    public String getMaterialWorld() {
        return materialWorld;
    }

    public void setMaterialWorld(String materialWorld) {
        this.materialWorld = materialWorld;
    }

    public int getCurrentLevel() {
        return currentLevel;
    }

    public void setCurrentLevel(int currentLevel) {
        this.currentLevel = currentLevel;
    }

    public int getTargetLevel() {
        return targetLevel;
    }

    public void setTargetLevel(int targetLevel) {
        this.targetLevel = targetLevel;
    }
    
}
