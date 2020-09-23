/*
 EssentialAD&D application
 Creation date: 4/28/2020
 @author: Matt Kimball
 purpose: to hold essential character information for use in this application
 */
// -------------------------------------------------------------------
//Characters
// Setup basic information for characters such as their health, name, class, stats, thac0, and ac
import Foundation
import CoreData
import SwiftUI

var parties = [mainParty, mainParty2]
var mainParty = partyListings(name: "The Main Group", characters: partyList)
var mainParty2 = partyListings(name: "The Main Group, Again", characters: partyList2)


/*let appDelegate = UIApplication.shared.delegate as! AppDelegate
let context = appDelegate.persistentContainer.viewContext
let entity = NSEntityDescription.entity(forEntityName: "CorePlayers", in: context)
let newUser = NSManagedObject(entity: entity!, insertInto: context)

newUser.setValue("John", forKey: "name")*/


var partyList = [
    theCharacter(name: "Freeman", charClass: "Thief / Magic User", charLev: [2,2], hp: [10,10], thacAc: [19,7], notes: "Harry", isAlive: true, player: "Cory", traveller: false),
    theCharacter(name: "Gaius", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [18,7], notes: "Thicc Boi Protector", isAlive: true, player: "Meme", traveller: false),
    theCharacter(name: "Dragon", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [19,7], notes: "Fighting Half-Orc", isAlive: true, player: "Kristen", traveller: false),
    theCharacter(name: "Cal", charClass: "Cleric", charLev: [3], hp: [12,12], thacAc: [18,5], notes: "The Cleric", isAlive: true, player: "John", traveller: false),
    theCharacter(name: "PBR", charClass: "Unknown", charLev: [1,1], hp: [7,7], thacAc: [20,10], notes: "The Farce-t", isAlive: false, player: "Michael", traveller: false),
    theCharacter(name: "Favio", charClass: "Thief / Fighter", charLev: [1,1], hp: [7,7], thacAc: [20,10], notes: "Part Deuce", isAlive: true, player: "Michael", traveller: false),
    theCharacter(name: "Sig", charClass: "Fighter", charLev: [1], hp: [2,2], thacAc: [20,5], notes: "The Squish", isAlive: true, player: "Dylan", traveller: false),
    theCharacter(name: "Cath", charClass: "Cleric", charLev: [1], hp: [2,2], thacAc: [20,5], notes: "Chicken Man", isAlive: false, player: "Will", traveller: false)
]
var partyList2 = [
    theCharacter(name: "1", charClass: "Thief / Magic User", charLev: [2,2], hp: [10,10], thacAc: [20,10], notes: "Elf Man", isAlive: true, player: "GM", traveller: false),
    theCharacter(name: "2", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [20,8], notes: "Fighting Person _ 1", isAlive: true, player: "GM", traveller: false),
    theCharacter(name: "3", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [15,4], notes: "Fighting Person _ 2", isAlive: true, player: "GM", traveller: false),
    theCharacter(name: "4", charClass: "Cleric", charLev: [3], hp: [12,12], thacAc: [10,2], notes: "Elf Man", isAlive: true, player: "GM", traveller: false),
    theCharacter(name: "5", charClass: "Thief / Fighter", charLev: [1,1], hp: [7,7], thacAc: [20,10], notes: "Dwarf Man", isAlive: true, player: "GM", traveller: false)
]




var riverGuardMidwayList = [
    theNpc(name: "Simon Sanders", profession: "Mayor", location: "", affiliation: "RiverGuard ", notes: "Weak Minded"),
    theNpc(name: "Cassandra Olivera", profession: "Captain of Guard", location: "", affiliation: "", notes: "Strict"),
    theNpc(name: "Alyssa Hauffer", profession: "Treasurer", location: "", affiliation: "", notes: "Hates Lorenzo"),
    theNpc(name: "Lorenzo Salian", profession: "Lorenzo's Armor", location: "", affiliation: "", notes: "Cheap"),
    theNpc(name: "Korvir Malanin", profession: "Korvir's Swords and More", location: "", affiliation: "", notes: "Workaholic"),
    theNpc(name: "Olaf Savastaguard", profession: "Olaf's Potions and More", location: "", affiliation: "", notes: "Greedy"),
    theNpc(name: "Jeremy Savfar", profession: "Owner Drunken Mule", location: "", affiliation: "", notes: "Laid Back")
    
]

var desmondFactionMembers = [
    theCharacter(name: "Desmond Morrin", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Cat Man", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Barry", charClass: "Crafter Creation", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "The Top Hatted Walrus", isAlive: false, player: "GM", traveller: true),
    theCharacter(name: "Terry", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Terry the Vishkanyan", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Bob", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Fighting Catfolk", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Freruth", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Fighting Catfolk, Tarmus' love interest", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Vallen Stormwater", charClass: "Druid", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Druid", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "William Sonna", charClass: "Magic User", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Desmond's Tabaxi Body Double", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Alison Hartnell", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Human Werewolf person, Desmond's Girlfriend", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Ell'swore Orebane", charClass: "Magic User", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Powerful mage from the Harbingers", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Blue God", charClass: "Magic User", charLev: [50], hp: [250,250], thacAc: [2,2], notes: "Blue Man", isAlive: true, player: "GM", traveller: true)
]

var halmierFactionMembers = [
    theCharacter(name: "Halmier Yaldon", charClass: "Alchemist", charLev: [400], hp: [150,150], thacAc: [3,3], notes: "The Teenage menace", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Eric the Goat", charClass: "Tax Assessor", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "The talking goat", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Tim", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "A man named Tim", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Shadowbow Family", charClass: "Family", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "All but Toran", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Tordek", charClass: "Tordek", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Its Tordek", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Valla'rak", charClass: "Red Dragon", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Red Dragon of the Harbingers", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Gregg", charClass: "Tax Assessor", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "A guy named Gregg", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Terry", charClass: "Drake", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Terry the Drake", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Dular", charClass: "Magic User", charLev: [50], hp: [250,250], thacAc: [2,2], notes: "Orc Summoner", isAlive: true, player: "GM", traveller: true)
]

var mainNeutralFactionMembers = [
    theCharacter(name: "Charles Lawson", charClass: "Fighting Man", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The immortal child", isAlive: false, player: "GM", traveller: true),
    theCharacter(name: "Sammy the Gerbil", charClass: "Thief", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The muffin hunter", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Turl", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Man who joined in Allura", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Amy", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in (Eluria - Mikey's Desert World)", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Maria", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in Lone Star (Mordria)", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Alia", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in Lone Star (Mordria)", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Wilson", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Small time wizard from Snicklefritzland", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Toran Shadowbow", charClass: "Thief", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Elf Rouge", isAlive: true, player: "GM", traveller: true),
    theCharacter(name: "Chesshire", charClass: "Magic User / Bard / Alchemist", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The Adventurer", isAlive: true, player: "GM", traveller: true)
]


struct partyListings{
    var name: String
    var characters: [theCharacter]
}

struct theCharacter{
    var name: String
    var charClass: String
    var charLev: [Int]
    var hp: [Int]
    var thacAc: [Int]
    var notes: String
    var isAlive: Bool
    let player: String
    let traveller: Bool
}


struct theNpc{
    var name: String
    var profession: String
    var location: String
    var affiliation: String
    var notes: String
}
