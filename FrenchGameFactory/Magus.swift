//
//  Magus.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation

class Magus : Characters{
    static let type = "Magus"
    static let lifePoint = 150
    static let weapon = Sword()
    
    init(){
        super.init(type :"Magus", name : name, lifePoint: 150, weapon : Stick())
    }
}
