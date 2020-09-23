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
                                    HStack{
                                        Text("Alive").foregroundColor(Color.blue).bold()
                                        Text("Dead").foregroundColor(Color.red).bold()
                                    }
                                    Spacer()
                                    HStack{
                                        Text("Traveler").foregroundColor(Color.purple).bold()
                                        Text("Standard").foregroundColor(Color.green).bold()
                                    }
                                    Spacer()
                                }
                                Spacer()
                                ForEach(0 ..< option.members.count){ char in
                                    NavigationLink(destination: CharacterInfoView(selectedChar: self.option.members[char])){
                                        VStack{
                                            HStack{
                                                Text(self.option.members[char].name).bold().foregroundColor(determineLifeNameColor(alive: self.option.members[char].isAlive))
                                                Text("|")
                                                Text(self.option.members[char].player).bold()
                                                Spacer()
                                                Text(self.option.members[char].charClass).foregroundColor(determineTravellerColor(travy: self.option.members[char].traveller))
                                            }
                                            Text(self.option.members[char].notes)
                                            Divider()
                                        }
                                    }.buttonStyle(PlainButtonStyle())
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

func determineTravellerColor(travy: Bool) -> Color{
    if !travy{
        return Color.green
    }
    else{
        return Color.purple
    }
}

struct CharacterMainListRows_Previews: PreviewProvider {
    static var previews: some View {
        CharacterMainListRows(option: adndWorldOneFactions[0])
    }
}
