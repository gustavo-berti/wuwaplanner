package com.wuwaplanner.model;

import java.util.Map;
import java.util.List;

public class Character {
   private String name;
   private int tier;
   private Boss boss;
   private WeaklyBoss weaklyBoss;
   private Flower flower;
   private List<MaterialFarm> materialFarm;
   private List<MaterialWorld> materialWorld;
   private int currentLevel;
   private int targetLevel;
   private List<Skill> skills;
   private Map<String,Boolean> passives;

}
