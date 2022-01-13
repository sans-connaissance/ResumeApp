//
//  HomeView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            
            // main VStack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    LargeTopView(resumeItem: exampleResumeItem3)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                    
                    ForEach(vm.smallButton, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                    .padding(.leading)
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                // This lazy hstack is optional
                                
                                
                                LazyHStack(spacing: -6) {
                                    ForEach(vm.getResumeItem(forCat: category)) { resumeItem in
                                        StandardResumeItemView(resumeItem: resumeItem)
                                            .modifier(SmallButton())
                                        
                                    }
                                }
                            }
                            .background(LinearGradient.blackOpacityGradient)
                        }
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
