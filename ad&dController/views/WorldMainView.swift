//
//  WorldMainView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/1/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct WorldMainView: View {
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

struct WorldMainView_Previews: PreviewProvider {
    static var previews: some View {
        WorldMainView()
    }
}
