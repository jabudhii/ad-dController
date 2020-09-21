//
//  EnemyMainView.swift
//  ad&dController
//
//  Created by Matt Kimball on 8/1/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct EnemyMainView: View {
    var body: some View {
        
        NavigationView{
            List{
                ForEach( 0 ..< locationTypes.count){ location in
                    NavigationLink(destination: ScrollView{
                        ScrollView{
                            ForEach(locationTypes[location].monsterSet, id: \.name){ enemy in
                                VStack{
                                    HStack{
                                        Text(enemy.name).font(.largeTitle).bold()
                                        Spacer()
                                    }
                                    VStack{
                                        HStack{
                                            Text(getEnemyData(critter: enemy, option: 0))
                                            Divider()
                                            Text(getEnemyData(critter: enemy, option: 1))
                                            Divider()
                                            Text(getEnemyData(critter: enemy, option: 2))
                                        }
                                        HStack{
                                            Text(getEnemyData(critter: enemy, option: 3))
                                            Divider()
                                            Text(getEnemyData(critter: enemy, option: 4))
                                        }
                                        
                                        
                                        
                                    }
                                    Text(enemy.notes)
                                    Spacer()
                                    Divider()
                                    Divider()
                                }
                                
                            }.padding()
                        }.navigationBarTitle(Text(locationTypes[location].name + " Enemies"))
                    }){Text(locationTypes[location].name)}
                    
                }
            }.navigationBarTitle("Environments").listStyle(SidebarListStyle())
        }
        
        
        
    }
}

struct EnemyMainView_Previews: PreviewProvider {
    static var previews: some View {
        EnemyMainView()
    }
}
