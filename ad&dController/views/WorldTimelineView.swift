//
//  WorldView.swift
//  ad&dController
//
//  Created by Matt Kimball on 7/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct WorldTimelineView: View {
    var body: some View {
        VStack{
            Text("Matt's Trashy AD&D App")
            Text("World Page").bold()
            Text("There have been Many Worlds, each must have a unique identifier")
            ScrollView(.horizontal){
                HStack{
                    Group{
                        VStack{
                            Text("Series 1")
                            Divider()
                            Text("Telford World (Mordria)")
                            Text("Telford World 2 (Mordria 2)")
                            Text("Wave World")
                            Text("Brine World (Mordria 3)")
                            Text("80's World")
                            Text("Light/Dark World")
                            Text("Forrest World")
                            
                        }
                        Divider()
                        VStack{
                            Text("Series 1.5")
                            Divider()
                            Text("Pasta World")
                            Text("Vampire World")
                            Text("Platinum World")
                        }
                        Divider()
                        VStack{
                            Text("Series 2-Series 3")
                            Divider()
                            Text("Tarmus' World (Karron)")
                        }
                    }
                    Group{
                        Divider()
                        VStack{
                            Text("Series 4")
                            Divider()
                            Text("Desert World (Eluria)<Mikeys World>")
                        }
                        Divider()
                        VStack{
                            Text("Series 5-Series 5.5")
                            Divider()
                            Text("Alibaster World <2 session world>")
                            Text("Auroran Capital World")
                            Text("Fey Wild World (Ardeya)")
                            Text("Modern-style World")
                        }
                    }
                    Divider()
                    Group{
                        VStack{
                            Text("Series 6")
                            Divider()
                            Text("AD&D World (Korrodan)")
                        }
                        
                    }
                    Divider()
                    Group{
                        VStack{
                            Text("Series 7 (Orig. Series 6)")
                            Divider()
                            Text("StarFinder- MilkyWay 1")
                        }
                        
                    }
                }.font(.system(size: 15, weight: .light, design: .default))
            }.padding()
        }
    }
}

struct WorldTimelineView_Previews: PreviewProvider {
    static var previews: some View {
        WorldTimelineView()
    }
}
