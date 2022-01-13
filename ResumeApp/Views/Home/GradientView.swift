//
//  GradientView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/12/22.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.gray]),startPoint: .center, endPoint: .bottom))
            .opacity(0.15)
            .scaledToFill()

        
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GradientView()
                .preferredColorScheme(.dark)
            GradientView()
        }
    }
}
