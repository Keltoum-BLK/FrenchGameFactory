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
//    var players = 0
    
    func createPlayer() -> Player{
       
            print( "Quel est le nom de ton équipe?")
            let namePlayer = Tools.shared.getInputString()
            let player = Player(namePlayer: namePlayer)
//            players += 1
            return player
        }

    
    func Intro(){
        print("Bienvenue à Crash of Inquisition. \nVous participez à un jeu de rôle au tour par tous où vous vous affrontrez l'un contre l'autre. \nLe vainqueur est celui qui restera en vie.\n \nAlors c'est parti!!!\n")
    }
    

   func startGame(){
    // definir les joueurs et stocker les joueurs
    //créer le joueur 1 et 2 et demander de créer la chaque joueur en appelant la méthode de createTeams.
        Intro()
        createTeams()
//      self.players += 1
    
}
    
   
    
    func createTeams(){
      // avec les joueurs créer lancer la méthode selectTeams de la classe Player
        var characterAlive = createPlayer().characterAlive
               
               for _ in 0 ... 2{
                   print("Veuillez selectionner la classe de votre personnage: "
                   + "\n1. Templier, arme : épée."
                   + "\n2. Nain, arme : hâche."
                   + "\n3. Elf, arme : arc."
                   + "\n4. Mage, arme : sort d'attaque.")
            
                   let strChoice = Tools.shared.getInputInt()
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

    // mettre en place le coffret aléatoire dans le jeu
   }





