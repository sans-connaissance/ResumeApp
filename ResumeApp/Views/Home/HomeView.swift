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
        ZStack {
            // main VStack
            ScrollView(showsIndicators: false) {
                // change this to VStack to remove skipping while running
                LazyVStack {
                    LargeTopView(resumeItem: exampleResumeItem3)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                    
                    ResumeItemListView(vm: vm, category: .appStore, modifier: MediumButton(), showOverlay: true, showDescription: false)
                    ResumeItemListView(vm: vm, category: .demos, modifier: SmallButton(), showOverlay: false, showDescription: false)
                    ResumeItemListView(vm: vm, category: .dataStructures, modifier: SmallButton(), showOverlay: false, showDescription: false)
                    
                    ZStack {
                        Rectangle().foregroundColor(.gray)
                    CarouselView(itemHeight: 400, views: [
                    AnyView(
                        VStack{
                            Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                            Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                            Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                        
                    }),
                    AnyView(Text("view number 2")),
                    AnyView(TextField("placeholder", text: $textfield_val).padding().multilineTextAlignment(.center)),
                    AnyView(Text("the textfield said '\(textfield_val == "" ? "..." : textfield_val)'")),
                    AnyView(
                        ZStack{
                            if heartFilled {
                                Image(systemName:"heart")
                            } else {
                                Image(systemName:"heart.fill")
                            }
                        }
                    ),
                    AnyView(
                        Button(action: {self.heartFilled.toggle()})
                        {Text("Fill the heart")}
                    ),
                    AnyView(Text("last view")),
                ])
                        
                        
                    }
                    
                        
                    
//                    LargeResumeItemListView(vm: vm, category: .education, modifier: LargeButton(), showOverlay: false, showDescription: false)
                    ResumeItemListView(vm: vm, category: .iOSTraining, modifier: SmallButton(), showOverlay: false, showDescription: false)
                    ResumeItemListView(vm: vm, category: .experience, modifier: SmallButton(), showOverlay: false, showDescription: false)
                }
            }
        }
    }
}

struct ResumeItemListView<V>: View where V: ViewModifier {
    var vm: HomeVM
    var category: Category
    var modifier: V
    @State var showOverlay = false
    var showDescription: Bool
    
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
                            StandardResumeItemView(resumeItem: resumeItem, showOverlay: $showOverlay)
                                .modifier(modifier)
                            if showDescription {
                                Text(resumeItem.name)
                                if let item = resumeItem.shortDescription {
                                    Text(item)
                                }
                            }
                        }
                    }
                }
            }
            // Can I add a dependancy here so that the background can be changed?
            .background(LinearGradient.blackOpacityGradient)
        }
    }
}

struct LargeResumeItemListView<V>: View where V: ViewModifier {
    var vm: HomeVM
    var category: Category
    var modifier: V
    @State var showOverlay = false
    var showDescription: Bool
    
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
                            StandardResumeItemView(resumeItem: resumeItem, showOverlay: $showOverlay)
                                .modifier(modifier)
                            if showDescription {
                                Text(resumeItem.name)
                                if let item = resumeItem.shortDescription {
                                    Text(item)
                                }
                            }
                        }
                    }
                }
            }
            // Can I add a dependancy here so that the background can be changed?
            .background(LinearGradient.blackOpacityGradient)
            //.modifier(ScrollingHStackModifier(items: 3, itemWidth: 300, itemSpacing: 30))
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
