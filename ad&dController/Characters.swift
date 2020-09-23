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

let races = ["Human", "Elf", "Dwarf", "Half-Elf", "Half-Orc", "Catfolk / Tabaxi", "Vishkanyan", "Goat", "Crafted", "Gerbil", "Orc", "Drake", "Red Dragon"]

var parties = [mainParty]
var mainParty = partyListings(name: "The Main Group", characters: partyList)
//var mainParty2 = partyListings(name: "The Main Group, Again", characters: partyList2)


/*let appDelegate = UIApplication.shared.delegate as! AppDelegate
let context = appDelegate.persistentContainer.viewContext
let entity = NSEntityDescription.entity(forEntityName: "CorePlayers", in: context)
let newUser = NSManagedObject(entity: entity!, insertInto: context)

newUser.setValue("John", forKey: "name")*/


var partyList = [
    theCharacter(name: "Freeman", charClass: "Thief / Magic User", charLev: [2,2], hp: [10,10], thacAc: [19,7], notes: "Harry", isAlive: true, player: "Cory", traveller: false, detail: "The mage of the group, he goes about with his pet Ferret named Gwen.", race: races[1], crafted: false),
    theCharacter(name: "Gaius", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [18,7], notes: "Thicc Boi Protector", isAlive: true, player: "Meme", traveller: false, detail: "A fighter who has a nack for following.", race: races[0], crafted: false),
    theCharacter(name: "Dundragon", charClass: "Fighter", charLev: [2], hp: [10,10], thacAc: [19,7], notes: "Fighting Half-Orc", isAlive: true, player: "Kristen", traveller: false, detail: "A fighter who has killed party members.", race: races[4], crafted: false),
    theCharacter(name: "Cal", charClass: "Cleric", charLev: [3], hp: [12,12], thacAc: [18,5], notes: "The Cleric", isAlive: true, player: "John", traveller: false, detail: "Fairly reasonable and known to be the one to keep people alive.", race: races[0], crafted: false),
    theCharacter(name: "PBR", charClass: "Unknown", charLev: [1,1], hp: [7,7], thacAc: [20,10], notes: "The Farce-t", isAlive: false, player: "Michael", traveller: false, detail: "The man who first alerted the party to the words of curse. Known as Dipshit.", race: races[4], crafted: false),
    theCharacter(name: "Favio", charClass: "Thief / Fighter", charLev: [1,1], hp: [7,7], thacAc: [20,10], notes: "Part Deuce", isAlive: true, player: "Michael", traveller: false, detail: "Often considerd dumb-fuck 2.", race: races[2], crafted: false),
    theCharacter(name: "Sig", charClass: "Fighter", charLev: [1], hp: [2,2], thacAc: [20,5], notes: "The Squish", isAlive: true, player: "Dylan", traveller: false, detail: "A man who couldnt handle his cock.", race: races[0], crafted: false),
    theCharacter(name: "Cath", charClass: "Cleric", charLev: [1], hp: [2,2], thacAc: [20,5], notes: "Chicken Man", isAlive: false, player: "Will", traveller: false, detail: "A man who had some cocks, but failed to use them properly.", race: races[0], crafted: false),
    theCharacter(name: "Gwen", charClass: "Ferret", charLev: [1], hp: [10,10], thacAc: [18,5], notes: "Demon Weazel", isAlive: true, player: "GM", traveller: false, detail: "A creation that was given to Freeman as a pet.", race: races[8], crafted: true)
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
    theCharacter(name: "Desmond Morrin", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Cat Man", isAlive: true, player: "GM", traveller: true, detail: "The douche that caused all of this in the first place.", race: races[5], crafted: true),
    theCharacter(name: "Barry", charClass: "Crafter Creation", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "The Top Hatted Walrus", isAlive: false, player: "GM", traveller: true, detail: "A unique creation of the Crafter. A near immortal being with the power of the gods, but too stupid to properly use them.", race: races[8], crafted: true),
    theCharacter(name: "Terry", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Terry the Vishkanyan", isAlive: true, player: "GM", traveller: true, detail: "A Fighter Tarmus, Freruth, Desmond, and Barry Encountered in the arctic of Karron, same as Bob the Catfolk.", race: races[6], crafted: false),
    theCharacter(name: "Bob", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Fighting Catfolk", isAlive: true, player: "GM", traveller: true, detail: "A Fighter Tarmus, Freruth, Desmond, and Barry Encountered in the arctic of Karron, same as Tarry the Vishkanyan.", race: races[5], crafted: false),
    theCharacter(name: "Freruth", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Fighting Catfolk, Tarmus' love interest", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate woman.", race: races[5], crafted: false),
    theCharacter(name: "Vallen Stormwater", charClass: "Druid", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Druid", isAlive: true, player: "Mikey", traveller: true, detail: "One of the original travelers. He was trapped in the mind of Tarmus for a time before being revived by the Markand.", race: races[1], crafted: false),
    theCharacter(name: "William Sonna", charClass: "Magic User", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Desmond's Tabaxi Body Double", isAlive: true, player: "GM", traveller: true, detail: "A Tabaxi with a striking resemblence in voice and appearance to Desmond. He forcibly turned him into a traveler and gave him a job as his body double.", race: races[5], crafted: false),
    theCharacter(name: "Alison Hartnell", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Human Werewolf person, Desmond's Girlfriend", isAlive: true, player: "GM", traveller: true, detail: "A woman Desmond met early in their time trapped on Korrodan. He offered her a home in the Markand and made her a Traveler. By means unknown, he managed to 'Domesticate' her lycanthrope form.", race: races[0], crafted: false),
    theCharacter(name: "Ell'swore Orebane", charClass: "Magic User", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Powerful mage from the Harbingers", isAlive: true, player: "GM", traveller: true, detail: "One of the founding members of the Harbingers. He was a Dwarf rogue. He died during the march to the Markand. Revived by the Markand, he is now a Human Mage, with no knowledge retained from his rogue abilities.", race: races[0], crafted: true),
    theCharacter(name: "Blue God", charClass: "Magic User", charLev: [50], hp: [250,250], thacAc: [2,2], notes: "Blue Man", isAlive: true, player: "GM", traveller: true, detail: "Once am deity of Snicklefritzland. Now a fairly mortal being that has been given some power from the gods to act as the medium between the Travelers and the Gods.", race: races[8], crafted: true)
]

var halmierFactionMembers = [
    theCharacter(name: "Halmier Yaldon", charClass: "Alchemist", charLev: [400], hp: [150,150], thacAc: [3,3], notes: "The Teenage menace", isAlive: true, player: "GM", traveller: true, detail: "One of the original founders of the Harbingers. A master alchemist, he is the dominant force in the Harbingers and seeks to free the Crafter and return home to Mordria.", race: races[0], crafted: true),
    theCharacter(name: "Eric the Goat", charClass: "Tax Assessor", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "The talking goat", isAlive: true, player: "GM", traveller: true, detail: "A talking goat who appeared in Snicklefritzland. He argued he always has lived there, and acted as an accountant for Desmond and Samara while they ruled over Snickelfritzland. He now serves managing funds for the Harbingers.", race: races[7], crafted: false),
    theCharacter(name: "Tim", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "A man named Tim", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate man who joined back in Mordria.", race: races[0], crafted: false),
    theCharacter(name: "Shadowbow Family", charClass: "Family", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "All but Toran", isAlive: true, player: "GM", traveller: true, detail: "Family of Toran, and decendants of Sumina Shadowbow, a founder of the Harbingers.", race: races[1], crafted: true),
    theCharacter(name: "Tordek", charClass: "Tordek", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Its Tordek", isAlive: true, player: "GM", traveller: true, detail: "Dwarf son of Ell'swore Orebane.", race: races[0], crafted: true),
    theCharacter(name: "Valla'rak", charClass: "Red Dragon", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Red Dragon of the Harbingers", isAlive: true, player: "GM", traveller: true, detail: "One of the original founders of the Harbingers.", race: races[12], crafted: true),
    theCharacter(name: "Gregg", charClass: "Fighter", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "A guy named Gregg", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate man who joined during the march to the Markand.", race: races[0], crafted: false),
    theCharacter(name: "Terry", charClass: "Drake", charLev: [10000], hp: [2000,2000], thacAc: [5,1], notes: "Terry the Drake", isAlive: true, player: "GM", traveller: true, detail: "A Drake that appeared and called himself Terry, appeared to be friends with Eric the Goat.", race: races[11], crafted: false),
    theCharacter(name: "Dular", charClass: "Magic User", charLev: [50], hp: [250,250], thacAc: [2,2], notes: "Orc Summoner", isAlive: true, player: "GM", traveller: true, detail: "One of the original founders of the Harbingers. Near immortal but forgets his past lives and changes names each time.", race: races[10], crafted: true)
]

var mainNeutralFactionMembers = [
    theCharacter(name: "Charles Lawson", charClass: "Fighting Man", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The immortal child", isAlive: false, player: "GM", traveller: true, detail: "One of the original founders of the Harbingers and both Father and Foster-Father of Tarmus Shank.", race: races[0], crafted: true),
    theCharacter(name: "Sammy the Gerbil", charClass: "Thief", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The muffin hunter", isAlive: true, player: "GM", traveller: true, detail: "Mythical gerbil who is forever on the hunt for his muffin.", race: races[9], crafted: false),
    theCharacter(name: "Turl", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Man who joined in Allura", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate man who joined during the march to the Markand.", race: races[0], crafted: false),
    theCharacter(name: "Amy", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in (Eluria - Mikey's Desert World)", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate woman who joined while Desmond and Toran visited Eluria.", race: races[0], crafted: false),
    theCharacter(name: "Maria", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in Lone Star (Mordria)", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate woman who joined during the march to the Markand.", race: races[0], crafted: false),
    theCharacter(name: "Alia", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Woman who joined in Lone Star (Mordria)", isAlive: true, player: "GM", traveller: true, detail: "Unfortunate woman who joined during the march to the Markand.", race: races[0], crafted: false),
    theCharacter(name: "Wilson", charClass: "Magic User", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Small time wizard", isAlive: true, player: "GM", traveller: true, detail: "Wizard from Snicklefritzland.", race: races[0], crafted: false),
    theCharacter(name: "Toran Shadowbow", charClass: "Thief", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "Elf rogue", isAlive: true, player: "GM", traveller: true, detail: "rogue and inherited rite of Harbinger", race: races[1], crafted: false),
    theCharacter(name: "Chesshire", charClass: "Magic User / Bard / Alchemist", charLev: [900], hp: [300,300], thacAc: [3,3], notes: "The Adventurer", isAlive: true, player: "GM", traveller: true, detail: "Master Artificer who created impressive inventions", race: races[5], crafted: false)
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
    let detail: String
    let race: String
    let crafted: Bool
}


struct theNpc{
    var name: String
    var profession: String
    var location: String
    var affiliation: String
    var notes: String
}
