//
//  Templar.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//
/*Comment indiquer que le nom c'est le player qui le donne
comment assigner une arme spécifique en utilisant la mere et la fille
 modifier aussi la propriété force*/

import Foundation
class Templar : Characters{
    static let type = "Templar"
    static let lifePoint = 150
    static let weapon = Sword()
    
    init(name : String) {
        super.init(type: "Templar", name: name, lifePoint: 150, weapon: Sword())
    }
}
