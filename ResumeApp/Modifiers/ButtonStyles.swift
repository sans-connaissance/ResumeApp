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
        ///Adjust size of background gradient with modifiers here
            .padding(.bottom, 20)
        
    }
    
}

struct LargeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        ///Adjust size of background gradient with modifiers here
            .padding(.bottom, 20)
        
    }
    
}
