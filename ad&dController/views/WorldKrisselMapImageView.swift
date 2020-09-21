//
//  WorldKrisselMapImageView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/1/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct WorldKrisselMapImageView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Krissel Region Map")
                Image("KrisselRegion").resizable().aspectRatio(contentMode: .fit)
                Divider()
                Text("World Map")
                Image("KorrodanWorldMap").resizable().aspectRatio(contentMode: .fit)
                Divider()
                Text("RiverGuard Midway")
                Image("RiverGuard_Midway").resizable().aspectRatio(contentMode: .fit)
            }.padding()
        }.navigationBarTitle("Maps")
    }
}

struct WorldKrisselMapImageView_Previews: PreviewProvider {
    static var previews: some View {
        WorldKrisselMapImageView()
    }
}
