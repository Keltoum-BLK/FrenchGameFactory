//
//  main.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation

var str = "1"
var strInt = Int(str)

//Caster les choix (1,2,3) du joueur pour mettre en place switch case plus tard
func getInputInt()-> Int {
    let str = readLine()
    
    guard let strData = str, let strDataInt = Int(strData) else { return -1 }
    return strDataInt
}
