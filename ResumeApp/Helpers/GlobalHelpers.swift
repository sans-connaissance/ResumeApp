//
//  GlobalHelpers.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation
import SwiftUI

let exampleResumeItem1 = ResumeItem(
    id: UUID().uuidString,
    startDate: "April 2011",
    endDate: "May 2011",
    name: "Master's Degree",
    thumbnail: URL(string: "https://picsum.photos/200/300")!,
    location: "Ann Arbor, MI", // could this be a real location and open on the map?
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    schoolName: "University of Michigan",
    degreeName: "Master's of Information Science",
    overLay: "Download on App Store",
    shortDescription: "Master's of Information Science",
    LongDescription: "Provide all kinds of services for the University and stuff like that",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItem2 = ResumeItem(
    id: UUID().uuidString,
    startDate: "April 2011",
    endDate: "May 2009",
    name: "Bachelours Degree",
    thumbnail: URL(string: "https://picsum.photos/200/301")!,
    location: "Sterling Heights, MI", // could this be a real location and open on the map?
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    schoolName: "Siena Heights",
    degreeName: "Bachelours Degree of Business Administration",
    overLay: "Download on App Store",
    shortDescription: "Business Administration & Marketing",
    LongDescription: "Provide all kinds of services for the University and stuff like that",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItem3 = ResumeItem(
    id: UUID().uuidString,
    startDate: "April 2011",
    endDate: "June 2006",
    name: "Associate's Degree",
    thumbnail: URL(string: "https://picsum.photos/200/302")!,
    location: "Macomb, MI", // could this be a real location and open on the map?
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    schoolName: "Macomb Community College",
    degreeName: "Associates of Media and Communication Arts",
    overLay: "Download on App Store",
    shortDescription: "with a focus on 3d animation",
    LongDescription: "Provide all kinds of services for the University and stuff like that",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItem4 = ResumeItem(
    id: UUID().uuidString,
    startDate: "2011",
    endDate: "June 2006",
    name: "Center for Academic Innovation",
    thumbnail: URL(string: "https://picsum.photos/200/303")!,
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    overLay: "Download on App Store",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItem5 = ResumeItem(
    id: UUID().uuidString,
    startDate: "2011",
    endDate: "June 2006",
    name: "Schawk, Inc",
    thumbnail: URL(string: "https://picsum.photos/200/304")!,
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    overLay: "Download on App Store",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItem6 = ResumeItem(
    id: UUID().uuidString,
    startDate: "2011",
    endDate: "June 2006",
    name: "Campbell-Ewald",
    thumbnail: URL(string: "https://picsum.photos/200/305")!,
    companyName: "Center for Academic Innovation",
    jobTitle: "Operations Lead",
    overLay: "Download on App Store",
    categories: ["Education", "Experience", "Project"])

let exampleResumeItems: [ResumeItem] = [exampleResumeItem1, exampleResumeItem2, exampleResumeItem3, exampleResumeItem4, exampleResumeItem5, exampleResumeItem6]


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.gray.opacity(0.01), Color.gray.opacity(0.15)]),
        startPoint: .top,
        endPoint: .bottom)
}

struct SmallButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150, height: 75)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        
    }
}

struct MediumButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        
            
        
    }
}

struct LargeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 300, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 0.2, x: 0.2, y: 0.2)
            .padding(.leading)
        
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
