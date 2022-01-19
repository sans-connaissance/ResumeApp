//
//  MediumResumeItemListWithOverlayView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/17/22.
//

import SwiftUI

struct MediumResumeItemListWithOverlayView: View {
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
                        
                        NavigationLink {
                            ResumeItemDetailView(resumeItem: resumeItem)
                        } label: {
                            ZStack {
                                ResumeItemImageView(resumeItem: resumeItem)
                                    .modifier(MediumButton())
                                
                                if let overLay = resumeItem.overLay {
                                    Text(overLay)
                                        .foregroundColor(.white)
                                        .font(.subheadline)
                                        .bold()
                                        .padding(.top, 75)
                                        .padding(.leading, 15)
                                }
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

struct MediumResumeItemListWithOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        MediumResumeItemListWithOverlayView(vm: HomeVM(), category: .appStore)
    }
}
