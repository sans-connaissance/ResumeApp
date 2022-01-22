//
//  ResumeItem.swift
//  ResumeApp
//
//  Created by David Malicke on 1/4/22.
//

import Foundation

///QUESTIONS:
///How do I pass URLs from server to app. Schema calls for String, but I must add them as URL(String)

struct Resume: Codable, Identifiable {
    
    let id: String
    
    struct Basics: Codable {
        struct Location: Codable {
            let address: String?
            let postalCode: String?
            let city: String?
            let region: String?
            let countryCode: String?
        }

        let location: Location?

        let summary: String?

        struct Profile: Codable, Identifiable {
            let id: String
            let url: URL?
            let network: String?
            let username: String?
            let thumbnail: URL?
        }

        let profiles: [Profile]?

        let email: String?
        let label: String?
        let image: URL?
        let name: String?
        let phone: String?
        let url: URL?
    }

    let basics: Basics?

    struct Volunteer: Codable, Identifiable {
        let id: String?
        let summary: String?
        let position: String?
        let organization: String?
        let startDate: String?
        let endDate: String?
        let highlights: [String]?
        let url: URL?
    }

    let volunteer: [Volunteer]?

    struct Publication: Codable, Identifiable {
        let id: String?
        let summary: String?
        let name: String?
        let publisher: String?
        let url: URL?
        let releaseDate: String?
        let thumbnail: URL?
    }

    let publications: [Publication]?

    struct Skill: Codable, Identifiable {
        let id: String?
        let keywords: [String]?
        let name: String?
        let level: String?
    }

    let skills: [Skill]?

    struct Reference: Codable, Identifiable {
        let id: String?
        let name: String?
        let reference: String?
    }

    let references: [Reference]?

    struct Work: Codable, Identifiable {
        let id: String?
        let summary: String?
        let name: String?
        let department: String?
        let position: String?
        let startDate: String?
        let endDate: String?
        let highlights: [String]?
        let url: URL?
        let thumbnail: URL?
    }

    let work: [Work]?

    struct Language: Codable, Identifiable {
        let id: String?
        let fluency: String?
        let language: String?
    }

    let languages: [Language]?

    struct Project: Codable, Identifiable {

        let id: String?
        let name: String?
        var startDate: String?
        let endDate: String?
        let roles: [String]?
        let description: String?
        let keywords: [String]?
        let type: String?
        let entity: String?
        let url: URL?
        let highlights: [String]?
        let thumbnails: [URL]?
        let videos: [Video]?
    }

    let projects: [Project]?

    struct Award: Codable, Identifiable {
        let id: String?
        let summary: String?
        let awarder: String?
        let title: String?
        let date: String?
        let thumbnail: URL?
    }

    let awards: [Award]?

    struct Certificate: Codable, Identifiable {
        let id: String?
        let name: String?
        let issuer: String?
        let date: String?
        let url: URL?
        let thumbnail: URL?
    }

    let certificates: [Certificate]?

    struct Education: Codable, Identifiable {
        let id: String?
        let institution: String?
        let schoolName: String?
        let degreeName: String?
        let specialization: String?
        let studyType: String?
        let startDate: String?
        let score: String?
        let endDate: String?
        let courses: [String]?
        let area: String?
        let url: URL?
        let image: URL?
    }

    let education: [Education]?

    struct Interest: Codable, Identifiable {
        let id: String?
        let name: String?
        let keywords: [String]?
        let thumnail: URL?
    }

    let interests: [Interest]?

    struct Video: Codable, Identifiable {
        let id: String
        let name: String
        let videoURL: URL
        let thumbnailImageURL: URL
    }

    let videos: [Video]?
    
}
