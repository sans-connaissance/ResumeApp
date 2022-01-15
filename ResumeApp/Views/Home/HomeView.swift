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
                    
                    ResumeItemListView(vm: vm, category: .appStore, modifier: SmallButton())
                }
            }
        }
    }
}

struct ResumeItemListView<V>: View where V: ViewModifier {
    var vm: HomeVM
    var category: Category
    var modifier: V
    
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
                // This lazy hstack is optional
                LazyHStack(spacing: -6) {
                    ForEach(vm.getResumeItem(forCat: category)) { resumeItem in
                        StandardResumeItemView(resumeItem: resumeItem)
                            .modifier(modifier)
                    }
                }
            }
            // Can I add a dependancy here so that the background can be changed?
            .background(LinearGradient.blackOpacityGradient)
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
