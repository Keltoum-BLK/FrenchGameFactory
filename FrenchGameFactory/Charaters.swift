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
    // le nom est une optionnel car tant que le jouer ne l'a pas défini sa valeur reste null mais comment le faire comprendre au programme.
    class Characters{
        var type : String
        var name : String
        var lifePoint : Int
        var weapon : Weapon
        
        init(type : String name : String ,lifePoint : Int, weapon : Weapon) {
            self.type = type
            self.name = name
            self.lifePoint = lifePoint
            self.weapon = weapon
        }
    }
