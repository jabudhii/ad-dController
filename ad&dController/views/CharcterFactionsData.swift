//
//  CharcterFactionsData.swift
//  ad&dController
//
//  Created by Matt Kimball on 7/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import Foundation
import SwiftUI

class theFactionCharacter{
    var name: String = ""
    var image: Image
    var members: [theCharacter]
    init(setName: String, setImage: Image, setMembers: [theCharacter]){
        name = setName
        image = setImage
        members = setMembers
    }
}  // End of theFaction class

class theFactionNpc{
    var name: String = ""
    var image: Image
    var members: [theNpc]
    init(setName: String, setImage: Image, setMembers: [theNpc]){
        name = setName
        image = setImage
        members = setMembers
    }
}  // End of theFaction class

let adndWorldOneFactions: [theFactionCharacter] = [
    
    theFactionCharacter(setName: "The Main Party", setImage: Image(systemName: "photo"),setMembers:
    partyList),
    // -- Traveler Series Factions
    theFactionCharacter(setName: "Desmond's Faction", setImage: Image("Desmond_BaseIcon"),setMembers: desmondFactionMembers),
    theFactionCharacter(setName: "Halmier's Faction", setImage: Image(systemName: "photo"),setMembers:
    halmierFactionMembers),
    theFactionCharacter(setName: "Neutral Traveller Faction", setImage: Image(systemName: "photo"),setMembers:mainNeutralFactionMembers)
    
    // -- Town Factions
    
    
    
    ]  // End of adndWorldOneFactions array
