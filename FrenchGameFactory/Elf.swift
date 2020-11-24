//
//  Elf.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//
import Foundation

class Elf : Characters{
    static let type = "Elf"
    static let lifePoint = 200
    static let weapon = Bow()
    
    init(name : String){
        super.init(type :"Elf", name : name, lifePoint: 200, weapon : Bow())
    }
}
