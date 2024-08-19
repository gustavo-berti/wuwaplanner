package com.wuwaplanner.model;

import java.util.List;

public class character {
    private String flower;
    private String boss;
    private String weaklyBoss;
    private String worldMaterial;
    private String farmMaterial;
    private int characterCurrentLevel;
    private int characterTargetLevel;
    private List<Integer> skillCurrentLevel = new List<Integer>();
    private List<Integer> skillTargetLevel = new List<>(Integer);
    private List<Boolean> nodes = new List<Boolean>();

    public void ascencion(){
        if(characterCurrentLevel<characterTargetLevel){
            if(characterTargetLevel>20){

            }if(characterTargetLevel>40){

            }if(characterTargetLevel>50){

            }if(characterTargetLevel>60){

            }if(characterTargetLevel>70){

            }if(characterTargetLevel>80){

            }
        }
    }

    public character(String flower, String boss, String weaklyBoss, String worldMaterial, String farmMaterial,
            int characterCurrentLevel, int characterTargetLevel, List<Integer> skillCurrentLevel,
            List<Integer> skillTargetLevel, List<Boolean> nodes) {
        this.flower = flower;
        this.boss = boss;
        this.weaklyBoss = weaklyBoss;
        this.worldMaterial = worldMaterial;
        this.farmMaterial = farmMaterial;
        this.characterCurrentLevel = characterCurrentLevel;
        this.characterTargetLevel = characterTargetLevel;
        this.skillCurrentLevel = skillCurrentLevel;
        this.skillTargetLevel = skillTargetLevel;
        this.nodes = nodes;
    }

    public String getFlower() {
        return flower;
    }

    public void setFlower(String flower) {
        this.flower = flower;
    }

    public String getBoss() {
        return boss;
    }

    public void setBoss(String boss) {
        this.boss = boss;
    }

    public String getWeaklyBoss() {
        return weaklyBoss;
    }

    public void setWeaklyBoss(String weaklyBoss) {
        this.weaklyBoss = weaklyBoss;
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

    public int getCharacterCurrentLevel() {
        return characterCurrentLevel;
    }

    public void setCharacterCurrentLevel(int characterCurrentLevel) {
        this.characterCurrentLevel = characterCurrentLevel;
    }

    public int getCharacterTargetLevel() {
        return characterTargetLevel;
    }

    public void setCharacterTargetLevel(int characterTargetLevel) {
        this.characterTargetLevel = characterTargetLevel;
    }

    public List<Integer> getSkillCurrentLevel() {
        return skillCurrentLevel;
    }

    public void setSkillCurrentLevel(List<Integer> skillCurrentLevel) {
        this.skillCurrentLevel = skillCurrentLevel;
    }

    public List<Integer> getSkillTargetLevel() {
        return skillTargetLevel;
    }

    public void setSkillTargetLevel(List<Integer> skillTargetLevel) {
        this.skillTargetLevel = skillTargetLevel;
    }

    public List<Boolean> getNodes() {
        return nodes;
    }

    public void setNodes(List<Boolean> nodes) {
        this.nodes = nodes;
    }

}
