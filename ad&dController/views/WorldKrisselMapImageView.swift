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
    
    let krisselLabels: [String] = ["Krissel Region Map", "World Map", "RiverGuard Midway"]
    let krisselImages = [Image("KrisselRegion"), Image("KorrodanWorldMap"), Image("RiverGuard_Midway")]
    
    
    var body: some View {
        ZStack{
            mainBackgroundColor
            ScrollView{
                VStack{
                    
                    ForEach(0 ..< krisselLabels.count){ item in
                        VStack{
                            Text(krisselLabels[item]).foregroundColor(mainForegroundColor).padding()
                            ZStack{
                                mainBackgroundColor
                                krisselImages[item].resizable().aspectRatio(contentMode: .fit)
                                    
                            }
                            .cornerRadius(corna)
                            .overlay(RoundedRectangle(cornerRadius: corna).stroke(mainBackgroundColor, lineWidth: 16))
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                            .padding()
                        }
                    }
                    
                    
                    
                    
                }.padding()
            }.navigationBarTitle("Maps")
        }
        
    }
}

struct WorldKrisselMapImageView_Previews: PreviewProvider {
    static var previews: some View {
        WorldKrisselMapImageView()
    }
}
