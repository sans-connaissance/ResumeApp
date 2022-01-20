//
//  Project.swift
//  ResumeApp
//
//  Created by David Malicke on 1/19/22.
//

import Foundation

struct Project: Identifiable {
    var id: String
    var name: String
    var thumbnails: [URL]?
    var videos: [URL]?
    var link: URL?
    var shortDescription: String?
    var longDescription: String?
    var list: [String]?
    var tags: [String]?
    
    
}
