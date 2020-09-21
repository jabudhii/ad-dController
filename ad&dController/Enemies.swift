/*
 EssentialAD&D application
 Creation date: 5/4/2020
 @author: Matt Kimball
 purpose: to hold essential enemy information for use in this application
 */
// -------------------------------------------------------------------
//Enemies
// Setup basic information for enemies such as their health, name, class, stats, thac0, and ac
// This class inherits from CharacterClass
import Foundation
import Combine
















var locationTypes = [allLoc, halLoc, arcticLoc, plainLoc, forestLoc, hillLoc, mountainLoc, swampLoc, desertLoc, dungeonLoc, oceanLoc]
var arcticLoc = locationType(name: "Arctic",desc: "Severly cold, blizzards appear on occasion. The ground is covered in ice and snow", recGear: "coldGear", monsterSet: getEnemyByLoc(location: locationNames[0]))
var plainLoc = locationType(name: locationNames[1], desc: "Grassy fields", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[1]))
var forestLoc = locationType(name: locationNames[2],desc: "Grasslands and Trees", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[2]))
var hillLoc = locationType(name: locationNames[3], desc: "Rolling hills", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[3]))
var mountainLoc = locationType(name: locationNames[4], desc: "Large rocky mountains", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[4]))
var swampLoc = locationType(name: locationNames[5], desc: "Smelly and murky", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[5]))
var desertLoc = locationType(name: locationNames[6],desc: "Sand gets Everywhere", recGear: "hotGear", monsterSet: getEnemyByLoc(location: locationNames[6]))
var dungeonLoc = locationType(name: locationNames[7],desc: "Dark and Dank, dungeons are often holding of the creepy crawleys", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[7]))
var oceanLoc = locationType(name: locationNames[8],desc: "Wet", recGear: "normalGear", monsterSet: getEnemyByLoc(location: locationNames[8]))

var allLoc = locationType(name: locationNames[9],desc: "Anywhere", recGear: "anyGear", monsterSet: getEnemyByLoc(location: locationNames[9]))
var halLoc = locationType(name: locationNames[10],desc: "Anywhere", recGear: "anyGear", monsterSet: getEnemyByLoc(location: locationNames[10]))

var locationNames = ["Arctic", "Plains", "Forest", "Hill", "Mountains", "Swamp", "Desert", "Underground", "Water", "Anywhere", "Halmier Creations"]



func getEnemyByLoc(location: String) -> [theEnemy]{
    var tempoList: [theEnemy] = []
    for i in 0 ..< monsterList.count{
        if(monsterList[i].locationType == location/*s || (monsterList[i].locationType == "Anywhere" && location != "Halmier Creation")*/){
            tempoList.append(monsterList[i])
        }
    }
    return tempoList
}

func genHalmierMonsters(option: Int){
    /*Options:
     1-Black
     2-Red
     3-Orange
     4-Yellow
     5-Green
     6-Blue
     7-Violet
     8-Watcher
     9-Hunter
     10-Trapper
     */
}  // End of genHalmierMonsters


