//
//  ProgressBarModel.swift
//  ad&dController
//
//  Created by Matt Kimball on 9/28/20.
//  Copyright © 2020 matthewKimball. All rights reserved.
//

import SwiftUI

struct ProgressBarModel: View {
    var setInteriorColor: Color
    @Binding var progress: Float
    var body: some View {
        
        ZStack {
            Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
                .font(.largeTitle)
                .bold()
            
            Circle()
                .stroke(lineWidth: 20.0)
                .foregroundColor(mainBackgroundColor)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .opacity(0.5)
                .foregroundColor(setInteriorColor)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            
            
            
        }
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        
        
    }
}

