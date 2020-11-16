//
//  Player.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation
//------------------------------------------------------------------
//      ACTIONS DES JOUEURS - CHOIX DES PERSONNAGES
//------------------------------------------------------------------
// pour chaque personnages choisi un nom à donner , mais également limiter les équipe à 3 (tableau) on peut a choisir des personnages de la meme classe.


 class Player {
    
    var characterAlive: [Characters] = [Characters]()
    var characterDead: [Characters] = [Characters]()
    var numberOfCharacterDies: Int = 0
    
    
    init(characters: [Characters]) {
        characters.forEach { (character) in
            self.characterAlive.append(character)
        }
    }
    
    func printCharacterInLife() {
        characterAlive.enumerated().forEach { (index, character) in
            print("\(index + 1) : \(character.name) (\(character.type) \(character.lifePoint) LP - (\(character.weapon.damage) WD)")
        }
    }
    
//    func heal /*(Characters.lifePoints :Int )*/(){
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
//    }
//    func attack(){
//        // lors de l'attaque sur une personnage associer la force avec les points de dommages.
//        //mettre en place des case pour selection le personnage à attquer?
//
//    }
    
}
