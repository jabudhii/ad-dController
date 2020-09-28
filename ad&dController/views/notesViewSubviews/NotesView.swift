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
                NavigationLink(destination: NotesGeneralView()){
                    Text("General")
                }
                NavigationLink(destination: NotesTimeKeeperView()){
                    Text("Time Keeper")
                }
                NavigationLink(destination: NotesPlayerView()){
                    Text("Players")
                }
                if(experimental){
                    NavigationLink(destination: ExDataView()){
                        Text("Data")
                    }
                }
            }.navigationBarTitle("Notes").listStyle(SidebarListStyle())
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
