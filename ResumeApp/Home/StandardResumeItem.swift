//
//  StandardResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Kingfisher
import SwiftUI

struct StandardResumeItem: View {
    var resumeItem: ResumeItem
    
    var body: some View {
        KFImage(resumeItem.thumbnail)
            .resizable()
            .scaledToFill()
    }
}

struct StandardResumeItem_Previews: PreviewProvider {
    static var previews: some View {
        StandardResumeItem(resumeItem: exampleResumeItem1)
    }
}
