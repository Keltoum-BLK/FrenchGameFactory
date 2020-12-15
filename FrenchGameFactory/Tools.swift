//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 10/11/2020.
//

import Foundation
class Tools {
    //SINGLETON DESIGN PATTERN
    static let shared : Tools = Tools()
    //MARK: GET INPUT INT
    func getInputInt()-> Int {
        let str = readLine()
        // cast a optional String value (readLine()) in Int Value, unwrapped the option value with a guard let syntaxe
        guard let strData = str, let strDataInt = Int(strData) else { return -1 }
        return strDataInt
    }
    
    func getInputString() -> String{
        let str = readLine()
        // cast a optional String value (readLine()) in String Value unwrapped the optional with a guard let syntaxe
        guard let strData = str else {return "aie"}
        return strData
    }





}


