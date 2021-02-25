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
class Characters {
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
    //MARK: FUNCTION ATTACK A PLAYER WITH A TARGET
    func attack(player : Player, target : Characters) {
        
      target.lifePoint -= weapon.damage
        print ("\(target.name)'s life point are \(target.lifePoint).")
        //command to send a character with a negatif or zero life point at the characterDead array.
        if target.lifePoint <= 0 {
            target.lifePoint = 0
            print("\(target.name) is dead ⚰️.")
            player.numberOfCharacterDies += 1
            //removeAll check the whole array to find the same name in the characterAlive array with de name of the target.
            player.characterAlive.removeAll { (character) -> Bool in
                return target.name == character.name ? true : false
            }
            player.characterDead.append(target)
        }
    }
}
