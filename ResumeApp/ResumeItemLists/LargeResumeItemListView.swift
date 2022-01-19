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
                        
                        NavigationLink {
                            ResumeItemDetailView(resumeItem: resumeItem)
                        } label: {
                            VStack {
                                ResumeItemImageView(resumeItem: resumeItem)
                                    .modifier(LargeButton())
                            }
                        }
                    }
                }
            }
            .padding(.bottom)
            .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct LargeResumeItemListView_Previews: PreviewProvider {
    static var previews: some View {
        LargeResumeItemListView(vm: HomeVM(), category: .education)
    }
}
