//
//  HomeVM.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation
import SwiftUI
import AVFoundation

class HomeVM: ObservableObject {
    
    @Published var resumeItems: [Category: [ResumeItem]] = [:]
    
    init() {
        setupResumeItems()
    }
    
    public func getResumeItem(forCat cat: Category) -> [ResumeItem] {
        resumeItems[cat] ?? []
    }

    //is this were future calls will go to pull from server?
    func setupResumeItems() {
        var educationArray: [ResumeItem] = []
        educationArray.append(exampleResumeItems[0])
        educationArray.append(exampleResumeItems[1])
        educationArray.append(exampleResumeItems[2])
        resumeItems[.education] = educationArray
        resumeItems[.experience] = exampleResumeItems.shuffled()
        resumeItems[.projects] = exampleResumeItems.shuffled()
        resumeItems[.appStore] = exampleResumeItems.shuffled()
        resumeItems[.demos] = exampleResumeItems.shuffled()
        resumeItems[.dataStructures] = exampleResumeItems.shuffled()
        resumeItems[.iOSTraining] = exampleResumeItems.shuffled()
        
    }
}




