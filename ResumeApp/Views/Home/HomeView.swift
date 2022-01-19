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
    
    @State var textfield_val = ""
    @State var heartFilled = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                // main VStack
                ScrollView(showsIndicators: false) {
                    // change this to VStack to remove skipping while running
                    LazyVStack {

                        LargeTopView(resumeItem: exampleResumeItem3)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                        
                        MediumResumeItemListWithOverlayView(vm: vm, category: .appStore)
                        SmallResumeItemListView(vm: vm, category: .demos)
                        SmallResumeItemListView(vm: vm, category: .dataStructures)
                        LargeResumeItemListView(vm: vm, category: .education)
                        MediumResumeItemListWithDetailsView(vm: vm, category: .experience)
                        SmallResumeItemListView(vm: vm, category: .iOSTraining)
                        
                        
                    }
                }
            }
            .navigationBarHidden(true)
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
