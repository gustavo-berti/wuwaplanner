package com.wuwaplanner.model;

public class WeaklyBoss {
    private String name;
    private int amount;

    public WeaklyBoss(String name) {
        this.name = name;
        this.amount = 0;
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

}
