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
    
    
    
    func intro(){
        print("Welcome to Crash of Inquisition. \n\nYou take part in a turn-based role-playing game where you compete against each other. \nThe winner is the one who stays alive. \n \nSo let's go !!! \n")
    }
    
    func createTeams() {
        print("🎮 Player 1 : you first : ")
        player1 = createPlayer()
        print("\n🎮 Player 2 : your turn : ")
        player2 = createPlayer()

    }
    
    func startGame(){
        intro()
        createTeams()
        print("\n⚔️ Get ready for the battle ? ⚔️")
    }
    
    func choiceTeam(name: String) -> Characters {
        var teamNumber = 0
        
        print("Please select your character class: "
                + "\n1. 🛡Templar, weapon: sword."
                + "\n2. 🪓Dwarf, weapon: axe."
                + "\n3. 🧝🏼‍♂️Elf, weapon: bow."
                + "\n4. 🧙🏼Magus, the healer.")
        
        repeat {
            let team = Tools.shared.getInputInt()
          
                switch team {
                    case 1 :
                        teamNumber += 1
                        let templar = Templar(name : name)
                        print(templar.name, templar.weapon.nameWeapon, templar.weapon.damage)
                        return templar
           
                    case 2 :
                        teamNumber += 1
                        let dwarf = Dwarf(name : name)
                        print(dwarf.name, dwarf.weapon.nameWeapon, dwarf.weapon.damage)
                        return dwarf
         
                    case 3 :
                        teamNumber += 1
                        let elf = Elf(name : name)
                        print(elf.name, elf.weapon.nameWeapon, elf.weapon.damage)
                        return elf
                        
                    case 4 :
                        teamNumber += 1
                        let magus = Magus(name : name)
                        print(magus.name, magus.weapon.nameWeapon, magus.weapon.damage)
                        return magus
            default:
                print("you didn't choose a character")
            }
        
    } while teamNumber < 1
    }
    
    func createPlayer()  -> Player {
        var tabNamesOfCharacters: [String] = [String]()
        var tabOfCharacters: [Characters] = [Characters]()
        repeat {
            print("\n -> Please choose the name of your character \(tabOfCharacters.count + 1) :")
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
        let player = Player(characters: [tabOfCharacters[0], tabOfCharacters[1], tabOfCharacters[2]])
        return player
    }
    
    func StartBattle () {
        //ajouter les methodes attack et heal et transférer les perso morts dans le tableau charatersDead
        
    }
    
    func displayWinner(){
        
    }
    
    // mettre en place le coffret aléatoire dans le jeu
    
}




