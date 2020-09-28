//
//  CharInfoCardModel.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/24/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct CharInfoCardModel: View {
    let char: theCharacter
    let option: String
    var body: some View {
        
        
        let generalLabel: [String] = ["Name:", "Player:", "Note:"]
        let generalData: [String] = [String(char.name),String(char.player), String(char.notes)]
        
        let descriptionLabel: [String] = ["Description:"]
        let descriptionData: [String] = [String(char.detail)]
        
        let detailLabel: [String] = ["Traveler:", "Crafted:", "Alive:", "Race:", "Class:", "HP:", "THAC0:", "AC:"]
        let detailData: [String] = [String(char.traveller),String(char.crafted),String(char.isAlive),String(char.race
        ),String(char.charClass),String(char.hp[0]),String(char.thacAc[0]),String(char.thacAc[1])]
        
        
        
        
        
        switch (option){
        case "detail":
            ZStack{  // RIGHT SIDE ------------------------------------------------------------------
                mainBackgroundColor
                VStack{  // DETAIL
                    Text("Details").font(.largeTitle).bold().background(mainBackgroundColor)
                    ScrollView{
                        ForEach (0 ..< detailLabel.count){ item in
                            Divider().foregroundColor(mainForegroundColor)
                            HStack{
                                Text(detailLabel[item]).bold()
                                //Spacer()
                                switch(item){
                                case (0):
                                    determineOutput(option: item, dataArray:detailData, color: Color.purple)
                                case (1):
                                    determineOutput(option: item, dataArray:detailData, color: Color.green)
                                case (2):
                                    determineOutput(option: item, dataArray:detailData, color: Color.blue)
                                default:
                                    Spacer()
                                    Text(detailData[item])
                                    Spacer()
                                }
                                
                            }
                        }
                    }.padding()
                    Spacer()
                }
                .padding()
                .foregroundColor(mainForegroundColor)
                .cornerRadius(corna)
                
            }.cornerRadius(corna)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)  // END DETAIL
        
        case "general":
            ZStack{  // RIGHT SIDE ------------------------------------------------------------------
                mainBackgroundColor
                VStack{  // DETAIL
                    Text("General").font(.largeTitle).bold()
                    ForEach (0 ..< generalLabel.count){ item in
                        Divider().foregroundColor(mainForegroundColor)
                        HStack{
                            Text(generalLabel[item]).bold()
                            Spacer()
                            Text(generalData[item])
                        }
                    }
                }
                .padding()
                .foregroundColor(mainForegroundColor)
                .cornerRadius(corna)
                
            }.cornerRadius(corna)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)  // END DETAIL
        
        case "desc":
            ZStack{  // RIGHT SIDE ------------------------------------------------------------------
                mainBackgroundColor
                VStack{  // DETAIL
                    Text("Description").font(.largeTitle).bold()
                    ForEach (0 ..< descriptionLabel.count){ item in
                        Divider().foregroundColor(mainForegroundColor)
                        HStack{
                            Text(descriptionLabel[item]).bold()
                            Spacer()
                            Text(descriptionData[item])
                        }
                    }
                }
                .padding()
                .foregroundColor(mainForegroundColor)
                .cornerRadius(corna)
                
            }.cornerRadius(corna)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)  // END DETAIL
            
        default:
            ZStack{  // Warning ------------------------------------------------------------------
                mainBackgroundColor
                VStack{  // DETAIL
                    Text("ERROR").font(.largeTitle).bold()
                    
                }
                .padding()
                .foregroundColor(mainForegroundColor)
                .cornerRadius(corna)
                
            }.cornerRadius(corna)
            .shadow(color: Color.black.opacity(0.2), radius: cardCorna, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: cardCorna, x: -5, y: -5)  // END DETAIL  -- EXPERIMENTAL RIGHT SIDE
        }
    }
    
    
    func determineOutput(option: Int, dataArray: [String], color: Color) -> some View{
        let setColor: Color
        
        if(dataArray[option] == "true"){
            setColor = color
        }
        else{
            setColor = mainForegroundColor
        }
           return
            ZStack{
            mainBackgroundColor
            
                VStack{
                    Text(dataArray[option]).foregroundColor(setColor)
                }
        }.cornerRadius(corna).padding().shadow(color: Color.black.opacity(0.2), radius: cardCorna, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: cardCorna, x: -5, y: -5)
        
        
        
    }
    
    
}

struct CharInfoCardModel_Previews: PreviewProvider {
    static var previews: some View {
        CharInfoCardModel(char: adndWorldOneFactions[0].members[0], option: "detail")
    }
}
