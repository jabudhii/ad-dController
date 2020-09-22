/*
 EssentialAD&D application
 Creation date: 5/4/2020
 @author: Matt Kimball
 purpose: to hold essential item information for use in this application
 */
// -------------------------------------------------------------------
//Items
// Setup basic information for items
import Foundation

struct Items{
    var group: Int
    var name: String
    var cost: [Int]
    var weight: Int
    var desc: String
}

struct Weapons{
    var group: Int
    var name: String
    var cost: [Int]
    var weight: Int
    var desc: String
    var damageS: Int
    var damageM: Int
    var damageL: Int
}

struct Armors{
    var name: String
    var cost: [Int]
    var weight: Int
    var desc: String
    var ac: Int
}
struct Potions{
    var name: String
    var cost: [Int]
    var weight: Int
    var desc: String
}
struct Provisions{
    var name: String
    var cost: [Int]
    var weight: Int
    var desc: String
}

let armorList: [Armors] = [ArmBandedmail, ArmBrigandine, ArmBronzeplate, ArmChainmail, ARmFieldplate, ArmFullplate, ArmGreatHelm, ArmBasinet, ArmHide, ArmLeather, ArmPadded, ArmPlatemail, ArmRingmail, ArmScalemail, ArmSplintmail, ArmStudLeather]
let potionList: [Potions] = [PotHealingW, PotHealingO, PotHealingM, PotHealingE, PotLongevity]
let provisionList: [Provisions] = [ProStanRation, ProIronRation, ProAle]

let itemTypeList: [String] = ["Clothing", "Daily Food and Lodging", "Tack and Harness", "Misc", "Chesshire Tools", "Auroran Tools", "Magic Ring", "Wand"]



func getValue(itemCost: [Int]) -> String{
    var returner = ""
    let theCost = itemCost
    let coin = ["Platinum", "Gold", "Electrum", "Silver", "Copper"]
    for i in 0 ..< 5{
        if theCost[i] != 0{
            returner = String(theCost[i]) + " " + coin[i]
        }
    }
    return returner
}

// Copper, Silver, Ethereum, Gold, Platinum, but in reverse

let ArmBandedmail = Armors(name:"Banded Mail", cost: [0,200,0,0,0], weight: 35, desc: "overlapping stripes of metal sewn to a backing of leather and chainmail", ac: 4)
let ArmBrigandine = Armors(name:"Brigandine", cost: [0,120,0,0,0], weight: 35, desc: "small metal pleastes sewn to a layer of canvas, wreapped in cloth", ac: 7)
let ArmBronzeplate = Armors(name:"Bronze Plate", cost: [0,400,0,0,0], weight: 45, desc: "plate mail made of softer bronze", ac: 4)
let ArmChainmail = Armors(name:"Chainmail", cost: [0,75,0,0,0], weight: 40, desc: "interlocking metal rings", ac: 5)
let ARmFieldplate = Armors(name:"Field Plate", cost: [0,2000,0,0,0], weight: 60, desc: "most common version of platemail", ac: 2)
let ArmFullplate = Armors(name:"Full Plate", cost: [0,10000,0,0,0], weight: 70, desc: "imporessive, high gothic style armor", ac: 1)
let ArmGreatHelm = Armors(name:"Great Helm", cost: [0,30,0,0,0], weight: 10, desc: "nice helkmet", ac: 10)
let ArmBasinet = Armors(name:"Basinet", cost: [0,8,0,0,0], weight: 5, desc: "basic helmet", ac: 10)
let ArmHide = Armors(name:"Hide", cost: [0,15,0,0,0], weight: 30, desc: "thick hide of a creature", ac: 7)
let ArmLeather = Armors(name:"Leather", cost: [0,5,0,0,0], weight: 15, desc: "leather hardened", ac: 8)
let ArmPadded = Armors(name:"Padded", cost: [0,4,0,0,0], weight: 10, desc: "quilted layers of cloth and batting", ac: 8)
let ArmPlatemail = Armors(name:"Platemail", cost: [0,600,0,0,0], weight: 50, desc: "cahin and brigandine", ac: 3)
let ArmRingmail = Armors(name:"Ringmail", cost: [0,100,0,0,0], weight: 30, desc: "early chainmail whre its sewn directly to leather isntead of interlaced", ac: 7)
let ArmScalemail = Armors(name:"Scalemail", cost: [0,120,0,0,0], weight: 40, desc: "leather covered in small pieces of metal", ac: 7)
let ArmSplintmail = Armors(name:"Splintmail", cost: [0,80,0,0,0], weight: 40, desc: "naoorw vertical strips rivted to a backing of leather", ac: 5)
let ArmStudLeather = Armors(name:"Studded Leather", cost: [0,20,0,0,0], weight: 25, desc: "non-hardened leather reinforced with metal rivets", ac: 7)

func getArmorData(theArmor: Armors, option: Int) -> String{
    switch (option){
    case 0:
        return "Cost: " + getValue(itemCost: theArmor.cost)
    case 1:
        return "Weight: " + String(theArmor.weight)
    case 2:
        return"Armor Class Rating: " + String(theArmor.ac)
    case 3:
        return theArmor.desc
    default:
        return String("No valid option selected")
    }
}


let PotHealingW = Potions(name: "Weak Healing Potion", cost: [0,250,0,0,0], weight: 1, desc: "A weak healing potion, heals for 1d4 health")
let PotHealingO = Potions(name: "Orthal Healing Potion", cost: [0,325,0,0,0], weight: 1, desc: "An orthal healing potion, heals for 1d8 health")
let PotHealingM = Potions(name: "Healing Potion", cost: [0,400,0,0,0], weight: 1, desc: "A moderate healing potion, heals for 2d4+2 health")
let PotHealingE = Potions(name: "Extra Healing Potion", cost: [0,800,0,0,0], weight: 1, desc: "An extra healing potion, heals for 3d8+3 health, 1d8 for 1/3 drink")
let PotLongevity = Potions(name: "Longevity Potion", cost: [0,1000,0,0,0], weight: 1, desc: "Reduce age 1-12 years. 1% cumulative undo prev, Entire potion")

func getPotionData(thePotion: Potions, option: Int) -> String{
    switch (option){
    case 0:
        return "Cost: " + getValue(itemCost: thePotion.cost)
    case 1:
        return "Weight: " + String(thePotion.weight)
    case 2:
        return String(thePotion.desc)
    default:
        return String("No valid option selected")
    }
}


let ProIronRation = Provisions(name: "Iron Ration", cost: [0,5,0,0,0], weight: 1, desc: "Bad tasting but non-rotting food for adventureres, lasts a week each")
let ProStanRation = Provisions(name: "Standard Ration", cost: [0,3,0,0,0], weight: 1, desc: "Decent tasting food for adventureres, lasts a week each")
let ProAle = Provisions(name: "Ale (Pint)", cost: [0,0,0,3,0], weight: 1, desc: "1 pint of light ale")

func getProvData(thePotion: Provisions, option: Int) -> String{
    switch (option){
    case 0:
        return "Cost: " + getValue(itemCost: thePotion.cost)
    case 1:
        return "Weight: " + String(thePotion.weight)
    case 2:
        return String(thePotion.desc)
    default:
        return String("No valid option selected")
    }
}


