//
//  ContentView.swift
//  ad&dController
//
//  Created by mattkimball on 5/8/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI
import CoreData
let corna: CGFloat = 25
let cardCorna: CGFloat = 10
let darkBackgroundColor = LinearGradient(Color.darkStart, Color.darkEnd)

var mainBackgroundColor = Color.offWhite
var mainForegroundColor = Color.lightForward

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
    static let lightForward = Color(red: 100 / 255, green: 100 / 255, blue: 100 / 255)
}

extension LinearGradient{
    init(_ colors: Color...){
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomLeading)
    }
}


struct ContentView: View {
    
    

    
    @State private var selection = 0
    
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
