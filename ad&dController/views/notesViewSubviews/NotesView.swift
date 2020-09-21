//
//  notesView.swift
//  ad&dController
//
//  Created by Matt Kimball on 7/20/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(adndWorldOneFactions, id: \.name) { adndWorldOneFactions in
                    CharacterMainListRows(option: adndWorldOneFactions)
                }
            }.navigationBarTitle(Text("Factions")).listStyle(SidebarListStyle())
        }  // End NavigationView
            //.font(.title)
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
