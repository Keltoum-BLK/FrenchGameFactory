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
    private var numberOfPlayersTurn = 0
    
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
        startBattle()
    }
    
    func startGame(){
        intro()
        createTeams()
        
    }
    
    func choiceCharacter(name: String) -> Characters {
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
                print("You chose \(templar.name), the \(templar.type) with a \(templar.weapon.nameWeapon) with \(templar.weapon.damage) damage points.")
                return templar
                
            case 2 :
                teamNumber += 1
                let dwarf = Dwarf(name : name)
                print("You chose \(dwarf.name), the \(dwarf.type) with an \(dwarf.weapon.nameWeapon) with \(dwarf.weapon.damage) damage points.")
                return dwarf
                
            case 3 :
                teamNumber += 1
                let elf = Elf(name : name)
                print("You chose \(elf.name), the \(elf.type) with a \(elf.weapon.nameWeapon) with \(elf.weapon.damage) damage points.")
                return elf
                
            case 4 where !hasAlreadyChooseMagus:
                hasAlreadyChooseMagus = true
                teamNumber += 1
                let magus = Magus(name : name)
                print("You chose \(magus.name), the \(magus.type) who can heal with \(magus.weapon.nameWeapon) (30 points for each healing).")
                return magus
                
            default:
                print("You didn't choose a character.")
            }
        } while teamNumber < 1
    }
    // MARK: CREATE A PLAYER 
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
                    tabOfCharacters.append(choiceCharacter(name: name))
                    tabNamesOfCharacters.append(name)
                } else { print("\(name) is already taken !")
                }
            } while check == false
        } while tabOfCharacters.count != 3
        let player = Player(characters: [tabOfCharacters[0], tabOfCharacters[1], tabOfCharacters[2]])
        return player
        
    }
    
    func startBattle(){
        playerTurn = isPlayerOneTurn ? player1 : player2
        notPlayerTurn = isPlayerOneTurn ? player2 : player1
        
        
        guard let playerTurn = playerTurn else {return}
        guard let notPlayerTurn = notPlayerTurn else {return}
        
        if isPlayerOneTurn {
            print("Player 1, please choose a character")
        } else {
            print("Player 2, please choose a character")
        }
        
        playerTurn.printCharacterInLife()
        print("What your choice, please pick a number of your attacker: ")
        
        playerTurnSelectedCharacter =  selectCharacter(player: playerTurn)
        guard let playerTurnSelectedCharacter = playerTurnSelectedCharacter else { return }
        
        if  playerTurnSelectedCharacter.type != "Magus"{
            notPlayerTurn.printCharacterInLife()
            print("What your choice, please pick a number: ")
            playerNotTurnSelectedCharacter = selectCharacter(player: notPlayerTurn)
            playerTurnSelectedCharacter.attack(player: notPlayerTurn, target: playerNotTurnSelectedCharacter!)
        } else {
            print("Which character you want to heal: ")
            playerTurn.printCharacterInLife()
            let targetToHeal = selectCharacter(player: playerTurn)
            playerTurnSelectedCharacter.attack(player: playerTurn, target: targetToHeal)
        }
        randomChest()
        if !isPlayerOneTurn{
            numberOfPlayersTurn += 1
        }
        isPlayerOneTurn.toggle()
        
        if playerTurn.characterDead.count == 3 || notPlayerTurn.characterDead.count == 3{
            displayWinner()
        } else {
            startBattle()
        }
        
    }
    
//MARK: SELECT A CHARACTER TO MAKE THE ACTION
    func selectCharacter(player : Player)-> Characters{
        //the player choose the character of his team to make a action in the startBattle method
        var numberOfChoice = 0
        repeat{
            let choice = Tools.shared.getInputInt()
            if choice >= 1 && choice <= player.characterAlive.count{
                numberOfChoice += 1
                //subtract 1 from the choice by restricting the choice so as not to go into the negative nor to exceed the exact count of element in the characterAlive array.
                return player.characterAlive[choice - 1]
            } else {
                print("You pick the wrong number, choose between 1 and \(player.characterAlive.count)")
            }
        }while numberOfChoice < 1
    }
    
    //MARK: DISPLAY WINNER
    func displayWinner(){
        //this method display the winner's characterALive et and the all characters Deads all teams combined
        print("\nCongradulation!!!")
        isPlayerOneTurn ? print("Player 2 Wins🎊") : print("Player 1 Wins🎊")
        
        print("\nYour party counts \(numberOfPlayersTurn) turns.")
        
        print("Those who remain alive after the battle: 💪🏼")
        
        isPlayerOneTurn ? player2!.printCharacterInLife() : player1!.printCharacterInLife()
        
        print("The dead in the battlefield ☠️:")
        for dead1 in playerTurn!.characterDead{
            print ("\(dead1.name), \(dead1.type)  ")
        }
        for dead2 in notPlayerTurn!.characterDead{
            print ("\(dead2.name), \(dead2.type)  ")
        }
    }
    // MARK:Random chest generated by a random number.
    func randomChest(){
        //the method allows with the random number but also with the tool "getInputInt" for the player wants (yes or no) to generate a weapon which will replace that of the character who made the last attack or if he refuses to continue the game.
        let randomWeapon = Int.random(in: 0...10)
        if randomWeapon == 5 {
            openTheChest()
            print("Do you take the secret weapon?"
                    + "\n1. Yes"
                    + "\n2. No")
            let takeTheWeapon = Tools.shared.getInputInt()
            if takeTheWeapon == 1{
                let weaponChoice = [Axe(), Sword(), Bow(), Spell()]
                playerTurnSelectedCharacter?.weapon = weaponChoice.randomElement()!
                print("\(playerTurnSelectedCharacter!.name) can use now :  \(playerTurnSelectedCharacter!.weapon.nameWeapon)!")
                // if the character who attacks accept the weapon and have spell the character who attacks is cursed not the magus. the attacker have not choice to heal his ennemies. for the magus is cursed by a berserk'call and attacks his allies.
                if playerTurnSelectedCharacter?.weapon.nameWeapon == "spell"{
                    print("You have been cursed!!😈 \(playerTurnSelectedCharacter!.name) has \(playerTurnSelectedCharacter!.weapon.nameWeapon), the only way out is to heal your ennemies. Unlucky you are to not be a magus Mouhahahahahaha!!")
                } else if playerTurnSelectedCharacter?.type == "Magus" && playerTurnSelectedCharacter?.weapon.nameWeapon != "spell"{
                    print("You have been cursed by the Berserk's Call!!😈 \(playerTurnSelectedCharacter!.name) has \(playerTurnSelectedCharacter!.weapon.nameWeapon), the only way out is to attack your allies. Unlucky you are a magus, blood's magic have a price! Mouhahahahahaha!!")
                }
            } else {
                isPlayerOneTurn.toggle()
                startBattle()
            }
        }
        
    }
    //MARK:OPEN THE CHEST
    func openTheChest(){
        //this method use the tools.shared.getInputInt to ask to the player to open the chest or to continue the game.
        print(" Do you want open the secret chest :"
                + "\n 1. Yes"
                + "\n 2. No")
        let openTheChest = Tools.shared.getInputInt()
        if  openTheChest == 1{
            print("You open the secret chest!🥳")
        } else {
            isPlayerOneTurn.toggle()
            startBattle()
        }
    }
    
}


