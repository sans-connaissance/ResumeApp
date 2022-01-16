//
//  ResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation

struct ResumeItem: Identifiable {
    var id: String
    var year: Int
    var name: String
    var thumbnail: URL
    
    var location: String?
    
    var companyName: String?
    var jobTitle: String?
    
    var degreeName: String?
    var schoolName: String?
    
    var projectName: String?
    
    var overLay: String?
    var shortDescription: String?
    var LongDescription: String?
    
    var categories: [String]
}
