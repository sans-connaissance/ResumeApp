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
    
    // String == Category
    @Published var resumeItems: [String: [ResumeItem]] = [:]
    
    //This pulls the keys from the movies dictionary and returns an array of strings
    public var allCategories: [String] {
        resumeItems.keys.map({ String($0) })
    }
    
    public var smallButtonList: [String] {
        Category.smallButtonGroup.map({$0.title})

    }
    
    public var largeButtonList: [String] {
        Category.largeButtonGroup.map({$0.title})

    }
    
    init() {
        setupResumeItems()
    }
    
    //returns an array of resumeItems by input Category
    public func getResumeItem(forCat cat: String) -> [ResumeItem] {
        resumeItems[cat] ?? []
    }
    
    // need to setup the resumeitems dict here with their key value pairs
    //is this were future calls will go to pull from server?
    func setupResumeItems() {
        var educationArray: [ResumeItem] = []
        educationArray.append(exampleResumeItems[0])
        educationArray.append(exampleResumeItems[1])
        educationArray.append(exampleResumeItems[2])
        resumeItems["Education"] = educationArray
        resumeItems["Experience"] = exampleResumeItems.shuffled()
        resumeItems["Projects"] = exampleResumeItems.shuffled()
        
    }
}




