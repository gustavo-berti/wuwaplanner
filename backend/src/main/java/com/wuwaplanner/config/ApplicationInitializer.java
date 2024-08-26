package com.wuwaplanner.config;

import com.wuwaplanner.repository.CharacterRepository;
import com.wuwaplanner.repository.ResourceRepository;
import com.wuwaplanner.repository.WeaponRepository;

public class ApplicationInitializer {
    public void init(){
        CharacterRepository.getCharacters();
        WeaponRepository.getWeapons();
        ResourceRepository.getResources();
    }
}
