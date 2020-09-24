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
    let corna: CGFloat = 25
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    VStack{
                        VStack{  // GENERAL
                            Text("General").font(.largeTitle).bold()
                            HStack{
                                VStack{ // Basic INFO
                                    HStack{
                                        Text("Name:")
                                        Text(String(selectedChar.name)).bold()
                                    }
                                    HStack{
                                        Text("Player:")
                                        Text(String(selectedChar.player)).bold()
                                    }
                                }
                                Spacer()
                                VStack{ // Basic INFO - Race, Class
                                    HStack{
                                        Text("Race:")
                                        Text(String(selectedChar.race)).bold()
                                    }
                                    HStack{
                                        Text("Class:")
                                        Text(String(selectedChar.charClass)).bold()
                                    }
                                    HStack{
                                        Text("Level:")
                                        Text(String(selectedChar.charLev[0])).bold()
                                    }
                                }
                            }
                        }.padding().background(Color.gray.opacity(0.25)).cornerRadius(corna).shadow(color: dropShadow, radius: 15, x: 10, y: 10)
                        .shadow(color: dropLight, radius: 15, x: -10, y: -10)  // END GENERAL
                        Spacer()
                        
                        VStack{  // DESCRIPTION
                            Text("Description").font(.largeTitle).bold()
                            Text(String(selectedChar.detail)).bold()
                            Spacer()
                        }.padding().background(Color.gray.opacity(0.25)).cornerRadius(corna).shadow(color: dropShadow, radius: 15, x: 10, y: 10)
                        .shadow(color: dropLight, radius: 15, x: -10, y: -10)  // END DESCRIPTION
                    }
                    Spacer()
                    VStack{  // DETAIL
                        Text("Details").font(.largeTitle).bold()
                        HStack{
                            VStack{ // Detail INFO
                                HStack{
                                    Text("Alive:")
                                    Text(String(selectedChar.isAlive)).bold()
                                }
                                HStack{
                                    Text("Traveler:")
                                    Text(String(selectedChar.traveller)).bold()
                                }
                                HStack{
                                    Text("Crafted:")
                                    Text(String(selectedChar.crafted)).bold()
                                }
                            }
                            Spacer()
                            VStack{ // Basic INFO - Race, Class
                                HStack{
                                    Text("Note:")
                                    Text(String(selectedChar.notes)).bold()
                                }
                                HStack{
                                    Text("HP:")
                                    Text(String(selectedChar.hp[0])).bold()
                                }
                                
                            }
                        }
                        Spacer()
                        
                    }.padding().background(Color.gray.opacity(0.25)).cornerRadius(corna).shadow(color: dropShadow, radius: 15, x: 10, y: 10)
                    .shadow(color: dropLight, radius: 15, x: -10, y: -10)  // END DETAIL
                }
                
            }.padding()
            
            
        }.navigationTitle(selectedChar.name)  // End of ScrollView
    }  // End of Body
}  // End of Struct

struct CharacterInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterInfoView(selectedChar: adndWorldOneFactions[0].members[0])
    }
}
