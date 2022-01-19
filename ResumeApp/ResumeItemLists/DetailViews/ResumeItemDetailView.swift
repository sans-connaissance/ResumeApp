//
//  ResumeItemDetailView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/19/22.
//

import SwiftUI

struct ResumeItemDetailView: View {
    var resumeItem: ResumeItem
    
    var body: some View {
        Text(resumeItem.name)
    }
}

struct ResumeItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ResumeItemDetailView(resumeItem: exampleResumeItem1)
    }
}
