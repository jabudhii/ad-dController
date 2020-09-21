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
                NavigationLink(destination: WorldTimelineView()){
                    Text("World Timeline")
                }
                NavigationLink(destination: WorldKrisselMapImageView()){
                    Text("Krissel Maps")
                }
            }.navigationBarTitle("World Data").listStyle(SidebarListStyle())
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
