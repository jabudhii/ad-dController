//
//  ItemsMainView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/2/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct ItemsMainView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0 ..< itemTypeList.count){ group in
                    NavigationLink(destination: ItemsDetailView().onAppear(){selectedItemOption = itemTypeList[group]}){
                        Text(itemTypeList[group])
                    }
                }
                NavigationLink(destination: ArmorDetailView()){
                    Text("Armor")
                }
                NavigationLink(destination: WeaponDetailView()){
                    Text("Weapon")
                }
            }.navigationBarTitle("Item Sections").listStyle(SidebarListStyle())
        }
    }
}

struct ItemsMainView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsMainView()
    }
}
