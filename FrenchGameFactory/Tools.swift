//
//  Tools.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 10/11/2020.
//

import Foundation
class Tools {
    
    static let shared : Tools = Tools()
    
    func getInputInt()-> Int {
        let str = readLine()
        
        guard let strData = str, let strDataInt = Int(strData) else { return -1 }
        return strDataInt
    }
    
    func getInputString() -> String{
        let str = readLine()
        
        guard let strData = str else {return "aie"}
        return strData
    }





}


