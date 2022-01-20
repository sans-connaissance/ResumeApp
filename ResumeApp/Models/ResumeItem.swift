//
//  ResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation

//I NEED TO CHANGE THIS SO THAT THE RESUME DATA COMES PACKAGED IN A LARGER PERSON OBJECT
//WITH THE REST OF THIS STUFF NESTED INSIDE IT.
//Create mac app that allows you to publish data to the server.
//Education should be an array of school objects
//Experience should be an array of job/experience objects

struct ResumeItem: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var startDate: String?
    var endDate: String?
    var location: String?

    var employer: Employer?
    var school: School?
    
    var thumbnail: URL
    var video: Video?
    var overLay: String?
    var shortDescription: String?
    var longDescription: String?
    
    var list: [String]?
    var categories: [String]?
    var projects: [Project]?
}

struct Employer: Identifiable {
    var id: String = UUID().uuidString
    var employerName: String
    var departmentName: String?
    var jobTitle: String?
}

struct School: Identifiable {
    var id: String = UUID().uuidString
    var schoolName: String
    var schoolName2: String?
    var degreeName: String?
    var specialization: String?
    var gpa: Int
}

struct Project: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var thumbnails: [URL]?
    var videos: [Video]?
    var link: URL?
    var shortDescription: String?
    var longDescription: String?
    var list: [String]?
    var tags: [String]?
}

struct Video: Identifiable {
    
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}


// VIDEOS NEEDS TO BE ITS OWN OBJECT





