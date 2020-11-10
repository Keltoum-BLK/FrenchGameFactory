//
//  Game.swift
//  FrenchGameFactory
//
//  Created by Keltoum Belkadi on 09/11/2020.
//

import Foundation
//----------------------------------------------------------------
//      DEROULEMENT DU JEU
//----------------------------------------------------------------


// Définir les accès
class Game {
    // mettre en place le coffret aléatoire dans le jeu
    func Intro(){
        print("Bienvenue à Crash of Inquisition. \n Vous participez à un jeu de rôle au tour par tous où vous vous affrontrez l'un contre l'autre. \n Le vainqueur est celui qui restera en vie. Alors c'est partie!!!")
    }
    
   func startGame(){
    
    var numberPlayers = 2

        while numberPlayers == 2{
        print("Renseigne ton nom: ")
        let nameP1 = Tools.shared.getInputString()
            _ = Player(namePlayer: nameP1)
        game.createTeams()
        numberPlayers += 1
        }
    }
    func createTeams(){
        //définir le nombre de perso par joueur et les actions proposer au jouer :
        // nommer quels classes pour les personnages choisi et leur nom et les stocker dans le tableau CharacterAlive
        var characterAlive : [Characters] = [Characters]()
        let strChoice = Tools.shared.getInputInt()

        while characterAlive.count < 3{
            print("Veuillez selectionner la classe de votre personnage: "
            + "\n1. Templier, arme : épée."
            + "\n2. Nain, arme : hâche."
            + "\n3. Elf, arme : arc."
            + "\n4. Mage, arme : sort d'attaque.")
            
         
            switch strChoice{
            case 1 :
                print("Veuillez choisir le nom de votre templier?")
                 let charaName = Tools.shared.getInputString()
                let templar = Templar(name : charaName)
                characterAlive.append(templar)
            case 2 :
                //le meme code que templar
                print("Veuillez choisir le nom de votre nain?")
                let charaName = Tools.shared.getInputString()
                let dwarf = Dwarf(name : charaName)
                characterAlive.append(dwarf)
            case 3 :
                //le meme code que templar
                print("Veuillez choisir le nom de votre elf?")
                let charaName = Tools.shared.getInputString()
                let elf = Elf(name : charaName)
                characterAlive.append(elf)
            case 4 :
                //le meme code que templar
                print("Veuillez choisir le nom de votre mage?")
                let charaName = Tools.shared.getInputString()
                let magus = Magus(name : charaName)
                characterAlive.append(magus)
            default :
                print("Je ne comprends pas.")
            }
        }
     
    }
    
    func StartBattle () {
        //ajouter les methodes attack et heal et transférer les perso morts dans le tableau charatersDead

    }

    func displayWinner(){
        
    }




    

}

