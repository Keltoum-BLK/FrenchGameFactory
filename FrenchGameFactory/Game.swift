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
    private var player1: Player?
    private var player2 : Player?
    
    
    
    func Intro(){
        print("Bienvenue à Crash of Inquisition. \nVous participez à un jeu de rôle au tour par tous où vous vous affrontrez l'un contre l'autre. \nLe vainqueur est celui qui restera en vie.\n \nAlors c'est parti!!!\n")
    }
    
//    func createPlayer() {
//
//        print( "Quel est le nom de ton équipe?")
//        let namePlayer = Tools.shared.getInputString()
//        // let pOne = Player(namePlayer: namePlayer)
//        //       players.append(pOne)
//
//    }
    
    func startGame(){
        // definir les joueurs et stocker les joueurs
        //créer le joueur 1 et 2 et demander de créer la chaque joueur en appelant la méthode de createTeams.
        Intro()
        //createPlayer()
        //createTeams()
    }
    
    func choiceTeam(name: String) -> Characters {
        var teamNumber = 0
        
        print("Veuillez selectionner la classe de votre personnage: "
                + "\n1. Templier, arme : épée."
                + "\n2. Nain, arme : hâche."
                + "\n3. Elf, arme : arc."
                + "\n4. Mage, arme : sort d'attaque.")
        
        repeat {
            let team = Tools.shared.getInputInt()
            
            switch team {
            case 1 :
                teamNumber += 1
                let templar = Templar(name : name)
                print(templar.name, templar.weapon.nameWeapon, templar.weapon.damage)
                return templar
            // characterAlive.append(templar)
            
            case 2 :
                teamNumber += 1
                //le meme code que templar
                let dwarf = Dwarf(name : name)
                return dwarf
            // characterAlive.append(dwarf)
            
            case 3 :
                teamNumber += 1
                //le meme code que templar
                let elf = Elf(name : name)
                return elf
            // characterAlive.append(elf)
            
            case 4 :
                teamNumber += 1
                //le meme code que templar
                let magus = Magus(name : name)
                return magus
            //  characterAlive.append(magus)
            default:
                print("you didn't choose a character")
            }
        } while teamNumber < 1
    }
    
    func askNameOfCharacter() {
        var tabNamesOfCharacters: [String] = [String]()
        var tabOfCharacters: [Characters] = [Characters]()
        repeat {
            print("\n Player 1 -> Please choose the name of your character \(tabOfCharacters.count + 1) :")
            var check: Bool = false
            repeat {
                let name = Tools.shared.getInputString()
                if !tabNamesOfCharacters.contains(name) {
                    check = true
                    tabOfCharacters.append(choiceTeam(name: name))
                    tabNamesOfCharacters.append(name)
                } else {
                    print("\(name) is already taken !")
                }
            } while check == false
        } while tabOfCharacters.count != 3
        print(tabNamesOfCharacters[0], tabOfCharacters[0].type, tabNamesOfCharacters[1], tabOfCharacters[1].type, tabOfCharacters[2].type, tabNamesOfCharacters[2])
        player1 = Player(characters: [tabOfCharacters[0], tabOfCharacters[1], tabOfCharacters[2]])
        
        repeat {
            print("\n Player 2 -> Please choose the name of your character \(tabOfCharacters.count + 1) :")
            var check: Bool = false
            repeat {
                let name = Tools.shared.getInputString()
                if !tabNamesOfCharacters.contains(name) {
                    check = true
                    tabOfCharacters.append(choiceTeam(name: name))
                    tabNamesOfCharacters.append(name)
                } else {
                    print("\(name) is already taken !")
                }
            } while check == false
        } while tabOfCharacters.count != 3
        print(tabNamesOfCharacters[0], tabOfCharacters[0].type, tabNamesOfCharacters[1], tabOfCharacters[1].type, tabOfCharacters[2].type, tabNamesOfCharacters[2])
        player2 = Player(characters: [tabOfCharacters[0], tabOfCharacters[1], tabOfCharacters[2]])
    }
    
//    func createTeams(){
//        // avec les joueurs créer lancer la méthode selectTeams de la classe Player
//        // var characterAlive = players[0].characterAlive
//
//        for _ in 0 ... 2{
//            print("Veuillez selectionner la classe de votre personnage: "
//                    + "\n1. Templier, arme : épée."
//                    + "\n2. Nain, arme : hâche."
//                    + "\n3. Elf, arme : arc."
//                    + "\n4. Mage, arme : sort d'attaque.")
//
//            let strChoice = Tools.shared.getInputInt()
//
//            switch strChoice{
//            case 1 :
//                print("Veuillez choisir le nom de votre templier?")
//                let charaName = Tools.shared.getInputString()
//                let templar = Templar(name : charaName)
//            // characterAlive.append(templar)
//
//            case 2 :
//                //le meme code que templar
//                print("Veuillez choisir le nom de votre nain?")
//                let charaName = Tools.shared.getInputString()
//                let dwarf = Dwarf(name : charaName)
//            // characterAlive.append(dwarf)
//
//            case 3 :
//                //le meme code que templar
//                print("Veuillez choisir le nom de votre elf?")
//                let charaName = Tools.shared.getInputString()
//                let elf = Elf(name : charaName)
//            // characterAlive.append(elf)
//
//            case 4 :
//                //le meme code que templar
//                print("Veuillez choisir le nom de votre mage?")
//                let charaName = Tools.shared.getInputString()
//                let magus = Magus(name : charaName)
//            //  characterAlive.append(magus)
//
//            default :
//                print("Je ne comprends pas.")
//
//            }
//        }
//
//    }
    
    func StartBattle () {
        //ajouter les methodes attack et heal et transférer les perso morts dans le tableau charatersDead
        
    }
    
    func displayWinner(){
        
    }
    
    // mettre en place le coffret aléatoire dans le jeu
    
}




