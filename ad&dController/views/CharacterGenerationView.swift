//
//  CharacterGenerationView.swift
//  ad&dController
//
//  Created by Matt Kimball on 7/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct CharacterGenerationView: View {
    @State private var name: String = ""
    @State private var almonds2: String = ""
    var body: some View {
        ScrollView{
            VStack{
                Text("Create New Character")
                HStack{
                    Text("Name:")
                    TextField("", text: $name)
                }
                HStack{
                    Text("Class:")
                    TextField("", text: $almonds2)
                }
            }
        }
    }
}

struct CharacterGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterGenerationView()
    }
}
