//
//  ArmorDetailView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/2/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct ArmorDetailView: View {
    var body: some View {
        //Text("One")
        ScrollView{
            ForEach(armorList, id: \.name){ armor in
                VStack{
                    HStack{
                        Text(armor.name).bold()
                        Spacer()
                    }
                    HStack{
                        Text(getArmorData(theArmor: armor, option: 0))
                        Divider()
                        Text(getArmorData(theArmor: armor, option: 1))
                        Divider()
                        Text(getArmorData(theArmor: armor, option: 2))
                    }
                    Text(getArmorData(theArmor: armor, option: 3))
                    Spacer()
                    Divider()
                    Divider()
                }
                
            }.padding()
        }.navigationBarTitle("Armor")
    }
}

struct ArmorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArmorDetailView()
    }
}
