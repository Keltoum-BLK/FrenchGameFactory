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
    static let weapon = Stick()
    
    init(name : String){
        super.init(type :"Magus", name : name, lifePoint: 150, weapon : Stick())
    }


    static func heal /*(Characters.lifePoints :Int )*/(){
//
//        //Creer une variable qui va stocker les points de vies des personnages apres les attaques mais aussi les soins ?
//        //if Characters.lifePoint < Characters.lifePoint de depart{
//        //                Characters.lifePoint += 10
//        //            }else if  Characters.lifePont ==0{
//        //                characterDead.append()
//        //                characterAlive.remove(at: ) comment indiquer ou supprimer
//        //               print ("\(charater.name) est mort et ne pas être soigné, séléctionner un autre membre de l'équipe")
//        //
//        //            }else print("votre joueur est en pleine santé")
    }
}
