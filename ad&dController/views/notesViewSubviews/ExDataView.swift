//
//  ExDataView.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/27/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct ExDataView: View {
    var body: some View {
        ZStack{
            mainBackgroundColor
            
            
            HStack{  // MAIN HSTACK
                
                VStack{  // LEFT VSTACK
                    ZStack{  // NameStack
                        mainBackgroundColor
                        VStack{
                            Text("Version").font(.largeTitle).bold()
                            Divider()
                            Spacer()
                            Text(Bundle.main.releaseVersionNumber!).padding()
                            Spacer()
                        }.padding()
                        
                        
                    }
                    .foregroundColor(mainForegroundColor)
                    .cornerRadius(corna)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    .padding()// End Name Stack

                    
                    ZStack{  // NameStack
                        mainBackgroundColor
                        VStack{
                            Text("Build").font(.largeTitle).bold()
                            Divider()
                            Spacer()
                            Text(Bundle.main.buildVersionNumber!).padding()
                            Spacer()
                        }.padding()
                        
                        
                    }
                    .foregroundColor(mainForegroundColor)
                    .cornerRadius(corna)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    .padding()// End Name Stack
                    
                    
                    
                }  // END LEFT VSTACK
                
                
                
                
                ZStack{  // NameStack
                    mainBackgroundColor
                    
                    VStack{
                        Text("FirstNameArray Names").font(.largeTitle).bold()
                        Divider()
                        ScrollView{
                            ForEach(0 ..< firstNameArray!.count){ name in
                                HStack{
                                    Text(String(name))
                                    Spacer()
                                    Text(String(firstNameArray![name]))
                                }
                            }
                        }
                        
                    }.padding()
                    
                }
                .foregroundColor(mainForegroundColor)
                .cornerRadius(corna)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                .padding()// End Name Stack
                
            }  // END MAIN HSTACK
            
            
            
            
        }.padding().background(mainBackgroundColor)  // End Main ZStack
        
        
        
        
        
        
    }  // End Body
}  // End Struct

struct ExDataView_Previews: PreviewProvider {
    static var previews: some View {
        ExDataView()
    }
}
