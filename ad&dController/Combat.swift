//
//  Combat.swift
//  ad&dController
//
//  Created by mattkimball on 5/14/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import Foundation


func attack(attacker: theCharacter, defender: theEnemy, roller: Int) -> Bool{
// Thaco - roll < enemy AC
    // (thaco - enemyAC) <= roll
    if((roller + 1) == 1){
        return false
    }
    else if((roller + 1) == 20){
        return true
    }
    else{
        if((attacker.thacAc[0]-defender.thacAc[1]) <= (roller + 1)){
            return true
        }
        else{
            return false
        }
    }
    
}

func displayAttackResults(attacker: theCharacter, defender: theEnemy, roller: Int) -> String{
    var returnString = ""
    returnString.append(attacker.name + " has a Thac0 of: " + String(attacker.thacAc[0]) + "\n")
    returnString.append(defender.name + " has an AC of: " + String(defender.thacAc[1]) + "\n")
    returnString.append("To hit " + defender.name + ", " + attacker.name + " Needs to roll at least a: " + String(attacker.thacAc[0]-defender.thacAc[1]) + "\n")
    returnString.append(attacker.name + " Rolled a: " + String(roller + 1) + "\n")
    
    return returnString
}  // End displayAttackResults





func defend(attacker: theEnemy, defender: theCharacter, roller: Int) -> Bool{
// Thaco - roll < enemy AC
    // (thaco - enemyAC) <= roll
    if((roller + 1) == 1){
        return false
    }
    else if((roller + 1) == 20){
        return true
    }
    else{
        if((attacker.thacAc[0]-defender.thacAc[1]) <= (roller + 1)){
            return true
        }
        else{
            return false
        }
    }
    
}

func displayDefendResults(attacker: theEnemy, defender: theCharacter, roller: Int) -> String{
    var returnString = ""
    returnString.append(attacker.name + " has a Thac0 of: " + String(attacker.thacAc[0]) + "\n")
    returnString.append(defender.name + " has an AC of: " + String(defender.thacAc[1]) + "\n")
    returnString.append("To hit " + defender.name + ", " + attacker.name + " Needs to roll at least a: " + String(attacker.thacAc[0]-defender.thacAc[1]) + "\n")
    returnString.append(attacker.name + " Rolled a: " + String(roller + 1) + "\n")
    return returnString
}  // End displayDefendResults
