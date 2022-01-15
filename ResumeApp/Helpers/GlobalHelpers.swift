//
//  GlobalHelpers.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation
import SwiftUI

let exampleResumeItem1 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Master's Degree", thumbnail: URL(string: "https://picsum.photos/200/300")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem2 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Associate's Degree", thumbnail: URL(string: "https://picsum.photos/200/301")!,shortDescription: "HI THIS IS A DESCRIPTION", categories: ["Education", "Experience", "Project"] )
let exampleResumeItem3 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Bacheloure Degree", thumbnail: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/University_of_Michigan_August_2013_125_%28University_Health_Service%29.jpg/576px-University_of_Michigan_August_2013_125_%28University_Health_Service%29.jpg")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem4 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Center for Academic Innovation", thumbnail: URL(string: "https://picsum.photos/200/303")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem5 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Schawk, Inc", thumbnail: URL(string: "https://picsum.photos/200/304")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem6 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Campbell-Ewald", thumbnail: URL(string: "https://picsum.photos/200/305")!, categories: ["Education", "Experience", "Project"])

let exampleResumeItems: [ResumeItem] = [exampleResumeItem1, exampleResumeItem2, exampleResumeItem3, exampleResumeItem4, exampleResumeItem5, exampleResumeItem6]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray.opacity(0.05), Color.gray.opacity(0.15)]),
        startPoint: .top,
        endPoint: .bottom)
}

struct SmallButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 160, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        ///Adjust size of background gradient with modifiers here
            .padding(.bottom, 20)
        
    }
    
}

struct LargeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        ///Adjust size of background gradient with modifiers here
            .padding(.bottom, 20)
        
    }
    
}


enum Category: String, CaseIterable {

    case appStore
    case dataStructures
    case demos
    case education
    case experience
    case iOSTraining
    case projects

//    /// update these in order to update button groups on home page and elsewhere
//    static let smallButtonGroup: [Category] = [.demos, .dataStructures, iOSTraining]
//    static let mediumButtonGroup: [Category] = [.appStore, .experience]
//    static let largeButtonGroup: [Category] = [.education]
    
    var title: String {
        switch self {
        case .appStore:
            return "Apps"
        case .dataStructures:
            return "Data Structures"
        case .demos:
            return "Demos"
        case .education:
            return "Education"
        case .experience:
            return "Experience"
        case .iOSTraining:
            return "iOS Training"
        case .projects:
            return "Projects"
        }
    }
}
