//
//  Weapon.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation
//--------------------------------------------------------------------------------
//    MISE EN PLACE DES ARMES
//--------------------------------------------------------------------------------
class Weapon{
    var nameWeapon : String
    var damage : Int
    init (nameWeapon : String, damage: Int) {
        self.nameWeapon = nameWeapon
        self.damage = damage
    }
}
