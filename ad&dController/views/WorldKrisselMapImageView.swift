//
//  WorldKrisselMapImageView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/1/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct WorldKrisselMapImageView: View {
    let corna: CGFloat = 25
    var body: some View {
        ScrollView{
            VStack{
                Text("Krissel Region Map")
                Image("KrisselRegion").resizable().aspectRatio(contentMode: .fit).cornerRadius(corna)
                    .overlay(RoundedRectangle(cornerRadius: corna)
                                .stroke(Color.black, lineWidth: 4))
                            .shadow(radius: corna)
                Divider()
                Text("World Map")
                Image("KorrodanWorldMap").resizable().aspectRatio(contentMode: .fit).cornerRadius(corna)
                    .overlay(RoundedRectangle(cornerRadius: corna)
                                .stroke(Color.black, lineWidth: 4))
                            .shadow(radius: corna)
                Divider()
                Text("RiverGuard Midway")
                Image("RiverGuard_Midway").resizable().aspectRatio(contentMode: .fit).cornerRadius(corna)
                    .overlay(RoundedRectangle(cornerRadius: corna)
                                .stroke(Color.black, lineWidth: 4))
                            .shadow(radius: corna)
            }.padding()
        }.navigationBarTitle("Maps")
    }
}

struct WorldKrisselMapImageView_Previews: PreviewProvider {
    static var previews: some View {
        WorldKrisselMapImageView()
    }
}
