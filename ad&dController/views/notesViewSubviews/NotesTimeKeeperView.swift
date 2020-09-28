//
//  NotesTimeKeeperView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

let maxValues: [Int] = [0,1200,900,1200,700]

struct NotesTimeKeeperView: View {
    @State var totalTimeProgress: Float = getCounterMasterData(index: 1, maxValue: maxValues[1])
    @State var planeSplitProgress: Float = getCounterMasterData(index: 1, maxValue: maxValues[2])
    @State var worldCoverProgress: Float = getCounterMasterData(index: 1, maxValue: maxValues[3])
    @State var tearProgress: Float = getCounterMasterData(index: 1, maxValue: maxValues[4])
    
    //DayCounterMaster
    // 0-barryDeath, 1-totalGameDays, 2-daysBeforeSplit, 3-daysBeforeWorldCover, 4-daysBeforeAbyss
    // 2Base Time until split 900
    // 3Base Time until cover 1200
    // 4Base Time until rift 700
    let maxTime: Int = 1200
    
    
    let timeFinder: [Int] = [1,2,3,4]
    let finderColor: [Color] = [Color.green, Color.blue, Color.purple, Color.red]
    
    let sizery: CGFloat = 150.0
    var body: some View {
        let progressFinder = [self.$totalTimeProgress, self.$planeSplitProgress, self.$worldCoverProgress, self.$tearProgress]
        ZStack{
            mainBackgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{  // MAIN VSTACK
                HStack{
                    ZStack{
                        mainBackgroundColor
                        VStack{
                            getProgressBar(bindingValue: progressFinder[0], sizer: sizery, setColor: finderColor[0])
                            Text("Days: " + String(dayCounterMaster?[timeFinder[0]] ?? 222)).bold()
                            Text(dayCounterText[timeFinder[0]])
                        }
                    }
                    ZStack{
                        mainBackgroundColor
                        VStack{
                            getProgressBar(bindingValue: progressFinder[1], sizer: sizery, setColor: finderColor[1])
                            Text("Days: " + String(maxValues[2] - (dayCounterMaster?[0] ?? 222))).bold()
                            Text(dayCounterText[timeFinder[1]])
                        }
                    }
                }
                HStack{
                    ZStack{
                        mainBackgroundColor
                        VStack{
                            getProgressBar(bindingValue: progressFinder[2], sizer: sizery, setColor: finderColor[2])
                            Text("Days: " + String(maxValues[3] - (dayCounterMaster?[timeFinder[0]] ?? 222))).bold()
                            Text(dayCounterText[timeFinder[2]])
                        }
                    }
                    ZStack{
                        mainBackgroundColor
                        VStack{
                            getProgressBar(bindingValue: progressFinder[3], sizer: sizery, setColor: finderColor[3])
                            Text("Days: " + String(maxValues[4] - (dayCounterMaster?[timeFinder[0]] ?? 222))).bold()
                            Text(dayCounterText[timeFinder[3]])
                        }
                    }
                }
                Spacer()
                Divider()
                VStack{  // Barry Death
                    Text(String(dayCounterMaster?[0] ?? 222)).bold()
                    Text(dayCounterText[0])
                }.padding()
                VStack{
                    Spacer()
                    Text("Incrementing the day will affect all values related to time keeping.")
                    Spacer()
                    Button(action:{
                        //Add stuff here
                    }){HStack{Image(systemName: "plus.circle.fill");Text("Increment Day")}}.buttonStyle(NeuButtonStyle())
                }.padding()
            }.padding()// END MAIN VSTACK
            
        }.foregroundColor(mainForegroundColor)
        
        
    }  // End of body
}  // End of struct


func getCounterMasterData(index: Int, maxValue: Int) -> Float{
    let catcher: Double = Double(dayCounterMaster?[index] ?? 222)
    let maxer: Double = Double(maxValue)
    var x: Double
    x = Double ((catcher / maxer)*100).rounded()/100
    print(Float(x))
    return Float(x)
}


func getProgressBar(bindingValue: Binding<Float>, sizer: CGFloat, setColor: Color) -> some View{
    return
        ZStack {
            mainBackgroundColor
            
            ProgressBarModel(setInteriorColor: setColor, progress: bindingValue)
                .frame(width: sizer, height: sizer)
                .padding()
        }  // END zstack main
}  // END FUNC getProgressBar




struct NotesTimeKeeperView_Previews: PreviewProvider {
    static var previews: some View {
        NotesTimeKeeperView()
    }
}





