//
//  ButtonStylesFlat.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/24/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI


struct ButtonStylesFlat: View {
    

    
    
    var option: String
    var body: some View {
        switch(option){
        case "write":
            HStack{
                Image(systemName: "pencil.circle.fill").imageScale(.large).foregroundColor(.white)
                Text("Write").foregroundColor(.white)
            }.padding().background(Color.green).cornerRadius(75)
        case "clear":
            HStack{
                Image(systemName: "chevron.left.circle.fill").imageScale(.large).foregroundColor(.white)
                Text("Clear").foregroundColor(.white)
            }.padding().background(Color.blue).cornerRadius(75)
        case "remove":
            HStack{
                Image(systemName: "x.circle.fill").imageScale(.large).foregroundColor(.white)
                Text("Remove").foregroundColor(.white)
            }.padding().background(Color.red).cornerRadius(75)
        default:
            HStack{
                Image(systemName: "x.circle.fill").imageScale(.large).foregroundColor(.white)
                Text("ERROR").foregroundColor(.white)
            }.padding().background(Color.orange).cornerRadius(75)
        }
    }
}



struct ButtonStylesFlat_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesFlat(option: "write")
    }
}
