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
    private var player2: Player?
    private var playerTurn: Player?
    private var notPlayerTurn: Player?
    
    private var isPlayerOneTurn: Bool = true
    private var hasAlreadyChooseMagus: Bool = false
    
    private var playerTurnSelectedCharacter: Characters?
    private var playerNotTurnSelectedCharacter: Characters?
    
    
    func intro(){
        print("Welcome to Crash of Inquisition. \n\nYou take part in a turn-based role-playing game where you compete against each other. \nThe winner is the one who stays alive. \n \nSo let's go !!! \n")
    }
    
    func createTeams() {
        print("🎮 Player 1 : you first : ")
        player1 = createPlayer()
        hasAlreadyChooseMagus = false
        print("\n🎮 Player 2 : your turn : ")
        player2 = createPlayer()
        
        print("\n⚔️ Get ready for the battle ? ⚔️")
        StartBattle()
    }
    
    func startGame(){
        intro()
        createTeams()
        
    }
    
    func choiceTeam(name: String) -> Characters {
        var teamNumber = 0
        
        
        !hasAlreadyChooseMagus ? print("Please select your character class: "
                                        + "\n1. 🛡Templar, weapon: sword."
                                        + "\n2. 🪓Dwarf, weapon: axe."
                                        + "\n3. 🧝🏼‍♂️Elf, weapon: bow."
                                        + "\n4. 🧙🏼Magus, the healer.") : print("Please select your character class: "
                                                                                        + "\n1. 🛡Templar, weapon: sword."
                                                                                        + "\n2. 🪓Dwarf, weapon: axe."
                                                                                        + "\n3. 🧝🏼‍♂️Elf, weapon: bow.")
        
        
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
                
            case 4 where !hasAlreadyChooseMagus:
                hasAlreadyChooseMagus = true
                teamNumber += 1
                let magus = Magus(name : name)
                print(magus.name, magus.weapon.nameWeapon, magus.weapon.damage)
                return magus
                
            default:
                print("You didn't choose a character.")
                
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
                }else{ print("\(name) is already taken !")
                }
            } while check == false
        } while tabOfCharacters.count != 3
        let player = Player(characters: [tabOfCharacters[0], tabOfCharacters[1], tabOfCharacters[2]])
        return player
        
    }
    
    func StartBattle(){
        playerTurn = isPlayerOneTurn ? player1 : player2
        notPlayerTurn = isPlayerOneTurn ? player2 : player1
        
        guard let playerTurn = playerTurn else {return}
        guard let notPlayerTurn = notPlayerTurn else {return}
        
        if isPlayerOneTurn {
            print("Player 1, please choose a character")
        }else{
            print("Player 2, please choose a character")
        }
        
        playerTurn.printCharacterInLife()
        print("What your choice, please pick a number of your attacker: ")
        
        playerTurnSelectedCharacter =  CallACharacter(player: playerTurn)
        guard let playerTurnSelectedCharacter = playerTurnSelectedCharacter else { return }
        
        if  playerTurnSelectedCharacter.type != "Magus"{
            notPlayerTurn.printCharacterInLife()
            print("What your choice, please pick a number: ")
            playerNotTurnSelectedCharacter = CallACharacter(player: notPlayerTurn)
            playerTurnSelectedCharacter.attack(player: notPlayerTurn, target: playerNotTurnSelectedCharacter!)
        } else {
            print("Which character you want to heal: ")
            // on n'a pas appeler la méthode CallAnCharacter du coup par défaut il va s'auto soigner, mais surtout qu'on pas mattre PlayerTurnSelectedCharacter = CallAnCharacter(player : playerTrun) car on a définit PlayerTurnSelectedCharacter en constante.
            playerTurn.printCharacterInLife()
            playerTurnSelectedCharacter.attack(player: playerTurn, target: playerTurnSelectedCharacter)
        }
        
        if playerTurn.characterDead.count == 3 || notPlayerTurn.characterDead.count == 3{
            DisplayWinner()
        } else {
            isPlayerOneTurn.toggle()
            StartBattle()
        }
        
    }
    
    //function to choose an attacker alive
    func CallACharacter(player : Player)-> Characters{
        var numberOfChoice = 0
        repeat{
            let choice = Tools.shared.getInputInt()
            if choice >= 1 && choice <= player.characterAlive.count{
                numberOfChoice += 1
                return player.characterAlive[choice - 1]
            }else{
                print("You pick the wrong number, choose between 1 and 3")
            }
        }while numberOfChoice < 1
    }
    
    
    func DisplayWinner(){
        if playerTurn?.characterDead.count == 3{
            print("The Battle is OVER. The winner is \(isPlayerOneTurn.description)")
        } else if notPlayerTurn?.characterDead.count == 3{
            print("The Battle is OVER. The winner is \(isPlayerOneTurn.description)")// trouver le code pour afficher le joueur gagnant.
        }
    }
    
    // mettre en place le coffret aléatoire dans le jeu
    
}


