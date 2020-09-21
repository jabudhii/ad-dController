//
//  ProvisionsDetailView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/21/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct ProvisionsDetailView: View {
    var body: some View {
        ScrollView{
            ForEach(provisionList, id: \.name){ potion in
                VStack{
                    HStack{
                        Text(potion.name).font(.largeTitle).bold()
                        Spacer()
                    }
                    HStack{
                        Text(getProvData(thePotion: potion, option: 0))
                        Divider()
                        Text(getProvData(thePotion: potion, option: 1))
                    }
                    Text(getProvData(thePotion: potion, option: 2))
                    Spacer()
                    Divider()
                    Divider()
                }
                
            }.padding()
        }.navigationBarTitle("Provisions")
    }
}

struct ProvisionsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProvisionsDetailView()
    }
}
