//
//  CharacterMainListRows.swift
//  ad&dController
//
//  Created by Matt Kimball on 7/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct CharacterMainListRows: View {
    var option: theFactionCharacter
    var body: some View {
        NavigationLink(destination:
                        ScrollView{
                            VStack{
                                HStack{
                                    Spacer()
                                    Text("Alive").foregroundColor(Color.blue).bold()
                                    Text("Dead").foregroundColor(Color.red).bold()
                                    Spacer()
                                }
                                Spacer()
                                ForEach(0 ..< option.members.count){ char in
                                    VStack{
                                        HStack{
                                            Text(self.option.members[char].name).bold().foregroundColor(determineLifeNameColor(alive: self.option.members[char].isAlive))
                                            Text("|")
                                            Text(self.option.members[char].player).bold()
                                            Spacer()
                                            Text(self.option.members[char].charClass)
                                        }
                                        Text(self.option.members[char].notes)
                                        Divider()
                                    }
                                }
                            }.padding()
                        }.navigationTitle(option.name)
            
            
            ){
            HStack {
                option.image
                    .resizable()
                    .frame(width: 30, height: 30).cornerRadius(10)
                Text(option.name).font(.system(size: 15, weight: .light, design: .default))
                Spacer()
            }
        }
        
        
    }
}


func determineLifeNameColor(alive: Bool) -> Color{
    if !alive{
        return Color.red
    }
    else{
        return Color.blue
    }
}

struct CharacterMainListRows_Previews: PreviewProvider {
    static var previews: some View {
        CharacterMainListRows(option: adndWorldOneFactions[0])
    }
}
