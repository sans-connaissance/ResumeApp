//
//  ButtonStyles.swift
//  ResumeApp
//
//  Created by David Malicke on 1/12/22.
//

import Foundation
import SwiftUI

struct SmallButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 160, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
            .padding(.bottom, 20)
        
    }
    
}