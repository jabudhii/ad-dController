//
//  CharacterInfoView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/23/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct CharacterInfoView: View {
    let selectedChar: theCharacter
    var body: some View {
        ScrollView{
            VStack{
                Group{
                    HStack{
                        Text("Name").bold()
                        Spacer()
                        Text(selectedChar.name)
                    }
                    HStack{
                        Text("Player").bold()
                        Spacer()
                        Text(selectedChar.player)
                    }
                    HStack{
                        Text("Class").bold()
                        Spacer()
                        Text(selectedChar.charClass)
                    }
                }
                Spacer()
                Group{
                    HStack{
                        Text("Alive").bold()
                        Spacer()
                        Text(String(selectedChar.isAlive))
                    }
                    if (!selectedChar.isAlive){
                        HStack{
                            Text("Reason For Death").bold()
                            Spacer()
                            Text("The Guardians")
                        }
                    }
                    Spacer()
                    HStack{
                        Text("Traveler").bold()
                        Spacer()
                        Text(String(selectedChar.traveller))
                    }
                }
                Spacer()
                HStack{
                    Text("Description").bold()
                    Spacer()
                    Text(selectedChar.notes)
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
