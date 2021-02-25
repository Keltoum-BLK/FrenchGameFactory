//
//  Dwarf.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//
import Foundation
class Dwarf : Characters{
    static let type = "Dwarf"
    static let lifePoint = 200
    static let weapon = Axe()
    
    init(name : String) {
        super.init(type :"Dwarf", name : name, lifePoint: 150, weapon : Axe())
    }
}
    
