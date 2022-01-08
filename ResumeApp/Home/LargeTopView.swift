//
//  LargeTopView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/7/22.
//

import SwiftUI
import Kingfisher

struct LargeTopView: View {
    var resumeItem: ResumeItem
    
    ///Determines whether or not the category is the last in the resumeItem array of categories
    func isLastCategory(_ cat: String) -> Bool {
        let catCount = resumeItem.categories.count
        
        if let index = resumeItem.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(resumeItem.thumbnail)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(resumeItem.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isLastCategory(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                    Spacer()
                    WhiteButton(text: "play", imageName: "play.fill") {
                        
                    }.frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    Spacer()
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct LargeTopView_Previews: PreviewProvider {
    static var previews: some View {
        LargeTopView(resumeItem: exampleResumeItem3)
    }
}
