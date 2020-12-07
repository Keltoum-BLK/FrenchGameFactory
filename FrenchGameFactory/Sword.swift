//
//  Sword.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation
//Assigner à chaque arme des points de dommage différent
//comment vérifier si c'est bien pris en compte et pq swift me demande de mettre _ alors que je veux que les points de dommages soit constant
class Sword : Weapon{
    static let nameWeappon = "sword"
    static let damage = 50
    
    init() {
        super.init(nameWeapon : "sword",damage: 50)
    }
    
  
}
