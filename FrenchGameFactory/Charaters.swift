//
//  Charaters.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//
import Foundation
//------------------------------------------------------------------------
    //CREATIONS  DES PERSONNAGES
//------------------------------------------------------------------------
    // le nom est une optionnel car tant que le jouer ne l'a pas défini sa valeur reste null mais comment le faire comprendre au programme.
    class Characters{
        var type : String
        var name : String
        var lifePoint : Int
        var weapon : Weapon
        
//stocker les points de vies des personnages pour chaque joueur pour suivre et faire basculer dans le tableau characterDead.
        var playerCharaLP : [Int] = [Int]()
        var charaISMagus : Bool = false
        
        init(type : String, name : String ,lifePoint : Int, weapon : Weapon) {
            self.type = type
            self.name = name
            self.lifePoint = lifePoint
            self.weapon = weapon
        }
        
        func attack(){
            var player : Player?
           
     //trouver une méthode pour selectionner les personnage de l'autre joueur.
      !charaISMagus ? print("Select the character, you want to attack : "
                    + "\n1. \(String(describing: player?.characterAlive[0].name))\n"
                    + "2. \(String(describing: player?.characterAlive[1].name))\n"
        + "3. \(String(describing: player?.characterAlive[2].name))") : print ("Select the character, you want to heal : "
                                                                                + "\n1. \(String(describing: player?.characterAlive[0].name))\n"
                                                                                + "2. \(String(describing: player?.characterAlive[1].name))\n"
                                                                    + "3. \(String(describing: player?.characterAlive[2].name))")
            
           //pareil méthode pour sélectionner le tableau de l'adversaire.
            
            let attackMember = Tools.shared.getInputInt()
            var pvChara1, pvChara2, pvChara3 : Int
            switch attackMember {
            case 1 :
                player?.characterAlive[0].lifePoint -= weapon.damage
                pvChara1 = (player?.characterAlive[0].lifePoint)!
                playerCharaLP.append(pvChara1)
                print("\(player?.characterAlive[0].name ?? "Henry") is \(playerCharaLP[0]) LP.")
            case 2:
                player?.characterAlive[0].lifePoint -= weapon.damage
                pvChara2 = (player?.characterAlive[1].lifePoint)!
                playerCharaLP.append(pvChara2)
                print("\(player?.characterAlive[1].name ?? "Henry") is \(playerCharaLP[1]) LP.")
            case 3:
                player?.characterAlive[0].lifePoint -= weapon.damage
                pvChara3 = (player?.characterAlive[2].lifePoint)!
                playerCharaLP.append(pvChara3)
                print("\(player?.characterAlive[2].name ?? "Henry") is \(playerCharaLP[2]) LP.")
            default:
                print ("Select a character to attack.")
            }
            
        }
        
        
    }
    
    
