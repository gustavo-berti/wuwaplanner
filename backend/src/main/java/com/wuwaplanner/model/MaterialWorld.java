package com.wuwaplanner.model;

public class MaterialWorld {
    private String name;
    private int amount;
    private int tier;

    public MaterialWorld(String name, int tier) {
        this.name = name;
        this.amount = 0;
        this.tier = tier;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getTier() {
        return tier;
    }

    public void setTier(int tier) {
        this.tier = tier;
    }

}
