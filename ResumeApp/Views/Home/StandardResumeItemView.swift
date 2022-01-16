//
//  StandardResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Kingfisher
import SwiftUI

struct StandardResumeItemView: View {
    var resumeItem: ResumeItem
    @Binding var showOverlay: Bool
    
    var body: some View {
        ZStack(alignment: .center) {
            KFImage(resumeItem.thumbnail)
                .resizable()
                .scaledToFill()
            if showOverlay {
                if let overLay = resumeItem.overLay {
                    Text(overLay)
                        .foregroundColor(.white)
                        .font(.footnote)
                        .bold()
                        .padding(.top, 65)
                        //.padding(.leading, -20)
                }
            }
        }
    }
}

struct StandardResumeItem_Previews: PreviewProvider {
    static var previews: some View {
        StandardResumeItemView(resumeItem: exampleResumeItem1, showOverlay: .constant(true))
    }
}
