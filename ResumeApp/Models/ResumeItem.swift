//
//  ResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation

struct ResumeItem: Identifiable {
    var id: String
    var startDate: String
    var endDate: String?
    var name: String
    var thumbnail: URL
    
    var location: String?
    
    var companyName: String?
    var departmentName: String?
    var jobTitle: String?
    
    var schoolName: String?
    var degreeName: String?
    
    var overLay: String?
    var shortDescription: String?
    var longDescription: String?
    
    var list: [String]?
    var projects: [Project]?
    
    var categories: [String]
}


//add optional projects to the model so that each resume item can have associated projects
