//
//  Axe.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation
class Axe : Weapon{
    static let nameWeappon = "sword"
    static let damage = 15
    
    
    init() {
        super.init(nameWeapon : "axe",damage: 15)
    }
}
