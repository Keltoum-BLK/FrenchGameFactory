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
    
    
   public class Player{
    var namePlayer : String
    var characterAlive : [Characters] = [Characters]()
    var characterDead :[Characters] = [Characters]()
    
    init(namePlayer : String){
        self.namePlayer = namePlayer
    }

 
    
    
        func heal /*(Characters.lifePoints :Int )*/(){
            
//Creer une variable qui va stocker les points de vies des personnages apres les attaques mais aussi les soins ?
            //if Characters.lifePoint < Characters.lifePoint de depart{
//                Characters.lifePoint += 10
//            }else if  Characters.lifePont ==0{
//                characterDead.append(<#T##newElement: Game.Characters##Game.Characters#>)
//                characterAlive.remove(at: <#T##Int#>) comment indiquer ou supprimer
//               print ("\(charater.name) est mort et ne pas être soigné, séléctionner un autre membre de l'équipe")
//
//            }else print("votre joueur est en pleine santé")
    }
    func attack(){
        // lors de l'attaque sur une personnage associer la force avec les points de dommages.
        //mettre en place des case pour selection le personnage à attquer?
      
        }
    
}