var kobold = theEnemy(id: 0,name: "Kobold", hp: [4,4], thacAc: [20,7], locationType: locationNames[9], notes: "Its a Kobold",loot: nil, xp: 15, dmg: "1d4")
var rustMonster = theEnemy(id: 1,name: "Rust Monster", hp: [40,40], thacAc: [15,2], locationType: locationNames[7], notes: "Its a Rust Monster",loot: nil, xp: 270, dmg: "nil")
var zombie = theEnemy(id: 2,name: "Zombie", hp: [16,16], thacAc: [19,8], locationType: locationNames[9], notes: "Its a Zombie",loot: nil, xp: 65, dmg: "1d8")
var skeleton = theEnemy(id: 3,name: "Skeleton", hp: [8,8], thacAc: [19,7], locationType: locationNames[9], notes: "Its a Skeleton",loot: nil, xp: 65, dmg: "1d6")
var orc = theEnemy(id: 4,name: "Orc", hp: [8,8], thacAc: [19,6], locationType: locationNames[9], notes: "Its an Orc",loot: nil, xp: 15, dmg: "1d8")
var vampire = theEnemy(id: 5,name: "Vampire", hp: [43,43], thacAc: [11,1], locationType: locationNames[9], notes: "They like to suck",loot: nil, xp: 8000, dmg: "5d2")
var lScorpion = theEnemy(id: 6,name: "Large Scorpion", hp: [18,18], thacAc: [19,5], locationType: locationNames[6], notes: "Stabby",loot: nil, xp: 175, dmg: "1d4")
var cMimic = theEnemy(id: 7,name: "Common Mimic", hp: [56,56], thacAc: [13,7], locationType: locationNames[7], notes: "Looks like chests, doorframe, and more...willing to talk",loot: nil, xp: 975, dmg: "3d4")
var kMimic = theEnemy(id: 8,name: "Killer Mimic", hp: [80,80], thacAc: [11,7], locationType: locationNames[7], notes: "Looks like chests, doorframe, and more", loot: nil, xp: 3000, dmg: "3d4")
var fleshGolem = theEnemy(id: 9,name: "Flesh Golem", hp: [40,40], thacAc: [11,9], locationType: locationNames[9], notes: "Rancid smell, it looks like a frankenstein's monster", loot: nil, xp: 2000, dmg: "2d8")
var goblin = theEnemy(id: 10,name: "Goblin", hp: [8,8], thacAc: [20,6], locationType: locationNames[9], notes: "Its a Goblin", loot: nil, xp: 15, dmg: "1d6")
var crabMan = theEnemy(id: 11,name: "Crabman", hp: [24,24], thacAc: [17,4], locationType: locationNames[8], notes: "Looks like crab, talks like people", loot: nil, xp: 65, dmg: "1d6")
var mountainGiant = theEnemy(id: 12,name: "Mountain Giant", hp: [123,123], thacAc: [5,4], locationType: locationNames[4], notes: "A giant of thhe mountains", loot: nil, xp: 7000, dmg: "1d8")


var OliqCMimic = theEnemy(id: 13,name: "OraLiq - cMimic", hp: [224,224], thacAc: [9,3], locationType: locationNames[10], notes: "Looks like chests, doorframe, and more...leaking Orange Liquid",loot: nil, xp: 2925, dmg: "3d6")
var oLiqOrc = theEnemy(id: 14,name: "OraLiq - Orc", hp: [32,32], thacAc: [15,4], locationType: locationNames[10], notes: "Its an Orc, mutated by Orange Liquid",loot: nil, xp: 45, dmg: "3d6")
var oLiqKobold = theEnemy(id: 15,name: "OraLiq - Kobold", hp: [16,16], thacAc: [16,4], locationType: locationNames[10], notes: "Its a Kobold, mutated by Orange Liquid",loot: nil, xp: 45, dmg: "3d6")

let monsterList: [theEnemy] = [kobold, rustMonster, zombie, skeleton, orc,vampire,lScorpion,cMimic,kMimic,fleshGolem,goblin,crabMan,mountainGiant,OliqCMimic,oLiqOrc,oLiqKobold]







struct locationType: Identifiable{
    var id = UUID()
    var name: String
    var desc: String
    var recGear: String
    var monsterSet: [theEnemy]
}

struct theEnemy: Identifiable{
    var id: Int
    var name: String
    var hp: [Int]
    let thacAc: [Int]
    var locationType: String
    var notes: String
    var loot: [Items]?
    var xp: Int
    var dmg: String
    
    init(id: Int, name: String, hp: [Int], thacAc: [Int], locationType: String, notes: String,loot: [Items]?, xp: Int, dmg: String){
        self.id = id
        self.name = name
        self.hp = hp
        self.thacAc = thacAc
        self.locationType = locationType
        self.notes = notes
        self.loot = loot
        self.xp = xp
        self.dmg = dmg
    }
    
}  // End of theEnemy Struct


class Enemies: ObservableObject{
@Published var theEnemies: [theEnemy]
    
    init(){
        self.theEnemies = []
    }
}



func getEnemyData(critter: theEnemy, option: Int) -> String{
    switch (option){
    case 0:
        return "HP: " + String(critter.hp[0])
    case 1:
        return "Thac0: " + String(critter.thacAc[0])
    case 2:
        return"Armor Class: " + String(critter.thacAc[1])
    case 3:
        return "Terrain: " + critter.locationType
    case 4:
        return "XP: " + String(critter.xp)
    default:
        return String("No valid option selected")
    }
}
