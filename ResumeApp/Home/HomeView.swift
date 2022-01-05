//
//  HomeView.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main VStack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    CategoryView(categoryTitle: .Education, resumeItem: vm.getResumeItem(forCat: .Education), width: 100, height: 200)
                    CategoryView(categoryTitle: .Experience, resumeItem: vm.getResumeItem(forCat: .Experience), width: 200, height: 400)
                    
                }
            }
        }
        .foregroundColor(.white)
    }
}


struct CategoryView: View {
    
    let categoryTitle: Category
    let resumeItem: [ResumeItem]
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        HStack {
            Text(categoryTitle.rawValue)
                .font(.title3)
                .bold()
            Spacer()
        }
        ScrollView(.horizontal, showsIndicators: false) {
            //This lazy hstack is optional
            LazyHStack{
                ForEach(resumeItem) { resumeItem in
                    StandardResumeItem(resumeItem: resumeItem)
                        .frame(width: width, height: height)
                        .padding(.horizontal, 25)
                }
            }
        }
        
        
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
