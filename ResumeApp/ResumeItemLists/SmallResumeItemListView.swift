//
//  SmallResumeItemListView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/17/22.
//

import SwiftUI

struct SmallResumeItemListView: View {
    var vm: HomeVM
    var category: Category
    
    var body: some View {
        VStack {
            HStack {
                Text(category.title)
                    .font(.title3)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: -6) {
                    ForEach(vm.getResumeItem(forCat: category)) { resumeItem in
                        VStack {
                            ResumeItemImageView(resumeItem: resumeItem)
                                .modifier(SmallButton())
                        }
                    }
                }
            }
            ///Adjust size of background gradient with modifiers here
            .padding(.bottom)
            .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct SmallResumeItemListView_Previews: PreviewProvider {
    static var previews: some View {
        SmallResumeItemListView(vm: HomeVM(), category: .demos)
    }
}
