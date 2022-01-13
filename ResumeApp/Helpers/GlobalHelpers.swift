//
//  GlobalHelpers.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation
import SwiftUI

let exampleResumeItem1 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Master's Degree", thumbnail: URL(string: "https://picsum.photos/200/300")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem2 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Associate's Degree", thumbnail: URL(string: "https://picsum.photos/200/301")!, categories: ["Education", "Experience", "Project"])
let exampleResumeItem3 = ResumeItem(id: UUID().uuidString, year: 2011, name: "Bacheloure Degree", thumbnail: URL(string: "https://picsum.photos/200/302")!, categories: ["Education", "Experience", "Project"])
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
