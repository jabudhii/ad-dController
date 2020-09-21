//
//  ContentView.swift
//  ad&dController
//
//  Created by mattkimball on 5/8/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection = 3
    
    // Core Data for DayKeeper
    @FetchRequest(entity: DayKeeper.entity(), sortDescriptors: []) var dayTracker: FetchedResults<DayKeeper>
    @State var dayNum:[NSManagedObject] = []
    
    var body: some View {
        TabView(selection: $selection){
            CharacterView()
                .tabItem {Text("Characters")}
                .tag(0)


            EnemyMainView()
                .font(.title)
            .tabItem {Text("Enemies")}
            .tag(1)
            
            
            
            ItemsMainView()
            .font(.title)
            .tabItem {Text("Items")}
            .tag(2)
            
            
            
            CombatView()
            .tabItem {Text("Combat")}
            .tag(3)
            
            
            
            NotesView()
            .font(.title)
            .tabItem {Text("Notes")}
            .tag(4)
            
            
            
            WorldMainView()
            .font(.title)
            .tabItem {Text("World")}
            .tag(5)
        }  // End of TabView
    }  // End of Body
}  // End of Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }  // End of previews
}  // End of ContentView_Previews
