package com.wuwaplanner.model;

public class Skill {
    private String name;
    private int currentLevel;
    private int targetLevel;

    public Skill(String name, int currentLevel, int targetLevel) {
        this.name = name;
        this.currentLevel = currentLevel;
        this.targetLevel = targetLevel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
