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
    
    var body: some View {
        ZStack {
            KFImage(resumeItem.thumbnail)
                .resizable()
                .scaledToFill()
        }
    }
}

struct StandardResumeItem_Previews: PreviewProvider {
    static var previews: some View {
        StandardResumeItemView(resumeItem: exampleResumeItem1)
    }
}
