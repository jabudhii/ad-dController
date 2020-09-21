//
//  CharacterView.swift
//  ad&dController
//
//  Created by mattkimball on 5/11/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import Foundation
import SwiftUI


struct CharacterView: View {
    @State private var selectedFaction: Int = 0
    @State private var selectedWorld: Int = 0
    let options: [String] = ["Party", "NPCs"]
    var charViewFactionMarker: Int = 0
    @ViewBuilder
    var body: some View {
        NavigationView{
            List{
                ForEach(adndWorldOneFactions, id: \.name) { adndWorldOneFactions in
                    CharacterMainListRows(option: adndWorldOneFactions)
                }
            }.navigationBarTitle(Text("Factions")).listStyle(SidebarListStyle())
        }  // End NavigationView
            //.font(.title)
    }  // Emd of body
}  // End of CharacterView


struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}
