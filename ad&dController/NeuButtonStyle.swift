//
//  NeuButtonStyle.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/24/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct NeuButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(mainForegroundColor)
            .padding()
            .contentShape(RoundedRectangle(cornerRadius: corna))
            .background(
                Group{
                    if configuration.isPressed{
                        RoundedRectangle(cornerRadius: corna)
                            .fill(Color.offWhite)
                            .overlay(
                                RoundedRectangle(cornerRadius: corna).stroke(Color.gray, lineWidth: 4).blur(radius: 4).offset(x: 2, y: 2)
                                    .mask(RoundedRectangle(cornerRadius: corna).fill(LinearGradient(Color.black,Color.clear)))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: corna).stroke(Color.white, lineWidth: 8).blur(radius: 4).offset(x: -2, y: -2)
                                    .mask(RoundedRectangle(cornerRadius: corna).fill(LinearGradient(Color.clear,Color.black)))
                            )
                            
                    }
                    else{
                        RoundedRectangle(cornerRadius: corna)
                            .fill(mainBackgroundColor)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
                
            )
    }  // END Body
}  // END Struct

