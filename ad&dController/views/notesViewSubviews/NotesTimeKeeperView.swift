//
//  NotesTimeKeeperView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI



struct NotesTimeKeeperView: View {
    //DayCounterMaster
    // 0-barryDeath, 1-totalGameDays, 2-daysBeforeSplit, 3-daysBeforeWorldCover, 4-daysBeforeAbyss
    
    var body: some View {
        HStack{
            Spacer()
            Text("Time Keeper").font(.largeTitle).bold()
            Spacer()
        }
        
        VStack{
            HStack{
                VStack{  // Barry Death
                    Text(String(dayCounterMaster?[0] ?? 222)).bold().foregroundColor(.black)
                    Text("It has been days since Barry was killed.").foregroundColor(.black)
                }.padding()
                Spacer()
                VStack{  // Inner Sphere
                    Text(String(dayCounterMaster?[2] ?? 222)).bold().foregroundColor(.black)
                    Text("Days until the inner sphere seperates.").foregroundColor(.black)
                }.padding()
                Spacer()
            }.background(Color.blue.opacity(0.2)).cornerRadius(10)  // END TOP
            HStack{
                VStack{  // Anomalies
                    Text(String(dayCounterMaster?[3] ?? 222)).bold().foregroundColor(.black)
                    Text("Days before the anomaly storm covers the world.").foregroundColor(.black)
                }.padding()
                Spacer()
                VStack{  // Abyss
                    Text(String(dayCounterMaster?[4] ?? 222)).bold().foregroundColor(.black)
                    Text("Days before the tear to the Abyss.").foregroundColor(.black)
                }.padding()
                Spacer()
            }.background(Color.red.opacity(0.2)).cornerRadius(10)  // END BOTTOM
            VStack{  // Met
                Text(String(dayCounterMaster?[1] ?? 222)).bold().foregroundColor(.black)
                Text("Days since the Main Party first met.").foregroundColor(.black)
            }.padding().background(Color.green.opacity(0.2)).cornerRadius(10)  // END BOTTOM
            Spacer()
            Button("Increment Day"){
                
            }.padding()  // End of Button
        }
        .background(Color.init(white: 0.9))
        .cornerRadius(10)
        .padding()
        // End of VStack
        
    }  // End of body
}  // End of struct

struct NotesTimeKeeperView_Previews: PreviewProvider {
    static var previews: some View {
        NotesTimeKeeperView()
    }
}
