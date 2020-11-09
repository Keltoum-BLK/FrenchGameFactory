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
    func startGame(){
}
    func createTeams(){
        //définir le nombre de perso par joueur et les actions proposer au jouer :
        // nommer quels classes pour les personnages choisi et leur nom et les stocker dans le tableau CharacterAlive
    }
    
    func StartBattle () {
        //ajouter les methodes attack et heal et transférer les perso morts dans le tableau charatersDead

    }

    func displayWinner(){
        
    }
    
    //------------------------------------------------------------------
    //      ACTIONS DES JOUEURS - CHOIX DES PERSONNAGES
    //------------------------------------------------------------------
    // pour chaque personnages choisi un nom à donner , mais également limiter les équipe à 3 (tableau) on peut a choisir des personnages de la meme classe.
        
        
        class Player{
        let characterAlive : [Characters] = [Characters]()
        let characterDead :[Characters] = [Characters]()
        
        
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

    //------------------------------------------------------------------------
        //CREATIONS  DES PERSONNAGES
    //------------------------------------------------------------------------
        // le nom est une optionnel car tant que le jouer ne l'a pas défini sa valeur reste null mais comment le faire comprendre au programme.
        class Characters{
            var type : String
            var name : String
            var lifePoint : Int
            var weapon : Weapon
            
            init(type : String name : String ,lifePoint : Int, weapon : Weapon) {
                self.type = type
                self.name = name
                self.lifePoint = lifePoint
                self.weapon = weapon
            }
        }
        
        /*Comment indiquer que le nom c'est le player qui le donne
        comment assigner une arme spécifique en utilisant la mere et la fille
         modifier aussi la propriété force*/
    class Templar : Characters{
        static let type = "Templar"
        static let lifePoint = 150
        static let weapon = Sword()
        
        init(){
            super.init(type :"Templar", name : name, lifePoint: 150, weapon : Sword())
        }
    }
        
    class Dwarf : Characters{
        static let type = "Templar"
        static let lifePoint = 150
        static let weapon = Sword()
        
        init(){
            super.init(type :"Templar", name : name, lifePoint: 150, weapon : Sword())
        }
    }
        

    class Elf : Characters{
        static let type = "Templar"
        static let lifePoint = 150
        static let weapon = Sword()
        
        init(){
            super.init(type :"Templar", name : name, lifePoint: 150, weapon : Sword())
        }
    }

    class Magus : Characters{
        static let type = "Templar"
        static let lifePoint = 150
        static let weapon = Sword()
        
        init(){
            super.init(type :"Templar", name : name, lifePoint: 150, weapon : Sword())
        }
    }
    //--------------------------------------------------------------------------------
    //    MISE EN PLACE DES ARMES
    //--------------------------------------------------------------------------------
    class Weapon{
        var nameWeapon : String
        var damage : Int
        init (nameWeapon : String, damage: Int){
            self.nameWeapon = nameWeapon
            self.damage = damage
        }
    }

//Assigner à chaque arme des points de dommage différent
//comment vérifier si c'est bien pris en compte et pq swift me demande de mettre _ alors que je veux que les points de dommages soit constant
class Sword : Weapon{
    static let nameWeappon = "sword"
    static let damage = 15
    
    init() {
        super.init(nameWeapon : "sword",damage: 15)
    }
    
  
}

class Axe : Weapon{
    init() {
        super.init(nameWeapon : "axe",damage: 15)
    }
}


class Bow : Weapon{
    init() {
        super.init(nameWeapon : "bow",damage: 15)
    }
    

}


class Stick : Weapon{
    init() {
        super.init(nameWeapon : "stick",damage: 15)
    }
    }
    
    
    var str = "1"
    var strInt = Int(str)

    //Caster les choix (1,2,3) du joueur pour mettre en place switch case plus tard
    func getInputInt()-> Int {
        let str = readLine()
        
        guard let strData = str, let strDataInt = Int(strData) else { return -1 }
        return strDataInt
    }

}


    


