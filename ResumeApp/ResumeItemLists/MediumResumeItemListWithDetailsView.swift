//
//  MediumResumeItemListWithDetailsView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/17/22.
//

import SwiftUI

struct MediumResumeItemListWithDetailsView: View {
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
                LazyHStack(spacing: 1) {
                    ForEach(vm.getResumeItem(forCat: category)) { resumeItem in
                        VStack(alignment: .leading, spacing: 4) {
                            ResumeItemImageView(resumeItem: resumeItem)
                                .modifier(MediumButton())
                            
                            if let companyName = resumeItem.companyName {
                                Text(companyName)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 10))
                                    .bold()
                                //.padding(.top)
                                    .padding(.leading, 22)
                                    .textCase(.uppercase)
                            }
                            if let jobTitle = resumeItem.jobTitle {
                                Text(jobTitle)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18))
                                    //.bold()
                                //.padding(.top)
                                    .padding(.leading, 22)
                            }
                            if let startDate = resumeItem.startDate {
                                if let endDate = resumeItem.endDate {
                                    Text("\(startDate) - \(endDate)")
                                        .foregroundColor(.black)
                                        .font(.system(size: 10))
                                        //.bold()
                                        .padding(.leading, 26)
                                    
                                }
                            }
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

struct MediumResumeItemListWithDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MediumResumeItemListWithDetailsView(vm: HomeVM(), category: .experience)
    }
}
