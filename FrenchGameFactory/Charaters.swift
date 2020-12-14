//
//  Charaters.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//
import Foundation
//------------------------------------------------------------------------
//CREATIONS  DES PERSONNAGES
//------------------------------------------------------------------------
class Characters{
    var type : String
    var name : String
    var lifePoint : Int
    var weapon : Weapon
    
    init(type : String, name : String ,lifePoint : Int, weapon : Weapon) {
        self.type = type
        self.name = name
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
    
    func attack(player : Player, target : Characters){
        
      target.lifePoint -= weapon.damage
        print ("\(target.name)'s life point are \(target.lifePoint).")
        
        if target.lifePoint <= 0{
            target.lifePoint = 0
            print("\(target.name) is dead ⚰️.")
            player.numberOfCharacterDies += 1
            player.characterAlive.removeAll { (character) -> Bool in
                return target.name == character.name ? true : false
            }
            player.characterDead.append(target)
        }
        
    }
}


