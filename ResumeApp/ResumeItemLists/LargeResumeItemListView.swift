//
//  LargeResumeItemListView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/17/22.
//

import SwiftUI

struct LargeResumeItemListView: View {
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
                LazyHStack(alignment: .center, spacing: -6) {
                    ForEach(vm.getResumeItem(forCat: category)) { resumeItem in
                        VStack {
                            ResumeItemImageView(resumeItem: resumeItem)
                                .modifier(LargeButton())
                        }
                    }
                }
            }
            // Can I add a dependancy here so that the background can be changed?
            ///Adjust size of background gradient with modifiers here
            .padding(.bottom)
            .background(LinearGradient.blackOpacityGradient)
            // .modifier(ScrollingHStackModifier(items: 3, itemWidth: 300, itemSpacing: 30))
        }
    }
}

struct LargeResumeItemListView_Previews: PreviewProvider {
    static var previews: some View {
        LargeResumeItemListView(vm: HomeVM(), category: .education)
    }
}
