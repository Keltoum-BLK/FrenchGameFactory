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
    // display the characterAlive array for a player
    func printCharacterInLife() {
        characterAlive.enumerated().forEach { (index, character) in
            print("\(index + 1) : \(character.name) (\(character.type) \(character.lifePoint) LP - (\(character.weapon.damage) WD)")
        }
    }
    // display the characterDead array for a player 
    func printCharacterDead() {
            characterDead.enumerated().forEach { (index, character) in
                print("\(index + 1) : \(character.name) (\(character.type) \(character.lifePoint) LP - (\(character.weapon.damage) WD)")
            }
    }
   
    
}
