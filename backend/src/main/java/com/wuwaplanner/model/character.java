package com.wuwaplanner.model;

import java.util.Map;
import java.util.List;

public class Character {
   private String name;
   private String tier;
   private String boss;
   private String weaklyBoss;
   private String flower;
   private String materialFarm;
   private String materialWorld;
   private int currentLevel;
   private int targetLevel;
   private List<Skill> skills;
   private Map<String,Boolean> passives;

   public Character(String name, String tier) {
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

   public String getFlower() {
      return flower;
   }

   public void setFlower(String flower) {
      this.flower = flower;
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

   public List<Skill> getSkills() {
      return skills;
   }

   public void setSkills(List<Skill> skills) {
      this.skills = skills;
   }

   public Map<String, Boolean> getPassives() {
      return passives;
   }

   public void setPassives(Map<String, Boolean> passives) {
      this.passives = passives;
   }

}
