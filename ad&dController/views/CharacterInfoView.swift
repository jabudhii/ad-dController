//
//  CharacterInfoView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/23/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI


let dropShadow = Color.black.opacity(0.4)
let dropLight = Color.white

struct CharacterInfoView: View {
    let selectedChar: theCharacter

    
    
    var body: some View {

        
            ZStack{
                mainBackgroundColor
                
                HStack{
                    VStack{  // LEFT SIDE -------------------------------------------------------------------
                        CharInfoCardModel(char: selectedChar,option: "general").padding()
                        Spacer()
                        CharInfoCardModel(char: selectedChar,option: "desc").padding()
                        
                        VStack{
                            HStack{  // TOP
                                Button(action:{
                                    // Action
                                    print("1")
                                })
                                {
                                // Appearance
                                    HStack{
                                        Image(systemName: "arrow.up.circle.fill")
                                        Text("View More")
                                    }
                                }.buttonStyle(NeuButtonStyle()).padding()  // END BUTTON
                                
                                Button(action:{
                                    // Action
                                    print("2")
                                })
                                {
                                // Appearance
                                    HStack{
                                        Image(systemName: "pencil.circle.fill")
                                        Text("Editor")
                                    }
                                }.buttonStyle(NeuButtonStyle()).padding()  // END BUTTON
                                
                            }.padding()
                            HStack{  // BOTTOM
                                Button(action:{
                                    // Action
                                    print("3")
                                })
                                {
                                // Appearance
                                    HStack{
                                        Image(systemName: "clock.fill")
                                        Text("History")
                                    }
                                }.buttonStyle(NeuButtonStyle()).padding()  // END BUTTON
                                
                                Button(action:{
                                    // Action
                                    print("4")
                                })
                                {
                                // Appearance
                                    HStack{
                                        Image(systemName: "x.circle.fill")
                                        Text("Delete")
                                    }
                                }.buttonStyle(NeuButtonStyle()).padding()  // END BUTTON
                            }.padding()
                        }.padding()  // END BUTTON GROUP
                        
                        
                    }  // END OF LEFT SIDE
                    Spacer()
                    CharInfoCardModel(char: selectedChar,option: "detail").padding()
                    
                }
                
            }.padding().background(mainBackgroundColor)  // End ZStack MAIN
    }  // End of Body
}  // End of Struct

struct CharacterInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterInfoView(selectedChar: adndWorldOneFactions[0].members[0])
    }
}
