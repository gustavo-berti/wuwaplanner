package com.wuwaplanner.model;

public class weapon {
    private String worldMaterial;
    private String farmMaterial;
    private int tier;

    public weapon(String worldMaterial, String farmMaterial, int tier) {
        this.worldMaterial = worldMaterial;
        this.farmMaterial = farmMaterial;
        this.tier = tier;
    }

    public String getWorldMaterial() {
        return worldMaterial;
    }

    public void setWorldMaterial(String worldMaterial) {
        this.worldMaterial = worldMaterial;
    }

    public String getFarmMaterial() {
        return farmMaterial;
    }

    public void setFarmMaterial(String farmMaterial) {
        this.farmMaterial = farmMaterial;
    }

    public int getTier() {
        return tier;
    }

    public void setTier(int tier) {
        this.tier = tier;
    }
    
}
