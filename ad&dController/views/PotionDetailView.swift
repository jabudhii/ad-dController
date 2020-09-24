//
//  PotionDetailView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct PotionDetailView: View {
    var body: some View {
        //Text("One")
        ScrollView{
            ForEach(potionList, id: \.name){ potion in
                VStack{
                    HStack{
                        Text(potion.name).bold()
                        Spacer()
                    }
                    HStack{
                        Text(getPotionData(thePotion: potion, option: 0))
                        Divider()
                        Text(getPotionData(thePotion: potion, option: 1))
                    }
                    Text(getPotionData(thePotion: potion, option: 2))
                    Spacer()
                    Divider()
                    Divider()
                }
                
            }.padding()
        }.navigationBarTitle("Potions")
    }
}

struct PotionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PotionDetailView()
    }
}
