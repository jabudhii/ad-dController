//
//  CombatView.swift
//  ad&dController
//
//  Created by mattkimball on 5/11/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import Foundation
import SwiftUI


//var selectedEnemyList: [theEnemy] = []

var tempSelectedEnemyList: [theEnemy] = []

struct CombatView: View {
    
    let dTwenRoll = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    let enCount = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    
    
    
    @State private var showingAttackAlert = false
    @State private var showingAttackAlert2 = false
    @State private var showingAttackAlert3 = false
    
    @State private var generateEnemyPicker = false
    

    @State private var selectedParty = 0
    @State private var selectedChar = 0
    @State private var selectedEnemy = 0
    @State private var selectedRoll = 0
    @State private var selDmgRoll = 0
    @State private var enemyCount: Int = 0
    @State private var selectedLocation: Int = 0
    @State private var selectedEnemyList: [theEnemy] = []
    @State private var selectedEnemyCounter: Int = 0
    @State private var notesMarker: String = ""
    //@ObservedObject var selectedEnemyList: Enemies = Enemies()
    

    
    func checkEnemyNameCount(array: inout [theEnemy]){
        for i in 0 ..< array.count{
            array[i].name = String(i+1) + " - " + array[i].name
        }
        
    }
    
    
    
    var body: some View {
     VStack{
        Text("Matt's Combat Page").bold()
        HStack{  // HEADER
            
            VStack{
                Text("Select Party List")
                Picker(selection: $selectedParty, label: Text("")) {
                    ForEach(0 ..< parties.count) {
                        Text(parties[$0].name)
                    }
                }.pickerStyle(WheelPickerStyle()).labelsHidden()
            }
            Divider()  // MIDDLE DIVIDER
            
            VStack{
                Text("Enemy Count")
                Picker(selection: $enemyCount, label: Text("")) {
                    ForEach(0 ..< enCount.count) {
                        Text(String(self.enCount[$0]))
                    }
                }.pickerStyle(WheelPickerStyle()).labelsHidden()
            }
            VStack{
                Text("Enemy Locations")
                Picker(selection: $selectedLocation, label: Text("")) {
                    ForEach(0 ..< locationTypes.count) {
                        Text(locationTypes[$0].name)
                    }
                }.pickerStyle(WheelPickerStyle()).labelsHidden()
            }
        }  // END OF HEADER
        Divider()
        HStack{
            //----LEFT SIDE ----------------------\\
            ScrollView{
                VStack{
                    HStack{  // PARTY LISTINGS
                        VStack{  // Name Column
                            Text("Name").bold()
                            Divider()
                            Divider()
                            ForEach(parties[selectedParty].characters, id: \.name) { characters in
                                VStack{
                                    Text(characters.name).fixedSize()
                                    Divider()
                                }
                            }
                        }  // End of Name Column
                        VStack{  // AC Column
                            Text("AC").bold()
                            Divider()
                            Divider()
                            ForEach(parties[selectedParty].characters, id: \.name) { characters in
                                VStack{
                                    Text(String(characters.thacAc[1]))
                                    Divider()
                                }
                            }
                        }  // End of AC Column
                        VStack{  // THAC0 Column
                            Text("Thac0").bold()
                            Divider()
                            Divider()
                            ForEach(parties[selectedParty].characters, id: \.name) { characters in
                                VStack{
                                    Text(String(characters.thacAc[0]))
                                    Divider()
                                }
                            }
                        }  // End of THAC0 Column
                    }  // End of PARTY LISTINGS
                }  // End of LEFT SIDE
            }
            
            Divider()
            
            //-----------RIGHT SIDE----------------\\
            ScrollView{
                VStack{  // Start MAIN RIGHT SIDE
                    HStack{  // ENEMY LISTINGS
                        VStack{  // Name Column
                            Text("Name").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Text(enemy.name).fixedSize()
                                    Divider()
                                }
                            }
                        }  // End of Name Column
                        VStack{  // AC Column
                            Text("AC").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Text(String(enemy.thacAc[1]))
                                    Divider()
                                }
                            }
                        }  // End of AC Column
                        VStack{  // THAC0 Column
                            Text("Thac0").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Text(String(enemy.thacAc[0]))
                                    Divider()
                                }
                            }
                        }  // End of THAC0 Column
                        VStack{  // Selection Column
                            Text("HP").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Text(String(enemy.hp[0]))
                                    Divider()
                                }
                            }
                        }  // End of Selection Column
                        VStack{  // Selection Column
                            Text("Dmg").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Text(enemy.dmg)
                                    Divider()
                                }
                            }
                        }  // End of Selection Column
                        VStack{  // Button Column
                            Text("Add").bold()
                            Divider()
                            Divider()
                            ForEach(locationTypes[selectedLocation].monsterSet, id: \.name) { enemy in
                                VStack{
                                    Button(action:{
                                        // Add Shit here
                                            for i in 0 ..< monsterList.count{
                                                if(monsterList[i].name == enemy.name){
                                                    for _ in 0 ..< self.enCount[self.enemyCount]{
                                                        let generatingEnemy: theEnemy = monsterList[i]
                                                        tempSelectedEnemyList.append(generatingEnemy)
                                                        self.selectedEnemyCounter += 1
                                                        print(tempSelectedEnemyList)
                                                    }
                                                }
                                            }
                                        
                                        
                                    }){Image(systemName: "plus.circle").padding(9)}
                                    Divider()
                                }
                            }
                        }
                }
                }  // End of ENEMY LISTINGS
            }  // End RightSide VStack
        }  // End HStack
        Divider()
        
        
        VStack{  // BOTTOM LAYER
            HStack{  // The Line
                
                VStack{
                    Text("Character").foregroundColor(Color.blue).bold()
                    Picker(selection: $selectedChar, label: Text("")) {
                    ForEach(0 ..< parties[selectedParty].characters.count) {
                        Text(parties[self.selectedParty].characters[$0].name)
                    }
                    }.pickerStyle(WheelPickerStyle()).labelsHidden()
                }
                
                
                Divider()
                
                
                VStack{
                    if(self.generateEnemyPicker){
                        Text("Enemy").foregroundColor(Color.red).bold()
                        Picker(selection: $selectedEnemy, label: Text("")) {
                            ForEach(tempSelectedEnemyList, id: \.name) { monster in
                                Text(monster.name + "| HP: " + String(monster.hp[0]))
                            }
                        }.pickerStyle(WheelPickerStyle()).labelsHidden()
                    }
                    else{
                        Spacer()
                        Text("Press Gen Btn to load").multilineTextAlignment(.center)
                        Spacer()
                        Text(String(selectedEnemyCounter) + " Critters")
                        Spacer()
                    }
                    
                }
                
                
                Divider()
                
                
                VStack{
                    Text("Roll")
                    Picker(selection: $selectedRoll, label: Text("")) {
                        ForEach(0 ..< dTwenRoll.count) {
                            Text(String(self.dTwenRoll[$0]))
                        }
                    }.pickerStyle(WheelPickerStyle()).labelsHidden()
                        .frame(width:50, height: 220)
                    .clipped()
                }
                
                Divider()
                
                VStack{
                    Text("Dmg")
                    Picker(selection: $selDmgRoll, label: Text("")) {
                        ForEach(0 ..< 101){ dmgRoll in
                            Text(String(dmgRoll))
                        }
                    }.pickerStyle(WheelPickerStyle()).labelsHidden()
                        .frame(width:50, height: 220)
                    .clipped()
                }
                
                
                Divider()
                
                VStack{
                    Button(action:{
                        self.generateEnemyPicker = false
                        self.showingAttackAlert = true
                        self.generateEnemyPicker = true
                    }){
                        HStack{
                            Image(systemName: "hammer.fill")
                            Text("Attack")
                        }
                        
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(50)
                    .alert(isPresented: $showingAttackAlert) {
                        if(attack(attacker: parties[selectedParty].characters[selectedChar], defender: locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy], roller: selectedRoll)){
                            locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy].hp[0] -= (self.selDmgRoll+1)
                            print(locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy].hp[0])
                            return Alert(title: Text("Player Attack Roll -HIT-"), message: Text(displayAttackResults(attacker: parties[selectedParty].characters[selectedChar], defender: tempSelectedEnemyList[self.selectedEnemy], roller: selectedRoll)), dismissButton: .default(Text("OK")))
                            
                        }
                        else{
                            return Alert(title: Text("Player Attack Roll -MISSED-"), message: Text(displayAttackResults(attacker: parties[selectedParty].characters[selectedChar], defender: tempSelectedEnemyList[self.selectedEnemy], roller: selectedRoll)), dismissButton: .default(Text("OK")))
                        }
                        
                    }
                    
                    Divider()
                    
                    Button(action:{
                        self.showingAttackAlert2 = true
                    }){
                        HStack{
                            Image(systemName: "shield.lefthalf.fill")
                            Text("Defend")
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .cornerRadius(50)
                    .alert(isPresented: $showingAttackAlert2) {
                        if(defend(attacker:tempSelectedEnemyList[self.selectedEnemy], defender: parties[selectedParty].characters[selectedChar], roller: selectedRoll)){
                            return Alert(title: Text("Enemy Attack Roll -HIT-"), message: Text(displayDefendResults(attacker: tempSelectedEnemyList[self.selectedEnemy], defender:parties[selectedParty].characters[selectedChar] , roller: selectedRoll)), dismissButton: .default(Text("OK")))
                        }  // End IF
                        else{
                            return Alert(title: Text("Enemy Attack Roll -MISSED-"), message: Text(displayDefendResults(attacker: tempSelectedEnemyList[self.selectedEnemy], defender:parties[selectedParty].characters[selectedChar] , roller: selectedRoll)), dismissButton: .default(Text("OK")))
                        }  // End ELSE
                    }  // End of Alert
                    
                    Divider()
                    
                    Button(action:{
                        self.showingAttackAlert3 = true
                    }){
                        HStack{
                            Image(systemName: "bitcoinsign.circle")
                            Text("Looter")
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.green)
                    .cornerRadius(50)
                    .alert(isPresented: $showingAttackAlert3) {
                        return Alert(title: Text(locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy].name + "was killed, it was worth: " + String(Int(locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy].xp)) + "XP"), message: Text("Players get:" + String(Int(locationTypes[self.selectedLocation].monsterSet[self.selectedEnemy].xp / parties[selectedParty].characters.count)) + " XP\nThey also receive:\n" + ""), dismissButton: .default(Text("OK")))
                    }  // End of Alert
                    
                    
                }
                VStack{
                    Button(action:{
                        if(!self.generateEnemyPicker){
                            self.checkEnemyNameCount(array: &tempSelectedEnemyList)
                            self.generateEnemyPicker = true
                        }
                        else{
                            self.generateEnemyPicker = false
                            self.selectedEnemyCounter = 0
                            tempSelectedEnemyList = []
                        }
                    }){
                        HStack{
                            if(!self.generateEnemyPicker){
                                Image(systemName: "folder.circle.fill")
                                Text("Gen")
                            }
                            else {
                                Image(systemName: "folder.circle")
                                Text("Rem")
                            }
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.purple)
                    .cornerRadius(50)
                    Divider()
                    Button(action:{
                        self.generateEnemyPicker = false
                        tempSelectedEnemyList[self.selectedEnemy].name = "<ran away>" + tempSelectedEnemyList[self.selectedEnemy].name
                        //self.selectedEnemy = 0
                        self.generateEnemyPicker = true
                    }){
                        HStack{
                            Image(systemName: "chevron.right.2")
                            Text("Run")
                        }
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                    .cornerRadius(50)
                }
                
            }  // Ending The Line
        }  // End of BOTTOM LAYER
     }.font(.title).padding()  // End VStack
    }  // End Body
}  // End CombatView


struct CombatView_Previews: PreviewProvider {
    static var previews: some View {
        CombatView()
        
    }
}
