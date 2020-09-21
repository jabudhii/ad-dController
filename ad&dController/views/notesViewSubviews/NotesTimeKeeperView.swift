//
//  NotesTimeKeeperView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct NotesTimeKeeperView: View {
    var body: some View {
        VStack{
            Text("It has been " + String(7) + " days since Barry was killed.").padding()
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
